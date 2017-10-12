class Questionnaire < ApplicationRecord
  belongs_to :user
  

  validates :pq1, presence: true
  validates :pq2, presence: true
  validates :pq3, presence: true
  validates :pq4, presence: true
  validates :pq5, presence: true
  validates :pq6, presence: true
  validates :pq7, presence: true
  validates :pq8, presence: true
  validates :pq9, presence: true
  validates :pq10, presence: true
=begin
preference_left = Hash.new
preference_left["Cats"] = "/images/cat.png"
preference_left["Walk on the Beach"] = "/images/beach.png"
preference_left["Movies"] = "/images/movies.png"
preference_left["Dining In At A Restaurant"] = "/images/restaurant.png"
preference_left["Video Games"] = "/images/video_games.png"
preference_left["Android"] = "/images/android.png"
preference_left["Art"] = "/images/art.png"
preference_left["Paris"] = "/images/paris.png"
preference_left["Drinks at a Bar"] = "/images/bar.png"
preference_left["Building 8 Escalators"] = "/images/escalators.png"


preference_right = Hash.new
preference_right["Dogs"] = "/images/dog.png"
preference_right["Walk In The Park"] = "/images/park.png"
preference_right["Books"] = "/images/books.png"
preference_right["Coffee At A Cafe"] = "/images/cafe.png"
preference_right["Board Games"] = "/images/board_games.png"
preference_right["iPhone"] = "/images/iphone.png"
preference_right["Sport"] = "/images/sport.png"
preference_right["Bali"] = "/images/bali.png"
preference_right["Night Out Clubbing"] = "/images/club.png"
preference_right["Building 80 Elevators"] = "/images/elevators.png"
=end

    
end
