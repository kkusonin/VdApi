use utf8;
package Vicidial::Schema::Result::VicidialUrlLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialUrlLog

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

=head1 TABLE: C<vicidial_url_log>

=cut

__PACKAGE__->table("vicidial_url_log");

=head1 ACCESSORS

=head2 url_log_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 url_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 url_type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 10

=head2 response_sec

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 url

  data_type: 'text'
  is_nullable: 1

=head2 url_response

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "url_log_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "uniqueid",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "url_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "url_type",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 10 },
  "response_sec",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "url",
  { data_type => "text", is_nullable => 1 },
  "url_response",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</url_log_id>

=back

=cut

__PACKAGE__->set_primary_key("url_log_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aG2wb5IbahJV+fgHukQFEg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
