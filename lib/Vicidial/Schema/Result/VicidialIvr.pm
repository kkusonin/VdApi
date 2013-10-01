use utf8;
package Vicidial::Schema::Result::VicidialIvr;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialIvr

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

=head1 TABLE: C<vicidial_ivr>

=cut

__PACKAGE__->table("vicidial_ivr");

=head1 ACCESSORS

=head2 ivr_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 entry_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 length_in_sec

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 inbound_number

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 recording_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 recording_filename

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 company_id

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 18

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 product_code

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_audio_1

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_1

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_2

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_2

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_3

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_3

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_4

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_4

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_5

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_5

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_6

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_6

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_7

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_7

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_8

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_8

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_9

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_9

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_10

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_10

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_11

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_11

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_12

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_12

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_13

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_13

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_14

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_14

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_15

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_15

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_16

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_16

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_17

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_17

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_18

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_18

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_19

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_19

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 prompt_audio_20

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 prompt_response_20

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ivr_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "entry_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "length_in_sec",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "inbound_number",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "recording_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "recording_filename",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "company_id",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 18 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "product_code",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_audio_1",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_1",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_2",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_2",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_3",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_3",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_4",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_4",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_5",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_5",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_6",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_6",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_7",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_7",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_8",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_8",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_9",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_9",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_10",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_10",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_11",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_11",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_12",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_12",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_13",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_13",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_14",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_14",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_15",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_15",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_16",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_16",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_17",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_17",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_18",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_18",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_19",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_19",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "prompt_audio_20",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "prompt_response_20",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</ivr_id>

=back

=cut

__PACKAGE__->set_primary_key("ivr_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jiWQBLkNQdppg8hPP6wMSQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
