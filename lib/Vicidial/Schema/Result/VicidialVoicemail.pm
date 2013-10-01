use utf8;
package Vicidial::Schema::Result::VicidialVoicemail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialVoicemail

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

=head1 TABLE: C<vicidial_voicemail>

=cut

__PACKAGE__->table("vicidial_voicemail");

=head1 ACCESSORS

=head2 voicemail_id

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 active

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 pass

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 fullname

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 messages

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 old_messages

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 delete_vm_after_email

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y"]}
  is_nullable: 1

=head2 voicemail_timezone

  data_type: 'varchar'
  default_value: 'eastern'
  is_nullable: 1
  size: 30

=head2 voicemail_options

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "voicemail_id",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "active",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "pass",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "fullname",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "messages",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "old_messages",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "delete_vm_after_email",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y"] },
    is_nullable => 1,
  },
  "voicemail_timezone",
  {
    data_type => "varchar",
    default_value => "eastern",
    is_nullable => 1,
    size => 30,
  },
  "voicemail_options",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
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

=item * L</voicemail_id>

=back

=cut

__PACKAGE__->set_primary_key("voicemail_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cA9IBNACeHkiymKUcfdF3w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
