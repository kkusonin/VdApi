use utf8;
package Vicidial::Schema::Result::VicidialTtsPrompt;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialTtsPrompt

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

=head1 TABLE: C<vicidial_tts_prompts>

=cut

__PACKAGE__->table("vicidial_tts_prompts");

=head1 ACCESSORS

=head2 tts_id

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 tts_name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 active

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 tts_text

  data_type: 'text'
  is_nullable: 1

=head2 tts_voice

  data_type: 'varchar'
  default_value: 'Allison-8kHz'
  is_nullable: 1
  size: 100

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "tts_id",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "tts_name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "active",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "tts_text",
  { data_type => "text", is_nullable => 1 },
  "tts_voice",
  {
    data_type => "varchar",
    default_value => "Allison-8kHz",
    is_nullable => 1,
    size => 100,
  },
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

=item * L</tts_id>

=back

=cut

__PACKAGE__->set_primary_key("tts_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5mKlWrmFRGwnAB9NKLgfwQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
