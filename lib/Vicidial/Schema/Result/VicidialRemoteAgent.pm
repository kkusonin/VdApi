use utf8;
package Vicidial::Schema::Result::VicidialRemoteAgent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialRemoteAgent

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

=head1 TABLE: C<vicidial_remote_agents>

=cut

__PACKAGE__->table("vicidial_remote_agents");

=head1 ACCESSORS

=head2 remote_agent_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user_start

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 number_of_lines

  data_type: 'tinyint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 1

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 conf_exten

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 status

  data_type: 'enum'
  default_value: 'INACTIVE'
  extra: {list => ["ACTIVE","INACTIVE"]}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 closer_campaigns

  data_type: 'text'
  is_nullable: 1

=head2 extension_group

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 20

=head2 extension_group_order

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 1
  size: 20

=head2 on_hook_agent

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 on_hook_ring_time

  data_type: 'smallint'
  default_value: 15
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "remote_agent_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user_start",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "number_of_lines",
  {
    data_type => "tinyint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "conf_exten",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "status",
  {
    data_type => "enum",
    default_value => "INACTIVE",
    extra => { list => ["ACTIVE", "INACTIVE"] },
    is_nullable => 1,
  },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "closer_campaigns",
  { data_type => "text", is_nullable => 1 },
  "extension_group",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 20,
  },
  "extension_group_order",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 1,
    size => 20,
  },
  "on_hook_agent",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "on_hook_ring_time",
  { data_type => "smallint", default_value => 15, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</remote_agent_id>

=back

=cut

__PACKAGE__->set_primary_key("remote_agent_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hArI9wvZmiAZGph6ui4XTg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
