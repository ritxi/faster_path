require 'rubygems'
require 'rake/tasklib'
require_relative './version'

module Thermite
  class Config
    def ruby_version
      "ruby#{RUBY_VERSION}"
    end
  end

  class Tasks < Rake::TaskLib
    def github_download_uri(_tag, version)
      "#{github_uri}/releases/download/v#{FasterPath::VERSION}/#{config.tarball_filename(version)}"
    end
  end
end
