use strict;
use warnings;

use VdApi;

my $app = VdApi->apply_default_middlewares(VdApi->psgi_app);
$app;

