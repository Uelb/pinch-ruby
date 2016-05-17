Gem::Specification.new do |s|
  s.name = 'pinch-api'
  s.version = '0.1.1'
  s.summary = 'pinch'
  s.description = 'A simple gem to easily connect to the Inch Housing Intervention Interface'
  s.authors = ['Inchdev', 'Uelb']
  s.email = 'thomas@inchbase.com'
  s.homepage = 'https://inchbase.com'
  s.license = 'MIT'
  s.add_dependency('unirest', '~> 1.1.2')
  s.add_dependency('json_mapper', '~> 0.2.1')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
  s.documentation_uri = "doc-company.inchbase.com"
end
