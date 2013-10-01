use utf8;
package Vicidial::Schema::Result::WebClientSession;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::WebClientSession

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

=head1 TABLE: C<web_client_sessions>

=cut

__PACKAGE__->table("web_client_sessions");

=head1 ACCESSORS

=head2 extension

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 program

  data_type: 'enum'
  default_value: 'agc'
  extra: {list => ["agc","vicidial","monitor","other"]}
  is_nullable: 1

=head2 start_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 session_name

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=cut

__PACKAGE__->add_columns(
  "extension",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "program",
  {
    data_type => "enum",
    default_value => "agc",
    extra => { list => ["agc", "vicidial", "monitor", "other"] },
    is_nullable => 1,
  },
  "start_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "session_name",
  { data_type => "varchar", is_nullable => 0, size => 40 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<session_name>

=over 4

=item * L</session_name>

=back

=cut

__PACKAGE__->add_unique_constraint("session_name", ["session_name"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7xVwVgbyOeZD3pnQVz1cGQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
