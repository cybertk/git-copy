begin
    require 'rspec/core/rake_task'
    RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end

task :cli_test do
    sh './cli-test.sh'
end

task :default => [:spec, :cli_test]
