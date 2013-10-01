use utf8;
package Vicidial::Schema::Result::VicidialListAltPhone;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialListAltPhone

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

=head1 TABLE: C<vicidial_list_alt_phones>

=cut

__PACKAGE__->table("vicidial_list_alt_phones");

=head1 ACCESSORS

=head2 alt_phone_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 phone_code

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 18

=head2 alt_phone_note

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 alt_phone_count

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 active

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "alt_phone_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "phone_code",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 18 },
  "alt_phone_note",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "alt_phone_count",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "active",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</alt_phone_id>

=back

=cut

__PACKAGE__->set_primary_key("alt_phone_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jXlH53btTIdVmwjrl+fwUA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
