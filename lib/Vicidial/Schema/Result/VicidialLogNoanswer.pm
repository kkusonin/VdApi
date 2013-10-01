use utf8;
package Vicidial::Schema::Result::VicidialLogNoanswer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialLogNoanswer

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

=head1 TABLE: C<vicidial_log_noanswer>

=cut

__PACKAGE__->table("vicidial_log_noanswer");

=head1 ACCESSORS

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 list_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 call_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 start_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 end_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 length_in_sec

  data_type: 'integer'
  is_nullable: 1

=head2 status

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 phone_code

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 18

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 processed

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 term_reason

  data_type: 'enum'
  default_value: 'NONE'
  extra: {list => ["CALLER","AGENT","QUEUETIMEOUT","ABANDON","AFTERHOURS","NONE"]}
  is_nullable: 1

=head2 alt_dial

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 6

=head2 caller_code

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "list_id",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 1 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "call_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "start_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "end_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "length_in_sec",
  { data_type => "integer", is_nullable => 1 },
  "status",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "phone_code",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 18 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "processed",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "user_group",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "term_reason",
  {
    data_type => "enum",
    default_value => "NONE",
    extra => {
      list => [
        "CALLER",
        "AGENT",
        "QUEUETIMEOUT",
        "ABANDON",
        "AFTERHOURS",
        "NONE",
      ],
    },
    is_nullable => 1,
  },
  "alt_dial",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 6,
  },
  "caller_code",
  { data_type => "varchar", is_nullable => 0, size => 30 },
);

=head1 PRIMARY KEY

=over 4

=item * L</uniqueid>

=back

=cut

__PACKAGE__->set_primary_key("uniqueid");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SsUjvh1+V/6eIEqyUUT+Gg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
