# Here we specify which Bundler groups we want to load. The following code is used to load the default group (anything not explicitly in a group, like test in your Gemfile) and the development group. We're first requiring 'bundler/setup'. If we don't do this, our app won't know to use bundler to install our gems. Without that line, our Gemfile becomes pointless.
require "bundler/setup"
Bundler.require(:default, :development)
