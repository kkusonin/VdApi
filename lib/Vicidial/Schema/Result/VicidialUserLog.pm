use utf8;
package Vicidial::Schema::Result::VicidialUserLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialUserLog

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

=head1 TABLE: C<vicidial_user_log>

=cut

__PACKAGE__->table("vicidial_user_log");

=head1 ACCESSORS

=head2 user_log_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 event

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 event_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 event_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 session_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 computer_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 browser

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 data

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "user_log_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "event",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "event_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "event_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "user_group",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "session_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "computer_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "browser",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "data",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_log_id>

=back

=cut

__PACKAGE__->set_primary_key("user_log_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:O4XIBY36pVbUHI0+Ogdzlg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
