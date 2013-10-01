use utf8;
package Vicidial::Schema::Result::VicidialLeadSearchLogArchive;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialLeadSearchLogArchive

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

=head1 TABLE: C<vicidial_lead_search_log_archive>

=cut

__PACKAGE__->table("vicidial_lead_search_log_archive");

=head1 ACCESSORS

=head2 search_log_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 event_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 source

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 10

=head2 search_query

  data_type: 'text'
  is_nullable: 1

=head2 results

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 seconds

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "search_log_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "event_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "source",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 10 },
  "search_query",
  { data_type => "text", is_nullable => 1 },
  "results",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "seconds",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</search_log_id>

=back

=cut

__PACKAGE__->set_primary_key("search_log_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XrTkPtgIeLL/2WhqYljsOA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
