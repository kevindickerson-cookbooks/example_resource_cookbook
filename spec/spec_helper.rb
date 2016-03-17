require 'chefspec'
require 'chefspec/berkshelf'
require 'matchers'

at_exit { ChefSpec::Coverage.report! }

RSpec.configure do |config|
  config.expect_with :rspec do |expect_with|
    expect_with.syntax = :expect
  end
end

if defined? ChefSpec
  ChefSpec.define_matcher :example_resource

  def create_example_resource(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new :example_resource,
                                            :create,
                                            resource_name
  end
end
