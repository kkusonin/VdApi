use utf8;
package Vicidial::Schema::Result::VicidialLeadRecycle;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialLeadRecycle

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

=head1 TABLE: C<vicidial_lead_recycle>

=cut

__PACKAGE__->table("vicidial_lead_recycle");

=head1 ACCESSORS

=head2 recycle_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 status

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 attempt_delay

  data_type: 'smallint'
  default_value: 1800
  extra: {unsigned => 1}
  is_nullable: 1

=head2 attempt_maximum

  data_type: 'tinyint'
  default_value: 2
  extra: {unsigned => 1}
  is_nullable: 1

=head2 active

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "recycle_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "status",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "attempt_delay",
  {
    data_type => "smallint",
    default_value => 1800,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "attempt_maximum",
  {
    data_type => "tinyint",
    default_value => 2,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "active",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</recycle_id>

=back

=cut

__PACKAGE__->set_primary_key("recycle_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PM/Li4+duE9KNbILdsfWBA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
