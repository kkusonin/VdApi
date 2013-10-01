use utf8;
package Vicidial::Schema::Result::VicidialUserCloserLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialUserCloserLog

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

=head1 TABLE: C<vicidial_user_closer_log>

=cut

__PACKAGE__->table("vicidial_user_closer_log");

=head1 ACCESSORS

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 event_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 blended

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 closer_campaigns

  data_type: 'text'
  is_nullable: 1

=head2 manager_change

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "event_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "blended",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "closer_campaigns",
  { data_type => "text", is_nullable => 1 },
  "manager_change",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9ac2i3ab7JQwLfGrZEcgjg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
