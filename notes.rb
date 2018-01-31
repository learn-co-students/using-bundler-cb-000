=begin

What's a "twiddle-wakka"?
It is the notation ~> that we use in our Ruby-flavoured semver notation in Gemfile. Specifically, it means that the accepted version must be at the same level of the specified version. All sub-levels below the next increment of the current level are accepted. For example, ~> 2.0 means 2.0 <= VERSION < 2.1, while ~> 2.0.1 means 2.0.1 <= VERSION < 2.0.2.

Source: https://til-engineering.nulogy.com/posts/a2274133c8-whats-a-twiddlewakka
Reference: http://guides.rubygems.org/patterns/

-----------------------------------------------

You’ve seen it in some Gemfiles. Here’s an example

gem 'rails', '~> 3.0.3'
gem 'thin',  '~> 1.1'

~> 3.0.3 means that when you bundle install, you’ll get the highest-released gem version of rails between the range >= 3.0.3 and < 3.1.

~> 1.1 means that when you bundle install, you’ll get the highest-released gem version of thin between the range >= 1.1 and < 2.0.

Using the pessimistic operator in combination with consistent Semantic versioning by gem authors, we can theoretically achieve better stability in our dependencies.

Source: https://robots.thoughtbot.com/rubys-pessimistic-operator

-----------------------------------------------

How to install gems from git repositories
http://bundler.io/v1.16/guides/git.html

-----------------------------------------------

When you start up an app, your app needs to know the order in which to load files.
If your app uses gems, a lot of your code will depend on these external libraries.
This means we'd want the gems to be loaded in our app before our own code.
If we loaded our code first, we'd get uninitialized constant errors or undefined variable or method errors. Load order matters.
We can specify load information in config/environment.rb to configure our load path (or load order) so that nothing breaks.

In config.environment.rb, load the default group (anything not explicitly in a group, like test in your Gemfile) and the development group

Require 'bundler/setup' first. Without this, the app won't know to use bundler to install the gems in Gemfile.

The two arguments that are passed into the .require method must be passed in the correct order

-----------------------------------------------

`bin/run.rb` is where the app logic goes.
By requiring config/environment file, we can access all of our gems from our run.rb file

REQUIRE vs. REQUIRE_RELATIVE

`require`
- takes an absolute path for the filename, so the file must either be in the directory from which the application is being run or in one of the directories in your shell's PATH variable
- examples:
  require "my-library.rb"
  require "db-driver"
- https://apidock.com/ruby/Kernel/require


`require_relative`
- takes a relative path that is relative to the file in which the require statement is called (so it's relative to the file being run, not to the directory from which the code is being called)
- examples:
  require_relative '../config/environment'
- https://apidock.com/ruby/Kernel/require_relative


require "#{File.dirname(__FILE__)}/../lib/calendar"
  VS
require_relative "../lib/calendar"
(source: https://practicingruby.com/articles/ways-to-load-code)

=end
