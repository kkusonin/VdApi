use utf8;
package Vicidial::Schema::Result::VicidialServerCarrier;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialServerCarrier

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

=head1 TABLE: C<vicidial_server_carriers>

=cut

__PACKAGE__->table("vicidial_server_carriers");

=head1 ACCESSORS

=head2 carrier_id

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 carrier_name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 registration_string

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 template_id

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 account_entry

  data_type: 'text'
  is_nullable: 1

=head2 protocol

  data_type: 'enum'
  default_value: 'SIP'
  extra: {list => ["SIP","Zap","IAX2","EXTERNAL"]}
  is_nullable: 1

=head2 globals_string

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 dialplan_entry

  data_type: 'text'
  is_nullable: 1

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 active

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 carrier_description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "carrier_id",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "carrier_name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "registration_string",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "template_id",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "account_entry",
  { data_type => "text", is_nullable => 1 },
  "protocol",
  {
    data_type => "enum",
    default_value => "SIP",
    extra => { list => ["SIP", "Zap", "IAX2", "EXTERNAL"] },
    is_nullable => 1,
  },
  "globals_string",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "dialplan_entry",
  { data_type => "text", is_nullable => 1 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "active",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "carrier_description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<carrier_id>

=over 4

=item * L</carrier_id>

=back

=cut

__PACKAGE__->add_unique_constraint("carrier_id", ["carrier_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:X/Ff5ap4gUUFxRjtq0GuBA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
