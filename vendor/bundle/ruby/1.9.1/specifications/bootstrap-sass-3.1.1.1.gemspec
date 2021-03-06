# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bootstrap-sass"
  s.version = "3.1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas McDonald"]
  s.date = "2014-04-18"
  s.email = "tom@conceptcoding.co.uk"
  s.homepage = "https://github.com/twbs/bootstrap-sass"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Twitter's Bootstrap, converted to Sass and ready to drop into Rails or Compass"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sass>, ["~> 3.2"])
      s.add_development_dependency(%q<sprockets-rails>, [">= 2.0.1"])
      s.add_development_dependency(%q<jquery-rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<slim-rails>, [">= 0"])
      s.add_development_dependency(%q<uglifier>, [">= 0"])
      s.add_development_dependency(%q<compass>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<poltergeist>, [">= 0"])
      s.add_development_dependency(%q<term-ansicolor>, [">= 0"])
    else
      s.add_dependency(%q<sass>, ["~> 3.2"])
      s.add_dependency(%q<sprockets-rails>, [">= 2.0.1"])
      s.add_dependency(%q<jquery-rails>, [">= 3.1.0"])
      s.add_dependency(%q<slim-rails>, [">= 0"])
      s.add_dependency(%q<uglifier>, [">= 0"])
      s.add_dependency(%q<compass>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<poltergeist>, [">= 0"])
      s.add_dependency(%q<term-ansicolor>, [">= 0"])
    end
  else
    s.add_dependency(%q<sass>, ["~> 3.2"])
    s.add_dependency(%q<sprockets-rails>, [">= 2.0.1"])
    s.add_dependency(%q<jquery-rails>, [">= 3.1.0"])
    s.add_dependency(%q<slim-rails>, [">= 0"])
    s.add_dependency(%q<uglifier>, [">= 0"])
    s.add_dependency(%q<compass>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<poltergeist>, [">= 0"])
    s.add_dependency(%q<term-ansicolor>, [">= 0"])
  end
end
