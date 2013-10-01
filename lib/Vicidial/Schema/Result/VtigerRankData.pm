use utf8;
package Vicidial::Schema::Result::VtigerRankData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VtigerRankData

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

=head1 TABLE: C<vtiger_rank_data>

=cut

__PACKAGE__->table("vtiger_rank_data");

=head1 ACCESSORS

=head2 account

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 seqacct

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 last_attempt_days

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 orders

  data_type: 'smallint'
  is_nullable: 0

=head2 net_sales

  data_type: 'smallint'
  is_nullable: 0

=head2 net_sales_ly

  data_type: 'smallint'
  is_nullable: 0

=head2 percent_variance

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 imu

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 aov

  data_type: 'smallint'
  is_nullable: 0

=head2 returns

  data_type: 'smallint'
  is_nullable: 0

=head2 rank

  data_type: 'smallint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "account",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "seqacct",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "last_attempt_days",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "orders",
  { data_type => "smallint", is_nullable => 0 },
  "net_sales",
  { data_type => "smallint", is_nullable => 0 },
  "net_sales_ly",
  { data_type => "smallint", is_nullable => 0 },
  "percent_variance",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "imu",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "aov",
  { data_type => "smallint", is_nullable => 0 },
  "returns",
  { data_type => "smallint", is_nullable => 0 },
  "rank",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</account>

=back

=cut

__PACKAGE__->set_primary_key("account");

=head1 UNIQUE CONSTRAINTS

=head2 C<seqacct>

=over 4

=item * L</seqacct>

=back

=cut

__PACKAGE__->add_unique_constraint("seqacct", ["seqacct"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:beNJvfJbb3Nx0a0Eq2TazA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
