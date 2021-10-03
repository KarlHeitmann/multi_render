require_relative "lib/multi_render/version"

Gem::Specification.new do |spec|
  spec.name        = "multi_render"
  spec.version     = MultiRender::VERSION
  spec.authors     = ["Karl Heitmann"]
  spec.email       = ["khf1988@gmail.com"]

  spec.summary       = "MultiRenderer is a class that renders multiple partials on your view."
  spec.description   = "Once you provide to a MultiRenderer instance the data it needs in each partial you are rendering in your view, the instance will render the given partial with it's local variables. This is usefull if you have a big view on your project, and you are rendering multiple arrays. Having all your iterations running on your controller can help you to detect a bottle neck that is causing your web page to run slow."
  spec.homepage      = "https://github.com/KarlHeitmann/multi_renderer"

  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/KarlHeitmann/multi_renderer"
  spec.metadata["changelog_uri"] = "https://github.com/KarlHeitmann/multi_renderer/blob/master/CHANGELOG.md"


  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.1"
end
