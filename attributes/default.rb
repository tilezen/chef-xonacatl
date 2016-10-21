default[:go][:version] = '1.7.3'

default[:xonacatl][:package] = 'github.com/tilezen/xonacatl/xonacatl_server'

default[:xonacatl][:cfg_file] = 'xonacatl.conf'
default[:xonacatl][:cfg_path] = '/etc/xonacatl'

default[:xonacatl][:listen] = ':80'
default[:xonacatl][:patterns] = {
  '/{layers}/{z:[0-9]+}/{x:[0-9]+}/{y:[0-9]+}.{fmt}' => 'http://upstream.tile.server/{layers}/{z:[0-9]+}/{x:[0-9]+}/{y:[0-9]+}.{fmt}'
}
default[:xonacatl][:headers] = {}

default[:xonacatl][:runit][:timeout] = 60
default[:xonacatl][:user][:create_group] = true
default[:xonacatl][:user][:enabled] = true
default[:xonacatl][:user][:home] = '/home/xonacatl'
default[:xonacatl][:user][:user] = 'xonacatl'
