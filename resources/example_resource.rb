resource_name :example_resource

property :example_property, String, default: 'हॅलो जग!'

default_action :create

action :create do
  file '/hello.txt' do
    content example_property
  end
end
