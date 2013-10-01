use utf8;
package Vicidial::Schema::Result::VicidialAgentSkipLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialAgentSkipLog

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

=head1 TABLE: C<vicidial_agent_skip_log>

=cut

__PACKAGE__->table("vicidial_agent_skip_log");

=head1 ACCESSORS

=head2 user_skip_log_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 event_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 previous_status

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 6

=head2 previous_called_count

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user_skip_log_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "event_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "campaign_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "previous_status",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 6 },
  "previous_called_count",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_skip_log_id>

=back

=cut

__PACKAGE__->set_primary_key("user_skip_log_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZBVVfA7uleIj0DW827U+gQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
