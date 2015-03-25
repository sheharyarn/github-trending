module Github
  module Trending
    class Project
      attr_accessor :name, :lang, :description, :star_count, :url

      def to_a
        [@name, @lang, @star_count.to_s, @url]
      end
    end
  end
end
