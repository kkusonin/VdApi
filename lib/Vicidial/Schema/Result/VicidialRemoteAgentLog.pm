use utf8;
package Vicidial::Schema::Result::VicidialRemoteAgentLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialRemoteAgentLog

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

=head1 TABLE: C<vicidial_remote_agent_log>

=cut

__PACKAGE__->table("vicidial_remote_agent_log");

=head1 ACCESSORS

=head2 uniqueid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 callerid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 ra_user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 call_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 extension

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 lead_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 phone_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 18

=head2 campaign_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 processed

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 comment

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "callerid",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "ra_user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "call_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "extension",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "lead_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "phone_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 18 },
  "campaign_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "processed",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "comment",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZjBOaxa2f6VzZrmkQAwDmA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
