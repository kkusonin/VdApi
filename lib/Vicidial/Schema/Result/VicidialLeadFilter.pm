use utf8;
package Vicidial::Schema::Result::VicidialLeadFilter;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialLeadFilter

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

=head1 TABLE: C<vicidial_lead_filters>

=cut

__PACKAGE__->table("vicidial_lead_filters");

=head1 ACCESSORS

=head2 lead_filter_id

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 lead_filter_name

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 lead_filter_comments

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 lead_filter_sql

  data_type: 'text'
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "lead_filter_id",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "lead_filter_name",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "lead_filter_comments",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "lead_filter_sql",
  { data_type => "text", is_nullable => 1 },
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

=item * L</lead_filter_id>

=back

=cut

__PACKAGE__->set_primary_key("lead_filter_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aaC1DGFuk2/N9DZnArKAWw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
