use utf8;
package Vicidial::Schema::Result::VicidialOutboundIvrLogArchive;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialOutboundIvrLogArchive

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

=head1 TABLE: C<vicidial_outbound_ivr_log_archive>

=cut

__PACKAGE__->table("vicidial_outbound_ivr_log_archive");

=head1 ACCESSORS

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 caller_code

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 event_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 menu_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 menu_action

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "caller_code",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "event_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "campaign_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "menu_id",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "menu_action",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<campserver>

=over 4

=item * L</event_date>

=item * L</lead_id>

=item * L</menu_id>

=back

=cut

__PACKAGE__->add_unique_constraint("campserver", ["event_date", "lead_id", "menu_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A9m9qVk9YGrcpYwMnB/0SA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
