# -*- encoding: utf-8 -*-
# stub: flex-slider-rails 2.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "flex-slider-rails".freeze
  s.version = "2.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mohammed Sadiq".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-05-14"
  s.description = "flexslider up to date JavaScript library for your Rails 4 and Rails 5 application.".freeze
  s.email = ["sadiqmmm@gmail.com".freeze]
  s.homepage = "https://github.com/sadiqmmm/flex-slider-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.4".freeze
  s.summary = "".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
