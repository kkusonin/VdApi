use utf8;
package Vicidial::Schema::Result::VicidialManager;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialManager

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

=head1 TABLE: C<vicidial_manager>

=cut

__PACKAGE__->table("vicidial_manager");

=head1 ACCESSORS

=head2 man_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 entry_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 status

  data_type: 'enum'
  extra: {list => ["NEW","QUEUE","SENT","UPDATED","DEAD"]}
  is_nullable: 1

=head2 response

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 channel

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 action

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 callerid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 cmd_line_b

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cmd_line_c

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cmd_line_d

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cmd_line_e

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cmd_line_f

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cmd_line_g

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cmd_line_h

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cmd_line_i

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cmd_line_j

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cmd_line_k

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "man_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "uniqueid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "entry_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "status",
  {
    data_type => "enum",
    extra => { list => ["NEW", "QUEUE", "SENT", "UPDATED", "DEAD"] },
    is_nullable => 1,
  },
  "response",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "channel",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "action",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "callerid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "cmd_line_b",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cmd_line_c",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cmd_line_d",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cmd_line_e",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cmd_line_f",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cmd_line_g",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cmd_line_h",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cmd_line_i",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cmd_line_j",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cmd_line_k",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</man_id>

=back

=cut

__PACKAGE__->set_primary_key("man_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HopnxQ2PGRx8hJ0nNWeq0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
