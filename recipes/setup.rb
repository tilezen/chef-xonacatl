#
# Cookbook Name:: xonacatl
# Recipe:: setup
#
# Copyright 2016, Mapzen
#
# Available under the MIT license, see LICENSE for details
#

user_account node[:xonacatl][:user][:user] do
  manage_home true
  create_group node[:xonacatl][:user][:create_group]
  home node[:xonacatl][:user][:home]
  only_if { node[:xonacatl][:user][:enabled] }
end

directory node[:xonacatl][:cfg_path] do
  action :create
  recursive true
end
