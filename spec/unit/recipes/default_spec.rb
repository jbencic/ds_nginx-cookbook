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
  end
end
