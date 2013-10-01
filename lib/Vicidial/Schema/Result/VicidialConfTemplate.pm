use utf8;
package Vicidial::Schema::Result::VicidialConfTemplate;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialConfTemplate

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

=head1 TABLE: C<vicidial_conf_templates>

=cut

__PACKAGE__->table("vicidial_conf_templates");

=head1 ACCESSORS

=head2 template_id

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 template_name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 template_contents

  data_type: 'text'
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "template_id",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "template_name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "template_contents",
  { data_type => "text", is_nullable => 1 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<template_id>

=over 4

=item * L</template_id>

=back

=cut

__PACKAGE__->add_unique_constraint("template_id", ["template_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HNuHdXeqIS2d9/wh7Mw5PQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
