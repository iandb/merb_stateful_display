Gem::Specification.new do |s|
  s.name = %q{merb_stateful_display}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael D. Ivey", "Shay Arnett"]
  s.date = %q{2008-10-30}
  s.description = %q{Simple extension of Merb's display() that chooses templates based on an object's state}
  s.email = %q{info@iveyandbrown.com}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "lib/merb_stateful_display", "lib/merb_stateful_display/instance_methods.rb", "lib/merb_stateful_display.rb", "spec/merb_stateful_display_spec.rb", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/iandb/merb_stateful_display}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{merb}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Simple extension of Merb's display() that chooses templates based on an object's state}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<merb>, [">= 0.9.10"])
    else
      s.add_dependency(%q<merb>, [">= 0.9.10"])
    end
  else
    s.add_dependency(%q<merb>, [">= 0.9.10"])
  end
end
