use utf8;
package Vicidial::Schema::Result::VicidialCallback;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCallback

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

=head1 TABLE: C<vicidial_callbacks>

=cut

__PACKAGE__->table("vicidial_callbacks");

=head1 ACCESSORS

=head2 callback_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 list_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 status

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 entry_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 callback_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 modify_date

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 recipient

  data_type: 'enum'
  extra: {list => ["USERONLY","ANYONE"]}
  is_nullable: 1

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 user_group

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 lead_status

  data_type: 'varchar'
  default_value: 'CALLBK'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "callback_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "list_id",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 1 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "status",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "entry_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "callback_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "modify_date",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "recipient",
  {
    data_type => "enum",
    extra => { list => ["USERONLY", "ANYONE"] },
    is_nullable => 1,
  },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "user_group",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "lead_status",
  {
    data_type => "varchar",
    default_value => "CALLBK",
    is_nullable => 1,
    size => 6,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</callback_id>

=back

=cut

__PACKAGE__->set_primary_key("callback_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gQVEKNmYoYphQ/T0TxhL8w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
