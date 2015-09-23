class testdefine {
	define testdefine ($data) {
		file {"$title":
			ensure => file,
			content => $data,
		}
	}

	testdefine {'/var/tmp/puppetfile1':
		data => 'The name of puppet file is puppetfile1',
	}

	testdefine {'/var/tmp/puppetfile2':
		data => 'The name of puppet file is puppetfile2',
	}

	testdefine {'/var/tmp/puppetfile3':
		data => 'The name of puppet file is puppetfile3',
	}
}

include testdefine
