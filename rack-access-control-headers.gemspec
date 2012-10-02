Gem::Specification.new do |gem|
  gem.authors       = ["Thomas Pomfret", "Joachim Garth"]
  gem.email         = ['thomas@mintdigital.com', 'jpgarth@gmail.com']
  gem.description   = %q{Set access control headers}
  gem.summary       = %q{Sends headers to allow CORS}
  gem.homepage      = "http://github.com/jgarth/rack-access-control-headers"

  gem.files         = ['lib/rack-access-control-headers.rb', 'lib/rack/access-control-headers.rb']
  gem.name          = "rack-access-control-headers"
  gem.version       = '0.0.5'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rack'
end
