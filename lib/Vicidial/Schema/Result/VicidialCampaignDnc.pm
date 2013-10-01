use utf8;
package Vicidial::Schema::Result::VicidialCampaignDnc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialCampaignDnc

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

=head1 TABLE: C<vicidial_campaign_dnc>

=cut

__PACKAGE__->table("vicidial_campaign_dnc");

=head1 ACCESSORS

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 0
  size: 18

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=cut

__PACKAGE__->add_columns(
  "phone_number",
  { data_type => "varchar", is_nullable => 0, size => 18 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 0, size => 8 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<phonecamp>

=over 4

=item * L</phone_number>

=item * L</campaign_id>

=back

=cut

__PACKAGE__->add_unique_constraint("phonecamp", ["phone_number", "campaign_id"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:B/10plMkSrrVY0v783DHpQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
