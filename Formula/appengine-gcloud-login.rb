require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula")

class AppengineGcloudLogin < GistFormula
  desc "Logs an appengine-java account to your gcloud account"
  gist_hash "cc83c1fa6d01c2e8260580a1580dc28d"
  gist_file "appengine-gcloud-login"
  gist_revision "987a4f40"
  version "1"
end
