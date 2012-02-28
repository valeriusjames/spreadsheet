# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "spreadsheet"
  s.version     = "0.6.6.0" # Spreadsheet::VERSION
  s.authors     = ["James Whitfield"]
  s.email       = ["jwhitfield@zeevex.com"]
  
  s.summary     = "The Spreadsheet Library is designed to read and write Spreadsheet Documents"
  s.description = "As of version 0.6.0, only Microsoft Excel compatible spreadsheets are supported"
  s.author      = "Masaomi Hatakeyama, Zeno R.R. Davatz"
  s.platform    = Gem::Platform::RUBY
  #s.files       = Dir.glob("{bin,lib,test}/**/*") + Dir.glob("*.txt")
  s.test_file   = "test/suite.rb"
  #s.executables << 'xlsopcodes'
  s.add_dependency('ruby-ole')
  s.homepage	 = "http://scm.ywesee.com/?p=spreadsheet/.git;a=summary"
   
  s.rubyforge_project = "spreadsheet"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
