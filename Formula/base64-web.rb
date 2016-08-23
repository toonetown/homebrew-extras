require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Base64Web < GistFormula
  desc "Adds an option to encode/decode url-safe base64"
  gist_hash "90b65f630ff51f570ff893b3637c5b17"
  gist_file "base64"
  gist_revision "daa198ad"
  version "1"
end
