class Movie < ActiveRecord::Base
 def Movie.all_ratings
	Movie.uniq.pluck(:rating)
   end
   # filtering moives by ratings
   def self.filter(ratings)
	if ratings != []
	    return self.where(rating: ratings)
	else 
	    return self.all
	end
end
end
