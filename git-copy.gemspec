$:.unshift File.expand_path("../lib", __FILE__)

Gem::Specification.new do |spec|
  spec.name    = "git-copy"
  spec.version = "0.1.0"

  spec.author      = "Quanlong He"
  spec.email       = "kyan.ql.he@gmail.com"
  spec.homepage    = "https://github.com/cybertk/git-copy"
  spec.summary     = "Copy remote git repo to another remote destination"
  spec.description = "Git plugin for copy remote git repo to another remote destination"
  spec.executables = "git-copy"
  spec.license     = "MIT"

  spec.files = Dir["lib/**/*"] + %w{ bin/git-copy README.md LICENSE }
end
