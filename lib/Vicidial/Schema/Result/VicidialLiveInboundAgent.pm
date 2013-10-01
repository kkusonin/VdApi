use utf8;
package Vicidial::Schema::Result::VicidialLiveInboundAgent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialLiveInboundAgent

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

=head1 TABLE: C<vicidial_live_inbound_agents>

=cut

__PACKAGE__->table("vicidial_live_inbound_agents");

=head1 ACCESSORS

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 group_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 group_weight

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 calls_today

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 last_call_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_call_finish

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 group_grade

  data_type: 'tinyint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "group_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "group_weight",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "calls_today",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "last_call_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_call_finish",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "group_grade",
  {
    data_type => "tinyint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<vlia_user_group_id>

=over 4

=item * L</user>

=item * L</group_id>

=back

=cut

__PACKAGE__->add_unique_constraint("vlia_user_group_id", ["user", "group_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yYjcxDVlTNvLcoQQdJNhyQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
