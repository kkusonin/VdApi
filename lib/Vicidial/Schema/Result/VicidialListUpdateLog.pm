use utf8;
package Vicidial::Schema::Result::VicidialListUpdateLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialListUpdateLog

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

=head1 TABLE: C<vicidial_list_update_log>

=cut

__PACKAGE__->table("vicidial_list_update_log");

=head1 ACCESSORS

=head2 event_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 lead_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 vendor_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 status

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 old_status

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 filename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=head2 result

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 result_rows

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 list_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "event_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "lead_id",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "vendor_id",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "phone_number",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "status",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "old_status",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "filename",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
  "result",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "result_rows",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "list_id",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vjb6IOsNAY/2NUlYskgnQw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
