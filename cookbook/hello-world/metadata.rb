name             'hello-world'
maintainer       'Chris Schomaker'
maintainer_email 'schomaker.c@gmail.com'
license          'All rights reserved'
description      'Installs/Configures nginx and some other basic things'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt'
depends 'nginx'

supports 'ubuntu', ">= 14.04"
