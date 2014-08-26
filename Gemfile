source 'https://rubygems.org'

# Gemified Apps
#
# Each app should be independent and have their own repo. However during
# development you will most likely want an easy way to reach the code. Only
# for this demo the dependencies are using a relative path. In a real project
# you should:
#
#   1. Define your dependencies with a repo url:
#       gem 'project-foo', :git => 'https://github.com/team/repo.git'
#
#   2. Clone each gem into the './apps' folder
#
#   3. Tell Bundler to use your local code for a given repo url:
#       bundle config local.project-foo /full/local/path.../apps/project-foo
#
# This should ease deployments. Be careful if you use git submodules with
# tracking. It will be easier and more clear managing your apps versioning here
# and not through git commits.
#
gem 'pademo-core', path:'./apps/pademo-core'
gem 'pademo-grunt', path:'./apps/pademo-grunt'
gem 'pademo-hello', path:'./apps/pademo-hello'
gem 'pademo-pipeline', path:'./apps/pademo-pipeline'
gem 'pademo-sinapi', path:'./apps/pademo-sinapi'
gem 'pademo-tester', path:'./apps/pademo-tester'

# ... wait! No Padrino here? 
#
# Since each gem should use the same version, that is defined as a gemspec
# dependecy in pademo-core

group :development do
  gem 'rspec'
  gem 'pry'
end
