use utf8;
package Vicidial::Schema::Result::VicidialFilterPhoneGroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialFilterPhoneGroup

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

=head1 TABLE: C<vicidial_filter_phone_groups>

=cut

__PACKAGE__->table("vicidial_filter_phone_groups");

=head1 ACCESSORS

=head2 filter_phone_group_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 filter_phone_group_name

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 filter_phone_group_description

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "filter_phone_group_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "filter_phone_group_name",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "filter_phone_group_description",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6XB8WEwuk4KXYuDEJLIM+Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
