use utf8;
package Vicidial::Schema::Result::VicidialProcessTriggerLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialProcessTriggerLog

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

=head1 TABLE: C<vicidial_process_trigger_log>

=cut

__PACKAGE__->table("vicidial_process_trigger_log");

=head1 ACCESSORS

=head2 trigger_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 trigger_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 trigger_lines

  data_type: 'text'
  is_nullable: 1

=head2 trigger_results

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "trigger_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "trigger_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "trigger_lines",
  { data_type => "text", is_nullable => 1 },
  "trigger_results",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EpDtHAXZICW93Nh7DFisbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
