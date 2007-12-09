# $Id: pod_coverage.t 1613 2005-03-12 04:58:17Z comdog $

use Test::More;
eval "use Test::Pod::Coverage";

if( $@ )
	{
	plan skip_all => "Test::Pod::Coverage required for testing POD";
	}
else
	{
	plan tests => 1;

	pod_coverage_ok( "Mac::Errors", {
		trustme => [ qr/^[A-Z]+$/, qr/constants/ ],
		},
		);      
	}
