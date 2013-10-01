use utf8;
package Vicidial::Schema::Result::VicidialFilterPhoneNumber;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialFilterPhoneNumber

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

=head1 TABLE: C<vicidial_filter_phone_numbers>

=cut

__PACKAGE__->table("vicidial_filter_phone_numbers");

=head1 ACCESSORS

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 0
  size: 18

=head2 filter_phone_group_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "phone_number",
  { data_type => "varchar", is_nullable => 0, size => 18 },
  "filter_phone_group_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<phonefilter>

=over 4

=item * L</phone_number>

=item * L</filter_phone_group_id>

=back

=cut

__PACKAGE__->add_unique_constraint("phonefilter", ["phone_number", "filter_phone_group_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4u9Y7B0g4UFk8t5TKC/X4g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
