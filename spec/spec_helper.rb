require 'chefspec'
require 'chefspec/berkshelf'
require 'matchers'

at_exit { ChefSpec::Coverage.report! }
