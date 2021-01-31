
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "encrypt_data/version"
require "encrypt_data/crypt"
require 'base64'
require 'openssl'

Gem::Specification.new do |spec|
  spec.name          = "encrypt_data"
  spec.version       = EncryptData::VERSION
  spec.authors       = ["Shubham Prajapat"]
  spec.email         = ["spkumar7786@gmail.com"]

  spec.summary       = 'Simple String encryption'
  spec.description   = 'String encryption is a popular subject in all programming languages. A simple algorithm in ruby for string encryption.'
  spec.homepage      = "https://github.com/shubhamprajapat1/encrypt_data"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/shubhamprajapat1/encrypt_data"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = [
    "lib/encrypt_data.rb",
    "lib/encrypt_data/version.rb",
    "lib/encrypt_data/crypt.rb"
  ]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
