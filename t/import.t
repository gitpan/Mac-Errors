# $Id: import.t,v 1.1 2002/10/08 23:14:16 comdog Exp $
use strict;

use Test::More tests => 1;

use Mac::Errors qw(%MacErrors);

my $count = keys %MacErrors;
