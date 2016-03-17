require 'spec_helper'

describe 'example_resource_test::integration on centos-71' do
  cached :centos_71_example_resource_run do
    runner = ChefSpec::SoloRunner.new step_into: 'example_resource'
    runner.converge 'example_resource_test::integration'
  end

  context 'compiling the test recipe' do
    it 'creates example_resource[my example resource]' do
      expect(centos_71_example_resource_run).to \
        create_example_resource 'my example resource'
    end

    it 'creates file[/hello.txt]' do
      expect(centos_71_example_resource_run).to create_file '/hello.txt'
    end
  end
end
