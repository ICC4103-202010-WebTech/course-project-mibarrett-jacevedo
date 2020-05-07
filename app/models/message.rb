class Message < ApplicationRecord
  has_many :mailbox
  has_many :user
end
