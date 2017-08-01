#
# Cookbook:: ds_nginx
# Recipe:: default
#
# Copyright:: 2017, The Dark Sky Company, LLC, All Rights Reserved.

include_recipe 'chef_nginx'
include_recipe 'chef_nginx::http_stub_status_module'

# Override the chef_nginx status template with our own
begin
  r = resources template: 'nginx_status'
  r.source   'nginx_status.erb'
  r.cookbook 'ds_nginx'
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn 'could not find template to override!'
end

directory node['ds_nginx']['cache_dir'] do
  owner     node['nginx']['user']
  mode      '700'
  recursive true
end
