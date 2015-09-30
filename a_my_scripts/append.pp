# append uniq line to file and replace if check exist 
# puppet module install puppetlabs-stdlib
# https://puppetlabs.com/blog/module-of-the-week-puppetlabsstdlib-puppet-labs-standard-library 

file { "/etc/check_mk/mrpe.cfg": 
	ensure => present, }

file_line { "1 mrpe check entry":
	path => "/etc/check_mk/mrpe.cfg",
	#line => "RED_end_check /array/purato/egnyteApp/scripts/check_red_end.sh",
	line => "RED_end_check /etc/check_mk/scripts/check_red_end.sh",
	match => "^RED_end_check .*$",
}

file_line { "2 mrpe check entry":
	path => "/etc/check_mk/mrpe.cfg",
	#line => "RED_Check /array/purato/egnyteApp/scripts/check_red.sh",
	line => "RED_Check /etc/check_mk/scripts/check_red.sh",
	match => "^RED_Check .*$",
}
