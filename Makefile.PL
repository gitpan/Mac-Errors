# $Id: Makefile.PL,v 1.7 2006/06/08 06:15:28 comdog Exp $
use ExtUtils::MakeMaker;
	
eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'              => 'Mac::Errors',
	'VERSION_FROM'      => 'lib/Errors.pm',
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
