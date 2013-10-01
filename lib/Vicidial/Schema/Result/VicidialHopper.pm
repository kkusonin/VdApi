use utf8;
package Vicidial::Schema::Result::VicidialHopper;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialHopper

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

=head1 TABLE: C<vicidial_hopper>

=cut

__PACKAGE__->table("vicidial_hopper");

=head1 ACCESSORS

=head2 hopper_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 status

  data_type: 'enum'
  default_value: 'READY'
  extra: {list => ["READY","QUEUE","INCALL","DONE","HOLD","DNC"]}
  is_nullable: 1

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 list_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 gmt_offset_now

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 1
  size: [4,2]

=head2 state

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 2

=head2 alt_dial

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 6

=head2 priority

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 source

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 1

=head2 vendor_lead_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "hopper_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "status",
  {
    data_type => "enum",
    default_value => "READY",
    extra => { list => ["READY", "QUEUE", "INCALL", "DONE", "HOLD", "DNC"] },
    is_nullable => 1,
  },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "list_id",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "gmt_offset_now",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 1,
    size => [4, 2],
  },
  "state",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 2 },
  "alt_dial",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 6,
  },
  "priority",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "source",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 1 },
  "vendor_lead_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</hopper_id>

=back

=cut

__PACKAGE__->set_primary_key("hopper_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zPH1uUdO09vzVW9+kPzU+A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
