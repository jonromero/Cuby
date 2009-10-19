# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cuby}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jon Vlachoyiannis", "Jim Myhrberg"]
  s.date = %q{2009-10-19}
  s.description = %q{A tiny C-like language built on top of Ruby, in less than 20 lines of code.}
  s.email = %q{jon@emotionull.com}
  s.executables = ["cuby", "icb"]
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "README",
     "Rakefile",
     "VERSION",
     "bin/cuby",
     "bin/icb",
     "examples/example1.cb",
     "examples/example2.cb",
     "examples/example3.cb",
     "examples/example4.cb",
     "lib/cuby.rb",
     "lib/cuby_vm.rb",
     "stdio.rb"
  ]
  s.homepage = %q{http://github.com/jonromero/Cuby}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A tiny C-like language built on top of Ruby.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
