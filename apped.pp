# append iniq line to file 
# puppet module install puppetlabs-stdlib
# https://puppetlabs.com/blog/module-of-the-week-puppetlabsstdlib-puppet-labs-standard-library 

file { "/tmp/test": 
	ensure => present, }

file_line { dummy_module:
	path => "/tmp/test",
	line => "dummy",
}
