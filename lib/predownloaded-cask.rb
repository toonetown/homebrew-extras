CASK_DOWNLOAD_PATH = (ENV["HOMEBREW_CASK_DOWNLOAD_PATH"] ? ENV["HOMEBREW_CASK_DOWNLOAD_PATH"] : "file:#{ENV["HOME"]}/Downloads").freeze

def cask_url(file_name)
  "#{CASK_DOWNLOAD_PATH}/#{file_name}"
end

def predownloaded_cask; end
