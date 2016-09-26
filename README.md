# example_resources

[![Build Status](https://travis-ci.org/loom-cookbooks/example_resources.svg?branch=master)](https://travis-ci.org/loom-cookbooks/example_resources) [![Cookbook Version](https://img.shields.io/cookbook/v/example_resources.svg)](https://supermarket.chef.io/cookbooks/example_resources)

This is a resource cookbook that demonstrates how to use InSpec for integration testing.

The purpose of this cookbook is to illustrate the relationship between a cookbook that defines a new Chef resource, and another cookbook that consumes it.

This is a simple resource cookbook that defines a Chef resource. I wrote another cookbook called [example], which consumes the resource defined here.

[example]: https://supermarket.chef.io/cookbooks/example

## To test

This cookbook was tested most recently with ChefDK v0.17.17. It should work with ChefDK v0.12.0 or higher.

If you're using ChefDK ~> 0.11, look at [v1.0.7] of this cookbook for instructions on testing.

```bash
$ kitchen verify
```

## Development

* [GitHub]
* [Supermarket]
* [Issues, questions, requests]

## Author

Created and maintained by Kevin Dickerson of [Loom]. <kevin.dickerson@loom.technology>.

[Loom]: https://loom.technology
[GitHub]: https://github.com/loom-cookbooks/example_resources
[Supermarket]: https://supermarket.chef.io/cookbooks/example_resources
[Issues, questions, requests]: https://github.com/loom-cookbooks/example_resources/issues
[chefdk]: https://downloads.chef.io/chef-dk/
[v1.0.7]: https://github.com/loom-cookbooks/example_resources/tree/v1.0.7
[example_resources]: https://supermarket.chef.io/cookbooks/example_resources
