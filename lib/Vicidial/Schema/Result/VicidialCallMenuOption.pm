use utf8;
package Vicidial::Schema::Result::VicidialCallMenuOption;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCallMenuOption

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

=head1 TABLE: C<vicidial_call_menu_options>

=cut

__PACKAGE__->table("vicidial_call_menu_options");

=head1 ACCESSORS

=head2 menu_id

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 option_value

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 option_description

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 option_route

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 option_route_value

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 option_route_value_context

  data_type: 'varchar'
  is_nullable: 1
  size: 1000

=cut

__PACKAGE__->add_columns(
  "menu_id",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "option_value",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "option_description",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "option_route",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "option_route_value",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "option_route_value_context",
  { data_type => "varchar", is_nullable => 1, size => 1000 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<menuoption>

=over 4

=item * L</menu_id>

=item * L</option_value>

=back

=cut

__PACKAGE__->add_unique_constraint("menuoption", ["menu_id", "option_value"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JfM/Iv8Mnc+1NArVY+OrOw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
