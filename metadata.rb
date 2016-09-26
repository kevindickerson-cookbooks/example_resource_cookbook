name 'example_resources'
maintainer 'Kevin Dickerson'
maintainer_email 'kevin.dickerson@loom.technology'
license 'Apache 2.0'
description 'Provider cookbook that defines an example Chef resource. ' \
            'Integration tests in InSpec.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.14'

supports 'centos', '>= 5.11'
supports 'debian', '>= 7.9'
supports 'fedora', '>= 22.0'
supports 'ubuntu', '>= 12.04'

source_url 'https://github.com/loom-cookbooks/example_resources'
issues_url 'https://github.com/loom-cookbooks/example_resources/issues'
