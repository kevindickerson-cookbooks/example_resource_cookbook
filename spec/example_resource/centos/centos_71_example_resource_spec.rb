require 'spec_helper'

describe 'example_resource_test::integration on centos-71' do
  cached(:centos_71_example_resource) do
    ChefSpec::SoloRunner.new(
      # platform: 'centos',
      # version: '7.1',
      step_into: 'example_resource'
    ).converge('example_resource_test::integration')
  end

  context 'compiling the test recipe' do
    it 'creates example_resource[my example resource]' do
      expect(centos_71_example_resource).to \
        create_example_resource 'my example resource'
      expect(centos_71_example_resource).to create_file '/hello.txt'
    end
  end
end
