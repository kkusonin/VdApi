use utf8;
package Vicidial::Schema::Result::VicidialListPin;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialListPin

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

=head1 TABLE: C<vicidial_list_pins>

=cut

__PACKAGE__->table("vicidial_list_pins");

=head1 ACCESSORS

=head2 pins_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 entry_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 18

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 product_code

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 digits

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "pins_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "entry_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 18 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "product_code",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "digits",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</pins_id>

=back

=cut

__PACKAGE__->set_primary_key("pins_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:x//BxxyY8LTIF2Okslhaxw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
