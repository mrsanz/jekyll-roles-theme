# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-roles-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Loren Sanz"]
  spec.email         = ["loren.sanz@nike.com"]

  spec.summary       = "%q{Generic Community Roles Template Theme.}"
  spec.homepage      = "https://github.com/mrsanz/jekyll-roles-theme"
  spec.license       = "ISC"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", ">= 3.6", "< 5.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
