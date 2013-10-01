use utf8;
package Vicidial::Schema::Result::VicidialUserTerritory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialUserTerritory

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

=head1 TABLE: C<vicidial_user_territories>

=cut

__PACKAGE__->table("vicidial_user_territories");

=head1 ACCESSORS

=head2 user

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 territory

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 level

  data_type: 'enum'
  default_value: 'STANDARD_AGENT'
  extra: {list => ["TOP_AGENT","STANDARD_AGENT","BOTTOM_AGENT"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "territory",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "level",
  {
    data_type => "enum",
    default_value => "STANDARD_AGENT",
    extra => { list => ["TOP_AGENT", "STANDARD_AGENT", "BOTTOM_AGENT"] },
    is_nullable => 1,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<userterritory>

=over 4

=item * L</user>

=item * L</territory>

=back

=cut

__PACKAGE__->add_unique_constraint("userterritory", ["user", "territory"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:65XDzv5p/5FzDLA4TXK5+Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
