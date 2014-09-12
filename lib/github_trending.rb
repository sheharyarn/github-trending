module Github
  module Trending
    class ScrapeException < StandardError; end
  end
end

require 'github_trending/version'
require 'github_trending/scraper'
require 'github_trending/project'
