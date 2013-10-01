use utf8;
package Vicidial::Schema::Result::VicidialLogExtendedArchive;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialLogExtendedArchive

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

=head1 TABLE: C<vicidial_log_extended_archive>

=cut

__PACKAGE__->table("vicidial_log_extended_archive");

=head1 ACCESSORS

=head2 uniqueid

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 call_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 caller_code

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 custom_call_id

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 start_url_processed

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y","U"]}
  is_nullable: 1

=head2 dispo_url_processed

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y","U","XY","XU"]}
  is_nullable: 1

=head2 multi_alt_processed

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y","U"]}
  is_nullable: 1

=head2 noanswer_processed

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["N","Y","U"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "uniqueid",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "server_ip",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "call_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "caller_code",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "custom_call_id",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "start_url_processed",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y", "U"] },
    is_nullable => 1,
  },
  "dispo_url_processed",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y", "U", "XY", "XU"] },
    is_nullable => 1,
  },
  "multi_alt_processed",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y", "U"] },
    is_nullable => 1,
  },
  "noanswer_processed",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["N", "Y", "U"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</uniqueid>

=back

=cut

__PACKAGE__->set_primary_key("uniqueid");

=head1 UNIQUE CONSTRAINTS

=head2 C<vlea>

=over 4

=item * L</uniqueid>

=item * L</call_date>

=item * L</lead_id>

=back

=cut

__PACKAGE__->add_unique_constraint("vlea", ["uniqueid", "call_date", "lead_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:br+WnKLlRgY2NNekuVoVow


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
