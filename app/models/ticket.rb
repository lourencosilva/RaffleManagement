class Ticket < ApplicationRecord
  validates_presence_of :number
  belongs_to :user, optional: true
  belongs_to :raffle
end
