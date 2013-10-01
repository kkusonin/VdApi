use utf8;
package Vicidial::Schema::Result::VicidialDailyRaStat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialDailyRaStat

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

=head1 TABLE: C<vicidial_daily_ra_stats>

=cut

__PACKAGE__->table("vicidial_daily_ra_stats");

=head1 ACCESSORS

=head2 stats_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 stats_flag

  data_type: 'enum'
  default_value: 'CLOSED'
  extra: {list => ["OPEN","CLOSED","CLOSING"]}
  is_nullable: 1

=head2 user

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 update_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 closed_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 max_calls

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 total_calls

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "stats_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "stats_flag",
  {
    data_type => "enum",
    default_value => "CLOSED",
    extra => { list => ["OPEN", "CLOSED", "CLOSING"] },
    is_nullable => 1,
  },
  "user",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "update_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "closed_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "max_calls",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "total_calls",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WeNtuSqXz9envGSwD/XVYQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
