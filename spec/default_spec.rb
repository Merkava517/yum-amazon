require 'spec_helper'

describe 'yum-amazon::default' do
  context 'amazon' do
    cached(:chef_run) { ChefSpec::SoloRunner.new(platform: 'amazon', version: '2016.09').converge(described_recipe) }

    it 'creates yum_repository[amzn-main]' do
      expect(chef_run).to create_yum_repository('amzn-main')
    end
    it 'creates yum_repository[amzn-main-debuginfo]' do
      expect(chef_run).to create_yum_repository('amzn-main-debuginfo')
    end
    it 'creates yum_repository[amzn-nosrc]' do
      expect(chef_run).to create_yum_repository('amzn-nosrc')
    end
    it 'creates yum_repository[amzn-preview]' do
      expect(chef_run).to create_yum_repository('amzn-preview')
    end
    it 'creates yum_repository[amzn-preview-debuginfo]' do
      expect(chef_run).to create_yum_repository('amzn-preview-debuginfo')
    end
    it 'creates yum_repository[amzn-updates]' do
      expect(chef_run).to create_yum_repository('amzn-updates')
    end
    it 'creates yum_repository[amzn-updates-debuginfo]' do
      expect(chef_run).to create_yum_repository('amzn-updates-debuginfo')
    end
  end

  context 'centos' do
    cached(:chef_run) { ChefSpec::SoloRunner.new(platform: 'centos', version: '7.3.1611').converge(described_recipe) }

    it 'does not create yum_repository[amzn-main]' do
      expect(chef_run).to_not create_yum_repository('amzn-main')
    end
    it 'does not create yum_repository[amzn-main-debuginfo]' do
      expect(chef_run).to_not create_yum_repository('amzn-main-debuginfo')
    end
    it 'does not create yum_repository[amzn-nosrc]' do
      expect(chef_run).to_not create_yum_repository('amzn-nosrc')
    end
    it 'does not create yum_repository[amzn-preview]' do
      expect(chef_run).to_not create_yum_repository('amzn-preview')
    end
    it 'does not create yum_repository[amzn-preview-debuginfo]' do
      expect(chef_run).to_not create_yum_repository('amzn-preview-debuginfo')
    end
    it 'does not create yum_repository[amzn-updates]' do
      expect(chef_run).to_not create_yum_repository('amzn-updates')
    end
    it 'does not create yum_repository[amzn-updates-debuginfo]' do
      expect(chef_run).to_not create_yum_repository('amzn-updates-debuginfo')
    end
  end
end
