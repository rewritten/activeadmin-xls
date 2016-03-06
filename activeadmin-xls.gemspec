$:.push File.expand_path("../lib", __FILE__)

require 'active_admin/xls/version'

Gem::Specification.new do |s|
  s.name        = 'activeadmin-xls'
  s.version     = ActiveAdmin::Xls::VERSION
  s.author	    = "Todd Hambley"
  s.email       = 'thambley@travelleaders.com'
  s.homepage   	= 'https://github.com/thambley/activeadmin-xls'
  s.platform    = Gem::Platform::RUBY
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.license     = 'MIT'
  s.summary     = "Adds excel (xls) downloads for resources within the Active Admin framework."
  s.description = <<-eof
  This gem provides excel/xls downloads for resources in Active Admin. Often, users are happier with excel, so why not give it to them instead of CSV?
  eof
  s.files       = `git ls-files`.split("\n").sort
  s.test_files  = `git ls-files -- {spec}/*`.split("\n")
  s.test_files  = Dir.glob("{spec/**/*}")

  s.add_runtime_dependency 'activeadmin'
  s.add_runtime_dependency 'spreadsheet'

  s.required_ruby_version = '>= 1.9.2'
  s.require_path = 'lib'
end
