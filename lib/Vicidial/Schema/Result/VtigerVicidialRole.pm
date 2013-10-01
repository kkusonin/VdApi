use utf8;
package Vicidial::Schema::Result::VtigerVicidialRole;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VtigerVicidialRole

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

=head1 TABLE: C<vtiger_vicidial_roles>

=cut

__PACKAGE__->table("vtiger_vicidial_roles");

=head1 ACCESSORS

=head2 user_level

  data_type: 'tinyint'
  is_nullable: 1

=head2 vtiger_role

  data_type: 'varchar'
  is_nullable: 1
  size: 5

=cut

__PACKAGE__->add_columns(
  "user_level",
  { data_type => "tinyint", is_nullable => 1 },
  "vtiger_role",
  { data_type => "varchar", is_nullable => 1, size => 5 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ujLuf5jA/rCWD1L+8LdmDw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
