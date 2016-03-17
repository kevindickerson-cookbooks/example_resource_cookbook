if defined?(ChefSpec)
  if ChefSpec.respond_to?(:define_matcher)
    # ChefSpec >= 4.1
    ChefSpec.define_matcher :example_resource
  elsif defined?(ChefSpec::Runner) &&
        ChefSpec::Runner.respond_to?(:define_runner_method)
    # ChefSpec < 4.1
    ChefSpec::Runner.define_runner_method :example_resource
  end

  def create_example_resource(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:example_resource, :create,
                                            resource_name)
  end
end
