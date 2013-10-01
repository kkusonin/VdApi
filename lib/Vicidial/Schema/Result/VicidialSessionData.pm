use utf8;
package Vicidial::Schema::Result::VicidialSessionData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialSessionData

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

=head1 TABLE: C<vicidial_session_data>

=cut

__PACKAGE__->table("vicidial_session_data");

=head1 ACCESSORS

=head2 session_name

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 conf_exten

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 extension

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 login_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 webphone_url

  data_type: 'text'
  is_nullable: 1

=head2 agent_login_call

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "session_name",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "conf_exten",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "extension",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "login_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "webphone_url",
  { data_type => "text", is_nullable => 1 },
  "agent_login_call",
  { data_type => "text", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<session_name>

=over 4

=item * L</session_name>

=back

=cut

__PACKAGE__->add_unique_constraint("session_name", ["session_name"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:06VJ7bZMBomxUG6O/k6yrw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
