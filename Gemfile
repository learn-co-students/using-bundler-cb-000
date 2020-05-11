# should specify rubygems as a source using the SSL protocol on the first line
source "https://rubygems.org"

# should list the sinatra gem with the specific version 1.4.4
gem "sinatra", '1.4.4'
# should list the hashie gem without specifying a version
gem "hashie"
# should list the octokit gem specifying version 2.0 with a twiddle-wakka
gem "octokit", '~> 2.0'
# should list the awesome_print gem specifying a remote git repository (use SSH)
gem "awesome_print", :git => 'git@github.com:awesome-print/awesome_print.git'

# should contain the pry gem in the development group using a hash argument to the gem method
gem "pry", :group => "development"
# group :development do
#   gem "pry"
# end

# should contain the rspec gem in the test group using block syntax
group :test do
  gem "respec"
end
