use utf8;
package Vicidial::Schema::Result::VicidialConference;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialConference

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

=head1 TABLE: C<vicidial_conferences>

=cut

__PACKAGE__->table("vicidial_conferences");

=head1 ACCESSORS

=head2 conf_exten

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 leave_3way

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 leave_3way_datetime

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "conf_exten",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "leave_3way",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "leave_3way_datetime",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<serverconf>

=over 4

=item * L</server_ip>

=item * L</conf_exten>

=back

=cut

__PACKAGE__->add_unique_constraint("serverconf", ["server_ip", "conf_exten"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Z0dNcdalPVjrIEUwa+Y13A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
