use utf8;
package Vicidial::Schema::Result::VicidialMusicOnHoldFiles;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialMusicOnHoldFiles

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

=head1 TABLE: C<vicidial_music_on_hold_files>

=cut

__PACKAGE__->table("vicidial_music_on_hold_files");

=head1 ACCESSORS

=head2 filename

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 moh_id

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 rank

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "filename",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "moh_id",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "rank",
  { data_type => "smallint", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<mohfile>

=over 4

=item * L</filename>

=item * L</moh_id>

=back

=cut

__PACKAGE__->add_unique_constraint("mohfile", ["filename", "moh_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LzzvKGNSvvZqx2MI4yn4Kw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
