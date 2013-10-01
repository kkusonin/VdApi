use utf8;
package Vicidial::Schema::Result::VicidialDropRateGroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialDropRateGroup

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

=head1 TABLE: C<vicidial_drop_rate_groups>

=cut

__PACKAGE__->table("vicidial_drop_rate_groups");

=head1 ACCESSORS

=head2 group_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 update_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 calls_today

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 answers_today

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_today

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drops_today_pct

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=head2 drops_answers_today_pct

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "group_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "update_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "calls_today",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "answers_today",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_today",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drops_today_pct",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
  "drops_answers_today_pct",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 6 },
);

=head1 PRIMARY KEY

=over 4

=item * L</group_id>

=back

=cut

__PACKAGE__->set_primary_key("group_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:muE87eIAta+uh4/jeh1K8A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
