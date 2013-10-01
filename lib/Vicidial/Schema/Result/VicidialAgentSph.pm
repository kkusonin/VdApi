use utf8;
package Vicidial::Schema::Result::VicidialAgentSph;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialAgentSph

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

=head1 TABLE: C<vicidial_agent_sph>

=cut

__PACKAGE__->table("vicidial_agent_sph");

=head1 ACCESSORS

=head2 campaign_group_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 stat_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 shift

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 role

  data_type: 'enum'
  default_value: 'FRONTER'
  extra: {list => ["FRONTER","CLOSER"]}
  is_nullable: 1

=head2 user

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 calls

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sales

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 login_sec

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 login_hours

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 1
  size: [5,2]

=head2 sph

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 1
  size: [6,2]

=cut

__PACKAGE__->add_columns(
  "campaign_group_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "stat_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "shift",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "role",
  {
    data_type => "enum",
    default_value => "FRONTER",
    extra => { list => ["FRONTER", "CLOSER"] },
    is_nullable => 1,
  },
  "user",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "calls",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "sales",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "login_sec",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "login_hours",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 1,
    size => [5, 2],
  },
  "sph",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 1,
    size => [6, 2],
  },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fWlliIApMQWxzEU6kPW7SA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
