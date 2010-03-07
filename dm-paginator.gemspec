# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-paginator}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Juan Felipe Alvarez Saldarriaga"]
  s.date = %q{2010-03-07}
  s.description = %q{Simple DataMapper paginator}
  s.email = %q{nebiros@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "lib/dm-paginator.rb",
     "lib/dm-paginator/defaults.rb",
     "lib/dm-paginator/main.rb",
     "lib/dm-paginator/paginator.rb",
     "lib/dm-paginator/version.rb"
  ]
  s.homepage = %q{http://github.com/nebiros/dm-paginator}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A simple DataMapper paginator}
  s.test_files = [
    "test/helper.rb",
     "test/test_dm-paginator.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<dm-core>, [">= 0.10.1"])
      s.add_development_dependency(%q<dm-aggregates>, [">= 0.10.1"])
    else
      s.add_dependency(%q<dm-core>, [">= 0.10.1"])
      s.add_dependency(%q<dm-aggregates>, [">= 0.10.1"])
    end
  else
    s.add_dependency(%q<dm-core>, [">= 0.10.1"])
    s.add_dependency(%q<dm-aggregates>, [">= 0.10.1"])
  end
end

