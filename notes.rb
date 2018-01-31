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

=end
