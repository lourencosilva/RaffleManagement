class Prize < ApplicationRecord
  validates_presence_of :description
  validates_presence_of :placing
  belongs_to :user
  belongs_to :ticket, optional: true
end
