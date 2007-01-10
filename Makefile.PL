# $Id: Makefile.PL,v 1.8 2007/01/10 04:28:02 comdog Exp $
use ExtUtils::MakeMaker;
	
eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'              => 'Mac::Errors',
	'VERSION_FROM'      => 'lib/Errors.pm',
	'LICENSE'			=> 'perl',
	'PM'                => { 'lib/Errors.pm' => '$(INST_LIBDIR)/Errors.pm' },
	'PREREQ_PM'         => {
		'Test::More'  => '0',
		},
	'EXE_FILES'         => [ 'bin/macerror' ],
	'MAN3PODS'          => {
		'lib/Errors.pm'    => '$(INST_MAN3DIR)/Mac::Errors.3',
		},

	clean               => { FILES => 'Mac-Errors-*' },
);
