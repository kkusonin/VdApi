use utf8;
package Vicidial::Schema::Result::TwodayVicidialXferLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::TwodayVicidialXferLog

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

=head1 TABLE: C<twoday_vicidial_xfer_log>

=cut

__PACKAGE__->table("twoday_vicidial_xfer_log");

=head1 ACCESSORS

=head2 xfercallid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 list_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 call_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 phone_code

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 18

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 closer

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "xfercallid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "list_id",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 1 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "call_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "phone_code",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 18 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "closer",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</xfercallid>

=back

=cut

__PACKAGE__->set_primary_key("xfercallid");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cGkyc2KLTzKtwnEOhkRoyA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
