#!/usr/bin/perl
use strict;
use warnings;
use Config::JFDI;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Vicidial::Agent;
use Vicidial::Schema;
use Data::Dumper;

my $config = Config::JFDI->new( name => 'VdApi', path => "$FindBin::Bin/.." )->get;
my $dsn = $config->{'Model::DB'}{connect_info}{dsn};
my $user = $config->{'Model::DB'}{connect_info}{user};
my $pass = $config->{'Model::DB'}{connect_info}{password};

my $schema = Vicidial::Schema->connect(
    $dsn,
    $user,
    $pass,
    {RaiseError => 1}
);

my $agent = Vicidial::Agent->new(
    schema => $schema,
    username => 2000,
);

print $agent->live_agent->campaign->campaign_name, "\n";

if ($agent->staffed) {
    print "Agent logged in on ", $agent->extension, "\n";
} else {
    print "Agent not logged in\n";
}
