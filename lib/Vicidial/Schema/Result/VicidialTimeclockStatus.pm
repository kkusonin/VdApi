use utf8;
package Vicidial::Schema::Result::VicidialTimeclockStatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialTimeclockStatus

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

=head1 TABLE: C<vicidial_timeclock_status>

=cut

__PACKAGE__->table("vicidial_timeclock_status");

=head1 ACCESSORS

=head2 user

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 user_group

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 event_epoch

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 event_date

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 status

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 ip_address

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 shift_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "user",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "user_group",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "event_epoch",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "event_date",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "status",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "ip_address",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "shift_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<user>

=over 4

=item * L</user>

=back

=cut

__PACKAGE__->add_unique_constraint("user", ["user"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:H9szhWx+nEG9y+m8Ybh84g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
