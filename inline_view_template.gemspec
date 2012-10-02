# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "inline_view_template/version"

Gem::Specification.new do |s|
  s.name        = "inline_view_template"
  s.version     = InlineViewTemplate::VERSION
  s.authors     = ["Clyde Law"]
  s.email       = ["claw@alum.mit.edu"]
  s.homepage    = %q{http://github.com/Umofomia/inline_view_template}
  s.summary     = %q{Inline view templates are used to define reusable markup without defining a separate partial view template.}
  s.description = %q{Inline view templates are used to define reusable markup without defining a separate partial view template. They can be used to define inline partials or even inline layout templates.}
  s.license     = 'MIT'

  s.add_dependency('actionpack')

  s.rubyforge_project = "inline_view_template"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
