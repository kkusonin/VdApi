use utf8;
package Vicidial::Schema::Result::RecordingLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::RecordingLog

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

=head1 TABLE: C<recording_log>

=cut

__PACKAGE__->table("recording_log");

=head1 ACCESSORS

=head2 recording_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 channel

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 start_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 start_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 end_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 end_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 length_in_sec

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 length_in_min

  data_type: 'double precision'
  is_nullable: 1
  size: [8,2]

=head2 filename

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 location

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 vicidial_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "recording_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "channel",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "start_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "start_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "end_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "end_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "length_in_sec",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "length_in_min",
  { data_type => "double precision", is_nullable => 1, size => [8, 2] },
  "filename",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "location",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "vicidial_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</recording_id>

=back

=cut

__PACKAGE__->set_primary_key("recording_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YWnOwB2Ditp2ninx0IefZg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
