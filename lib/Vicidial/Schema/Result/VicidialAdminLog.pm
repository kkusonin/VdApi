use utf8;
package Vicidial::Schema::Result::VicidialAdminLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialAdminLog

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

=head1 TABLE: C<vicidial_admin_log>

=cut

__PACKAGE__->table("vicidial_admin_log");

=head1 ACCESSORS

=head2 admin_log_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 event_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 ip_address

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 event_section

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 event_type

  data_type: 'enum'
  default_value: 'OTHER'
  extra: {list => ["ADD","COPY","LOAD","RESET","MODIFY","DELETE","SEARCH","LOGIN","LOGOUT","CLEAR","OVERRIDE","EXPORT","OTHER"]}
  is_nullable: 1

=head2 record_id

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 event_code

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 event_sql

  data_type: 'text'
  is_nullable: 1

=head2 event_notes

  data_type: 'text'
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  default_value: '---ALL---'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "admin_log_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "event_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "user",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "ip_address",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "event_section",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "event_type",
  {
    data_type => "enum",
    default_value => "OTHER",
    extra => {
      list => [
        "ADD",
        "COPY",
        "LOAD",
        "RESET",
        "MODIFY",
        "DELETE",
        "SEARCH",
        "LOGIN",
        "LOGOUT",
        "CLEAR",
        "OVERRIDE",
        "EXPORT",
        "OTHER",
      ],
    },
    is_nullable => 1,
  },
  "record_id",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "event_code",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "event_sql",
  { data_type => "text", is_nullable => 1 },
  "event_notes",
  { data_type => "text", is_nullable => 1 },
  "user_group",
  {
    data_type => "varchar",
    default_value => "---ALL---",
    is_nullable => 1,
    size => 20,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</admin_log_id>

=back

=cut

__PACKAGE__->set_primary_key("admin_log_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-01 13:24:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sUnQmv9X1CjWwDLgHC8T0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
