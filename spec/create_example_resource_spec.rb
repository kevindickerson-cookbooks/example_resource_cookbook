require 'spec_helper'

describe 'example_resource_test::integration' do
  let :create_example_resource_centos_511 do
    runner = ChefSpec::ServerRunner.new platform: 'centos',
                                        version: '5.11',
                                        step_into: 'example_resource'
    runner.converge described_recipe
  end

  let :create_example_resource_centos_67 do
    runner = ChefSpec::ServerRunner.new platform: 'centos',
                                        version: '6.7',
                                        step_into: 'example_resource'
    runner.converge described_recipe
  end

  let :create_example_resource_centos_72 do
    runner = ChefSpec::ServerRunner.new platform: 'centos',
                                        version: '7.2.1511',
                                        step_into: 'example_resource'
    runner.converge described_recipe
  end

  let :create_example_resource_fedora_22 do
    runner = ChefSpec::ServerRunner.new platform: 'fedora',
                                        version: '22',
                                        step_into: 'example_resource'
    runner.converge described_recipe
  end

  let :create_example_resource_fedora_23 do
    runner = ChefSpec::ServerRunner.new platform: 'fedora',
                                        version: '23',
                                        step_into: 'example_resource'
    runner.converge described_recipe
  end

  let :create_example_resource_debian_79 do
    runner = ChefSpec::ServerRunner.new platform: 'debian',
                                        version: '7.9',
                                        step_into: 'example_resource'
    runner.converge described_recipe
  end

  let(:create_example_resource_debian_82) do
    runner = ChefSpec::ServerRunner.new platform: 'debian',
                                        version: '8.2',
                                        step_into: 'example_resource'
    runner.converge described_recipe
  end

  let :create_example_resource_ubuntu_1204 do
    runner = ChefSpec::ServerRunner.new platform: 'ubuntu',
                                        version: '12.04',
                                        step_into: 'example_resource'
    runner.converge described_recipe
  end

  let :create_example_resource_ubuntu_1404 do
    runner = ChefSpec::ServerRunner.new platform: 'ubuntu',
                                        version: '14.04',
                                        step_into: 'example_resource'
    runner.converge described_recipe
  end

  context 'on centos' do
    it 'creates example_resource[my example resource]' do
      expect(create_example_resource_centos_511).to \
        create_example_resource 'my example resource'
      expect(create_example_resource_centos_67).to \
        create_example_resource 'my example resource'
      expect(create_example_resource_centos_72).to \
        create_example_resource 'my example resource'
    end

    it 'creates file [/hello.txt]' do
      expect(create_example_resource_centos_511).to create_file '/hello.txt'
      expect(create_example_resource_centos_67).to create_file '/hello.txt'
      expect(create_example_resource_centos_72).to create_file '/hello.txt'
    end
  end

  context 'on fedora' do
    it 'creates example_resource[my example resource]' do
      expect(create_example_resource_fedora_22).to \
        create_example_resource 'my example resource'
      expect(create_example_resource_fedora_23).to \
        create_example_resource 'my example resource'
    end

    it 'creates file [/hello.txt]' do
      expect(create_example_resource_fedora_22).to create_file '/hello.txt'
      expect(create_example_resource_fedora_23).to create_file '/hello.txt'
    end
  end

  context 'on debian' do
    it 'creates example_resource[my example resource]' do
      expect(create_example_resource_debian_79).to \
        create_example_resource 'my example resource'
      expect(create_example_resource_debian_82).to \
        create_example_resource 'my example resource'
    end

    it 'creates file [/hello.txt]' do
      expect(create_example_resource_debian_79).to create_file '/hello.txt'
      expect(create_example_resource_debian_82).to create_file '/hello.txt'
    end
  end

  context 'on ubuntu' do
    it 'creates example_resource[my example resource]' do
      expect(create_example_resource_ubuntu_1204).to \
        create_example_resource 'my example resource'
      expect(create_example_resource_ubuntu_1404).to \
        create_example_resource 'my example resource'
    end

    it 'creates file [/hello.txt]' do
      expect(create_example_resource_ubuntu_1204).to create_file '/hello.txt'
      expect(create_example_resource_ubuntu_1404).to create_file '/hello.txt'
    end
  end
end
