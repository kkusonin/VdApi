use utf8;
package Vicidial::Schema::Result::VicidialCustomCid;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCustomCid

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

=head1 TABLE: C<vicidial_custom_cid>

=cut

__PACKAGE__->table("vicidial_custom_cid");

=head1 ACCESSORS

=head2 cid

  data_type: 'varchar'
  is_nullable: 0
  size: 18

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 areacode

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 country_code

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  default_value: '--ALL--'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "cid",
  { data_type => "varchar", is_nullable => 0, size => 18 },
  "state",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "areacode",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "country_code",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "campaign_id",
  {
    data_type => "varchar",
    default_value => "--ALL--",
    is_nullable => 1,
    size => 8,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EQnde6fi5xCe/O3uS9kuIw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
