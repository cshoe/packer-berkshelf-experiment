#
# Cookbook Name:: create
# Recipe:: default
#
# Copyright (C) 2014 Chris Schomaker
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'nginx'

directory '/var/www/nginx-default' do
    owner 'www-data'
    group 'www-data'
    mode '0755'
    recursive true
    action :create
end

cookbook_file '/var/www/nginx-default/index.html' do
    owner 'www-data'
    group 'www-data'
    mode '0755'
    action :create_if_missing
    source 'index.html'
end
