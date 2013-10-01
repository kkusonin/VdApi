use utf8;
package Vicidial::Schema::Result::VicidialServerTrunk;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialServerTrunk

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

=head1 TABLE: C<vicidial_server_trunks>

=cut

__PACKAGE__->table("vicidial_server_trunks");

=head1 ACCESSORS

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 dedicated_trunks

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 trunk_restriction

  data_type: 'enum'
  default_value: 'OVERFLOW_ALLOWED'
  extra: {list => ["MAXIMUM_LIMIT","OVERFLOW_ALLOWED"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "dedicated_trunks",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "trunk_restriction",
  {
    data_type => "enum",
    default_value => "OVERFLOW_ALLOWED",
    extra => { list => ["MAXIMUM_LIMIT", "OVERFLOW_ALLOWED"] },
    is_nullable => 1,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yHo9Via+bFKbuIM2dC3PCg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
