# example_resource_cookbook

This is a resource cookbook that demonstrates how to use Inspec for integration testing.

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

Note how I lock gem versions using the Gemfile. Run your tests in the context of these `Gemfile` locks, otherwise you will likely see errors [at the time of this writing].

```bash
$ bundle exec kitchen list
```

## Prerequisites

You probably want ChefDK.
