use utf8;
package Vicidial::Schema::Result::CallLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::CallLog

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

=head1 TABLE: C<call_log>

=cut

__PACKAGE__->table("call_log");

=head1 ACCESSORS

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 channel

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 channel_group

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 type

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 number_dialed

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 caller_code

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 start_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 start_epoch

  data_type: 'integer'
  is_nullable: 1

=head2 end_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 end_epoch

  data_type: 'integer'
  is_nullable: 1

=head2 length_in_sec

  data_type: 'integer'
  is_nullable: 1

=head2 length_in_min

  data_type: 'double precision'
  is_nullable: 1
  size: [8,2]

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "channel",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "channel_group",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "type",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "number_dialed",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "caller_code",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "start_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "start_epoch",
  { data_type => "integer", is_nullable => 1 },
  "end_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "end_epoch",
  { data_type => "integer", is_nullable => 1 },
  "length_in_sec",
  { data_type => "integer", is_nullable => 1 },
  "length_in_min",
  { data_type => "double precision", is_nullable => 1, size => [8, 2] },
);

=head1 PRIMARY KEY

=over 4

=item * L</uniqueid>

=back

=cut

__PACKAGE__->set_primary_key("uniqueid");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wrL1T+qr3kg5HVR7l7MqeA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
