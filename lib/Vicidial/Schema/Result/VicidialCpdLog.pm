use utf8;
package Vicidial::Schema::Result::VicidialCpdLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCpdLog

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

=head1 TABLE: C<vicidial_cpd_log>

=cut

__PACKAGE__->table("vicidial_cpd_log");

=head1 ACCESSORS

=head2 cpd_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 channel

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 callerid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 event_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 result

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 status

  data_type: 'enum'
  default_value: 'NEW'
  extra: {list => ["NEW","PROCESSED"]}
  is_nullable: 1

=head2 cpd_seconds

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 1
  size: [7,2]

=cut

__PACKAGE__->add_columns(
  "cpd_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "channel",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "uniqueid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "callerid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "event_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "result",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "status",
  {
    data_type => "enum",
    default_value => "NEW",
    extra => { list => ["NEW", "PROCESSED"] },
    is_nullable => 1,
  },
  "cpd_seconds",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 1,
    size => [7, 2],
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</cpd_id>

=back

=cut

__PACKAGE__->set_primary_key("cpd_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ec1o2sjqUu1lT2WzrUuSKQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
