name             'ds_nginx'
maintainer       'The Dark Sky Company, LLC'
maintainer_email 'jeff@darksky.net'
license          'All Rights Reserved'
description      'Installs/Configures ds_nginx'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.1.0'
chef_version     '>= 12.11' if respond_to?(:chef_version)

issues_url 'https://github.com/darkskyapp/ds_nginx-cookbook/issues'
source_url 'https://github.com/darkskyapp/ds_nginx-cookbook'

depends 'chef_nginx', '~> 6.0'
