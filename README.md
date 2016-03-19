# example_resources

[![Build Status](https://travis-ci.org/kevindickerson-cookbooks/example_resources.svg?branch=master)](https://travis-ci.org/kevindickerson-cookbooks/example_resources)

This is a resource cookbook that demonstrates how to use InSpec for integration testing.

The purpose of this cookbook is to illustrate the relationship between a cookbook that defines a new Chef resource, and another cookbook that consumes it.

This is a simple resource cookbook that defines a Chef resource. I wrote another cookbook called [example](https://supermarket.chef.io/cookbooks/example), which consumes the resource defined here.

## To test
1. Install bundled gems using Bundler in context of ChefDK
1. Converge in context of Bundler and ChefDK
1. Verify in context of Bundler and ChefDK

```bash
$ chef exec bundle install
$ chef exec bundle exec kitchen converge
$ chef exec bundle exec kitchen verify
```

## Gemfile

Currently ChefDK provides Test Kitchen 1.5.0 which doesn't play nice with InSpec.

Note how I lock gem versions using the Gemfile. Run your tests in the context of these `Gemfile` locks, otherwise you will likely see problems [at the time of this writing].

This is because ChefDK does a shim thing and locks Test Kitchen to 1.5.0, so I use a Gemfile to lock to Test Kitchen 1.6.0.

The ChefDK shim looks like this for ChefDK 0.15.2 on OS X:

```bash
$ cat /opt/chefdk/bin/kitchen
#!/opt/chefdk/embedded/bin/ruby
#--APP_BUNDLER_BINSTUB_FORMAT_VERSION=1--
ENV["GEM_HOME"] = ENV["GEM_PATH"] = nil unless ENV["APPBUNDLER_ALLOW_RVM"] == "true"
gem "chef-config", "= 12.7.2"
gem "mixlib-config", "= 2.2.1"
gem "mixlib-shellout", "= 2.2.6"
gem "mixlib-install", "= 0.7.1"
gem "net-scp", "= 1.2.1"
gem "net-ssh", "= 3.0.2"
gem "safe_yaml", "= 1.0.4"
gem "thor", "= 0.19.1"
gem "test-kitchen", "= 1.5.0"

spec = Gem::Specification.find_by_name("test-kitchen", "= 1.5.0")
bin_file = spec.bin_file("kitchen")

Kernel.load(bin_file)
```
