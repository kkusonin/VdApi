use utf8;
package Vicidial::Schema::Result::VicidialManualDialQueue;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialManualDialQueue

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

=head1 TABLE: C<vicidial_manual_dial_queue>

=cut

__PACKAGE__->table("vicidial_manual_dial_queue");

=head1 ACCESSORS

=head2 mdq_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 phone_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 entry_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 status

  data_type: 'enum'
  default_value: 'READY'
  extra: {list => ["READY","QUEUE"]}
  is_nullable: 1

=head2 external_dial

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "mdq_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "phone_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "entry_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "status",
  {
    data_type => "enum",
    default_value => "READY",
    extra => { list => ["READY", "QUEUE"] },
    is_nullable => 1,
  },
  "external_dial",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</mdq_id>

=back

=cut

__PACKAGE__->set_primary_key("mdq_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pRoTmmHJxGZWyxYqBV5HXw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
