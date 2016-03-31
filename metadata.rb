name 'example_resources'
maintainer 'Kevin Dickerson'
maintainer_email 'kevin.dickerson@loom.technology'
license 'Apache 2.0'
description 'Provider cookbook that defines an example Chef resource. ' \
            'Integration tests in InSpec.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.8'

supports 'centos'
supports 'redhat'
supports 'fedora'
supports 'debian'
supports 'ubuntu'
supports 'smartos'
supports 'omnios'
supports 'suse'

source_url 'https://github.com/kevindickerson-cookbooks/example_resources'
issues_url 'https://github.com/kevindickerson-cookbooks/example_resources/issues'
