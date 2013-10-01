use utf8;
package Vicidial::Schema::Result::VicidialDidAgentLogArchive;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialDidAgentLogArchive

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<vicidial_did_agent_log_archive>

=cut

__PACKAGE__->table("vicidial_did_agent_log_archive");

=head1 ACCESSORS

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 caller_id_number

  data_type: 'varchar'
  is_nullable: 1
  size: 18

=head2 caller_id_name

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 call_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 did_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 9

=head2 did_description

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 did_route

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 9

=head2 group_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 user

  data_type: 'varchar'
  default_value: 'VDCL'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "caller_id_number",
  { data_type => "varchar", is_nullable => 1, size => 18 },
  "caller_id_name",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "call_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "did_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 9 },
  "did_description",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "did_route",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 9 },
  "group_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "user",
  {
    data_type => "varchar",
    default_value => "VDCL",
    is_nullable => 1,
    size => 20,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<vdala>

=over 4

=item * L</uniqueid>

=item * L</call_date>

=item * L</did_route>

=back

=cut

__PACKAGE__->add_unique_constraint("vdala", ["uniqueid", "call_date", "did_route"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JUXlfH9MkEGNgdJ/XH6yjQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
