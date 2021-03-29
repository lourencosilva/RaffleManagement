class Prize < ApplicationRecord
  belongs_to :user
  belongs_to :ticket, optional: true
end
