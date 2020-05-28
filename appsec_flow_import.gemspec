require_relative 'lib/appsec_flow_import/version'

Gem::Specification.new do |spec|
  spec.name          = "appsec_flow_import"
  spec.version       = AppsecFlowImport::VERSION
  spec.authors       = ["Uilton Lopes"]
  spec.email         = ["uilton.lopes.moura@gmail.com"]

  spec.summary       = %q{AppSec Flow Client import vulnerability}
  spec.description   = %q{Ruby wrapper for the REST API for Conviso.}
  spec.homepage      = "http://app.conviso.com.br"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/uiltonlopes/appsec_flow_import"
  spec.metadata["changelog_uri"] = "https://github.com/uiltonlopes/appsec_flow_import"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
