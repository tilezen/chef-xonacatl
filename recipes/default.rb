#
# Cookbook Name:: xonacatl
# Recipe:: default
#
# Copyright 2016, Mapzen
#
# Available under the MIT license, see LICENSE for details
#

%w(
  apt::default
  golang::packages
  xonacatl::setup
  xonacatl::install
).each do |r|
  include_recipe r
end
