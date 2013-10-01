use utf8;
package Vicidial::Schema::Result::VicidialScreenLabel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialScreenLabel

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

=head1 TABLE: C<vicidial_screen_labels>

=cut

__PACKAGE__->table("vicidial_screen_labels");

=head1 ACCESSORS

=head2 label_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 label_name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 active

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 label_hide_field_logs

  data_type: 'varchar'
  default_value: 'Y'
  is_nullable: 1
  size: 6

=head2 label_title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_first_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_middle_initial

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_last_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_address1

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_address2

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_address3

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_city

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_state

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_province

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_postal_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_vendor_lead_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_gender

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_phone_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_phone_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_alt_phone

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_security_phrase

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_email

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 label_comments

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 40

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "label_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "label_name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "active",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "label_hide_field_logs",
  { data_type => "varchar", default_value => "Y", is_nullable => 1, size => 6 },
  "label_title",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_first_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_middle_initial",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_last_name",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_address1",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_address2",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_address3",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_city",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_state",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_province",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_postal_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_vendor_lead_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_gender",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_phone_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_phone_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_alt_phone",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_security_phrase",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_email",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "label_comments",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 40 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</label_id>

=back

=cut

__PACKAGE__->set_primary_key("label_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mEBs3CbnrCHbcALz+L7THA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
