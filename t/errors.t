# $Id: errors.t,v 1.2 2002/11/05 03:15:03 comdog Exp $

use Test::More tests => 1;
use Mac::Errors;

is( Mac::Errors::openErr(), -23, 'openErr has right value' );
