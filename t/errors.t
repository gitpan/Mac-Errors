# $Id: errors.t,v 1.1.1.1 2002/09/10 05:49:06 comdog Exp $

use Test::More tests => 1;
use Mac::Errors;

is( Mac::Errors::openErr(), -23 );
