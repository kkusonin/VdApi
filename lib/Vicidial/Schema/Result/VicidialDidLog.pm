use utf8;
package Vicidial::Schema::Result::VicidialDidLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialDidLog

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

=head1 TABLE: C<vicidial_did_log>

=cut

__PACKAGE__->table("vicidial_did_log");

=head1 ACCESSORS

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 channel

  data_type: 'varchar'
  is_nullable: 0
  size: 100

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

=head2 did_route

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 9

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "channel",
  { data_type => "varchar", is_nullable => 0, size => 100 },
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
  "did_route",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 9 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fIHccmV6CL2iVYV7p+7lyg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
