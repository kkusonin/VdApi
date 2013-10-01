use utf8;
package Vicidial::Schema::Result::VicidialOverrideId;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialOverrideId

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

=head1 TABLE: C<vicidial_override_ids>

=cut

__PACKAGE__->table("vicidial_override_ids");

=head1 ACCESSORS

=head2 id_table

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 active

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 value

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_table",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "active",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "value",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_table>

=back

=cut

__PACKAGE__->set_primary_key("id_table");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wHhJmJVGQbxbYpIevZMFXg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
