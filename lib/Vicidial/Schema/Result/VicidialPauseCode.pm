use utf8;
package Vicidial::Schema::Result::VicidialPauseCode;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialPauseCode

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

=head1 TABLE: C<vicidial_pause_codes>

=cut

__PACKAGE__->table("vicidial_pause_codes");

=head1 ACCESSORS

=head2 pause_code

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 pause_code_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 billable

  data_type: 'enum'
  default_value: 'NO'
  extra: {list => ["NO","YES","HALF"]}
  is_nullable: 1

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "pause_code",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "pause_code_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "billable",
  {
    data_type => "enum",
    default_value => "NO",
    extra => { list => ["NO", "YES", "HALF"] },
    is_nullable => 1,
  },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:D9Bu9I2YQOGxHMtoA4Nwtg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
