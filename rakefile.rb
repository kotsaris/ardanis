task :default => :test
task :test => [:build, :htmlproof]

task :build do
  sh('jekyll', 'build')
end

task :htmlproof do
  sh('htmlproofer', './_site')
end
