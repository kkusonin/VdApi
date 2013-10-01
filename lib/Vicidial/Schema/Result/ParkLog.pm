use utf8;
package Vicidial::Schema::Result::ParkLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::ParkLog

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

=head1 TABLE: C<park_log>

=cut

__PACKAGE__->table("park_log");

=head1 ACCESSORS

=head2 uniqueid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 status

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 channel

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 channel_group

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 parked_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 grab_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 hangup_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 parked_sec

  data_type: 'integer'
  is_nullable: 1

=head2 talked_sec

  data_type: 'integer'
  is_nullable: 1

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 lead_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "status",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "channel",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "channel_group",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "parked_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "grab_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "hangup_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "parked_sec",
  { data_type => "integer", is_nullable => 1 },
  "talked_sec",
  { data_type => "integer", is_nullable => 1 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "lead_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Il3ZRGqNUZyyKbPudHzkGw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
