use utf8;
package Vicidial::Schema::Result::VicidialCustomLeadloaderTemplate;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCustomLeadloaderTemplate

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

=head1 TABLE: C<vicidial_custom_leadloader_templates>

=cut

__PACKAGE__->table("vicidial_custom_leadloader_templates");

=head1 ACCESSORS

=head2 template_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 template_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 template_description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 list_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 standard_variables

  data_type: 'text'
  is_nullable: 1

=head2 custom_table

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 custom_variables

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "template_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "template_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "template_description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "list_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "standard_variables",
  { data_type => "text", is_nullable => 1 },
  "custom_table",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "custom_variables",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</template_id>

=back

=cut

__PACKAGE__->set_primary_key("template_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ssP02RbeldaM2C9SutZLyg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
