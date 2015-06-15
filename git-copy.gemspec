$:.unshift File.expand_path("../lib", __FILE__)

Gem::Specification.new do |spec|
  spec.name    = "git-copy"
  spec.version = "0.2.1"

  spec.author      = "Quanlong He"
  spec.email       = "kyan.ql.he@gmail.com"
  spec.homepage    = "https://github.com/cybertk/git-copy"
  spec.summary     = "Copy git repo to another destination"
  spec.description = "Git plugin for copy remote/local git repo to another remote/local destination"
  spec.executables = "git-copy"
  spec.license     = "MIT"

  spec.files = Dir["lib/**/*"] + %w{ bin/git-copy README.md LICENSE }

  spec.add_runtime_dependency('addressable', '~> 2.3')
end
