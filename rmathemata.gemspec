specifications = Gem::Specification.new do |spec| 
  spec.name = "rmathemata"
  spec.version = "0.1"
  spec.author = "Philippe Cantin"
  spec.homepage = "http://github.com/anoiaque/RMathemata"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "Mathematic Library written in ruby"
  spec.description = "Provide mathematics functions and utilities for Theory of Number. Analysis. Geometry ..."
  spec.files = Dir['lib/**/*.rb']
  spec.require_path = "lib"
  spec.test_files  = Dir['test/**/*.rb']
  spec.has_rdoc = false
  spec.extra_rdoc_files = ["README.rdoc"]
end