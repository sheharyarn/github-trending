module Github
	module Trending
	  class Project
	    attr_accessor :name, :lang, :description, :star_count

	    def to_a
	      [@name, @lang, @star_count.to_s]
	    end
	  end
  end
end
