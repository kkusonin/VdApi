use utf8;
package Vicidial::Schema::Result::VicidialExtensionGroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialExtensionGroup

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

=head1 TABLE: C<vicidial_extension_groups>

=cut

__PACKAGE__->table("vicidial_extension_groups");

=head1 ACCESSORS

=head2 extension_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 extension_group_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 extension

  data_type: 'varchar'
  default_value: 8300
  is_nullable: 1
  size: 100

=head2 rank

  data_type: 'mediumint'
  default_value: 0
  is_nullable: 1

=head2 campaign_groups

  data_type: 'text'
  is_nullable: 1

=head2 call_count_today

  data_type: 'mediumint'
  default_value: 0
  is_nullable: 1

=head2 last_call_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_callerid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "extension_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "extension_group_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "extension",
  {
    data_type => "varchar",
    default_value => 8300,
    is_nullable => 1,
    size => 100,
  },
  "rank",
  { data_type => "mediumint", default_value => 0, is_nullable => 1 },
  "campaign_groups",
  { data_type => "text", is_nullable => 1 },
  "call_count_today",
  { data_type => "mediumint", default_value => 0, is_nullable => 1 },
  "last_call_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_callerid",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</extension_id>

=back

=cut

__PACKAGE__->set_primary_key("extension_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CXkuFX6wQ9mrWnfLFnSqqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
