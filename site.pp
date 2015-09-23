file { "/var/tmp/testfile":
	ensure => "present",
	owner => "root",
	group => "root",
	mode => "644",
	content => "This is testfile created using puppet.
Puppet is really coll
",
}
package { 'nmap':
	ensure => 'present',
}

class apache {
	package { 'apache2':
		ensure => 'present',
	}

	service { 'apache2':
		ensure => 'running',
		require => Package["apache2"],
	}
}
include apache
