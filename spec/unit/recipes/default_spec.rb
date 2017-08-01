#
# Cookbook:: ds_nginx
# Spec:: default
#
# Copyright:: 2017, The Dark Sky Company, LLC, All Rights Reserved.

require 'spec_helper'

describe 'ds_nginx::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs & configures NGINX' do
      expect(chef_run).to include_recipe 'chef_nginx'
      expect(chef_run).to include_recipe 'chef_nginx::http_stub_status_module'
    end

    it 'creates a directory to store NGINX caches' do
      expect(chef_run).to create_directory '/var/lib/nginx/cache'
    end
  end

  context 'When node[ds_nginx][cache_dir] is set, on Ubuntu 16.04' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new do |node, _server|
        node.override['ds_nginx']['cache_dir'] = '/var/cache'
      end.converge(described_recipe)
    end

    it 'creates a directory to store NGINX caches' do
      expect(chef_run).to create_directory '/var/cache'
    end
  end
end
