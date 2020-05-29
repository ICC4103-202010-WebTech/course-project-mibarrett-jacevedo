class Mailbox < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy

  accepts_nested_attributes_for :messages
end
