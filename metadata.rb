name 'yum-amazon'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs/Configures yum-amazon'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.5'

depends 'yum', '~> 3.0'

supports 'amazon'

source_url 'https://github.com/chef-cookbooks/yum-amazon' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-amazon/issues' if respond_to?(:issues_url)
