class Questionnaire < ApplicationRecord
  belongs_to :user
  
#LEFT IMAGE CYCLE ARRAY
preference_left = Hash.new
preference_left["Cats"] = "/images/cat.png"
preference_left["Walk on the Beach"] = "/images/beach.png"
preference_left["Movies"] = "/images/movies.png"
preference_left["Restaurant"] = "/images/restaurant.png"
preference_left["Video Games"] = "/images/video_games.png"
preference_left["Android"] = "/images/android.png"
preference_left["Art"] = "/images/art.png"
preference_left["Paris"] = "/images/paris.png"
preference_left["Drinks at a Bar"] = "/images/bar.png"
preference_left["Building 8 Escalators"] = "/images/escalators.png"

#RIGHT IMAGE CYCLE ARRAY
preference_right = Hash.new
preference_right["Dogs"] = "/images/dog.png"
preference_right["Walk in the Park"] = "/images/park.png"
preference_right["Books"] = "/images/books.png"
preference_right["Cafe"] = "/images/cafe.png"
preference_right["Board Games"] = "/images/board_games.png"
preference_right["iPhone"] = "/images/iphone.png"
preference_right["Sport"] = "/images/sport.png"
preference_right["Bali"] = "/images/bali.png"
preference_right["Night Out Clubbing"] = "/images/club.png"
preference_right["Building 80 Elevators"] = "/images/elevators.png"

end