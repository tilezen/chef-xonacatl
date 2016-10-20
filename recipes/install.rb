#
# Cookbook Name:: xonacatl
# Recipe:: install
#
# Copyright 2016, Mapzen
#
# Available under the MIT license, see LICENSE for details
#

include_recipe "runit"

template "#{node[:xonacatl][:cfg_path]}/#{node[:xonacatl][:cfg_file]}" do
  source 'xonacatl-config.conf.erb'
  notifies :restart, 'runit_service[xonacatl]', :delayed
end

golang_package node[:xonacatl][:package] do
  action [:update, :install]
  notifies :restart, 'runit_service[xonacatl]', :delayed
end

execute 'allow xonacatl to bind on <1024 ports' do
  command 'setcap cap_net_bind_service=+ep ' + node['go']['gobin'] + '/xonacatl_server'
end

runit_service 'xonacatl' do
  action [:enable]
  log true
  default_logger true
  sv_timeout node[:xonacatl][:runit][:timeout]
end
