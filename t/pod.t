# $Id: pod.t,v 1.3 2003/03/20 15:15:48 petdance Exp $

BEGIN {
    @files = qw( lib/Mac/Errors.pm script/macerror );
}

use Test::More tests => scalar @files;


SKIP: {
    eval "use Test::Pod;";
    skip "Test::Pod not installed", scalar @files if $@;
    pod_file_ok("blib/$_") for @files;
}

