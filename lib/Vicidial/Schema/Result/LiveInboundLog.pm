use utf8;
package Vicidial::Schema::Result::LiveInboundLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::LiveInboundLog

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

=head1 TABLE: C<live_inbound_log>

=cut

__PACKAGE__->table("live_inbound_log");

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

=head2 caller_id

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 phone_ext

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 start_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 acknowledged

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 inbound_number

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 comment_a

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 comment_b

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 comment_c

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 comment_d

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 comment_e

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "channel",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "caller_id",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "phone_ext",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "start_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "acknowledged",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "inbound_number",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "comment_a",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "comment_b",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "comment_c",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "comment_d",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "comment_e",
  { data_type => "varchar", is_nullable => 1, size => 50 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2/BUwFBGv7qwSoEgI0ouag


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
