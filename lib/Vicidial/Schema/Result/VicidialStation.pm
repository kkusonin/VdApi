use utf8;
package Vicidial::Schema::Result::VicidialStation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialStation

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

=head1 TABLE: C<vicidial_stations>

=cut

__PACKAGE__->table("vicidial_stations");

=head1 ACCESSORS

=head2 agent_station

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 phone_channel

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 computer_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 db_server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 db_user

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 db_pass

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 db_port

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "agent_station",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "phone_channel",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "computer_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "db_server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "db_user",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "db_pass",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "db_port",
  { data_type => "varchar", is_nullable => 1, size => 6 },
);

=head1 PRIMARY KEY

=over 4

=item * L</agent_station>

=back

=cut

__PACKAGE__->set_primary_key("agent_station");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GpGtz13VyEIGE4yCgSPHPQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
