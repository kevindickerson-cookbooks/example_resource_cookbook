if defined?(ChefSpec)
  if ChefSpec.respond_to?(:define_matcher)
    ChefSpec.define_matcher :example_resource # ChefSpec >= 4.1
  elsif defined?(ChefSpec::Runner) &&
        ChefSpec::Runner.respond_to?(:define_runner_method)
    ChefSpec::Runner.define_runner_method :example_resource # ChefSpec < 4.1
  end

  def create_example_resource(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:example_resource, :create,
                                            resource_name)
  end
end
