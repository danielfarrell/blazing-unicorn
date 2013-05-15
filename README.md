Blazing Unicorn
===============

Unicorn recipe for [blazing](http://github.com/effkay/blazing)

If you run your applications with [unicorn](http://unicorn.bogomips.org/), this lets you
do a rolling restart after a deployment.


Installation
------------

Add `gem 'blazing-unicorn'` to your `Gemfile`

Usage
-----

Enable the recipes you want in your blazing configuration file. Options
can be provided in the recipe call or with the target method. Target
options have precedence over recipe options.

```ruby
# Restart unicorn
#
#   recipe :rolling_restart, [options]
#
# Options:
#
#   :pid_file (Set the location of the pid file, default: tmp/pids/unicorn.pid)
#
# Example:

recipe :rolling_restart
```

Authors
-------

Daniel Farrell ([@danielfarrell][])

License
-------

See the [MIT-LICENSE file](https://github.com/danielfarrell/blazing-unicorn/blob/master/MIT-LICENSE)

[@danielfarrell]: https://github.com/danielfarrell
