use utf8;
package Vicidial::Schema::Result::VicidialCallNote;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCallNote

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

=head1 TABLE: C<vicidial_call_notes>

=cut

__PACKAGE__->table("vicidial_call_notes");

=head1 ACCESSORS

=head2 notesid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 vicidial_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 call_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 order_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 appointment_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 appointment_time

  data_type: 'time'
  is_nullable: 1

=head2 call_notes

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "notesid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "vicidial_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "call_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "order_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "appointment_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "appointment_time",
  { data_type => "time", is_nullable => 1 },
  "call_notes",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</notesid>

=back

=cut

__PACKAGE__->set_primary_key("notesid");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vaCxh5fPgUE9FQ2WvaT7EQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
