use utf8;
package Vicidial::Schema::Result::Conference;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::Conference

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

=head1 TABLE: C<conferences>

=cut

__PACKAGE__->table("conferences");

=head1 ACCESSORS

=head2 conf_exten

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "conf_exten",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FU+bpQdcfoddqDHvtggvfQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
