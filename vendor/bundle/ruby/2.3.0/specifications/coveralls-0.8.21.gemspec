# -*- encoding: utf-8 -*-
# stub: coveralls 0.8.21 ruby lib

Gem::Specification.new do |s|
  s.name = "coveralls"
  s.version = "0.8.21"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nick Merwin", "Wil Gieseler"]
  s.date = "2017-04-27"
  s.description = "A Ruby implementation of the Coveralls API."
  s.email = ["nick@lemurheavy.com", "supapuerco@gmail.com"]
  s.executables = ["coveralls"]
  s.files = ["bin/coveralls"]
  s.homepage = "https://coveralls.io"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "2.5.1"
  s.summary = "A Ruby implementation of the Coveralls API."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, ["< 3", ">= 1.8"])
      s.add_runtime_dependency(%q<simplecov>, ["~> 0.14.1"])
      s.add_runtime_dependency(%q<tins>, ["~> 1.6"])
      s.add_runtime_dependency(%q<term-ansicolor>, ["~> 1.3"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.19.4"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
    else
      s.add_dependency(%q<json>, ["< 3", ">= 1.8"])
      s.add_dependency(%q<simplecov>, ["~> 0.14.1"])
      s.add_dependency(%q<tins>, ["~> 1.6"])
      s.add_dependency(%q<term-ansicolor>, ["~> 1.3"])
      s.add_dependency(%q<thor>, ["~> 0.19.4"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
    end
  else
    s.add_dependency(%q<json>, ["< 3", ">= 1.8"])
    s.add_dependency(%q<simplecov>, ["~> 0.14.1"])
    s.add_dependency(%q<tins>, ["~> 1.6"])
    s.add_dependency(%q<term-ansicolor>, ["~> 1.3"])
    s.add_dependency(%q<thor>, ["~> 0.19.4"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
  end
end
