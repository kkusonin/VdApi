use utf8;
package Vicidial::Schema::Result::VicidialApiLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialApiLog

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

=head1 TABLE: C<vicidial_api_log>

=cut

__PACKAGE__->table("vicidial_api_log");

=head1 ACCESSORS

=head2 api_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 api_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 api_script

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 function

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 agent_user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 value

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 result

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 result_reason

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 source

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 data

  data_type: 'text'
  is_nullable: 1

=head2 run_time

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "api_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "api_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "api_script",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "function",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "agent_user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "value",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "result",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "result_reason",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "source",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "data",
  { data_type => "text", is_nullable => 1 },
  "run_time",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</api_id>

=back

=cut

__PACKAGE__->set_primary_key("api_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:otYlrMX0zs2Zeo8VYyHHfg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
