name             'xonacatl'
maintainer       'Mapzen'
maintainer_email 'matt.amos@mapzen.com'
license          'MIT'
description      'Installs/Configures xonacatl'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'

recipe 'xonacatl', 'Installs Xonacatl'

%w(
  apt
  golang
  runit
  user
).each do |dep|
  depends dep
end

%w(ubuntu).each do |os|
  supports os
end
