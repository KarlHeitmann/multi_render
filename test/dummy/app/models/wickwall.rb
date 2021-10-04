class Wickwall < ApplicationRecord
  acts_as_yaffle yaffle_text_field: :last_tweet
end
