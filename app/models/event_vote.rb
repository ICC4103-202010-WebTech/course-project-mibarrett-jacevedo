class EventVote < ApplicationRecord
  belongs_to :user
  belongs_to :event_option
end
