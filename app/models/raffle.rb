class Raffle < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :probable_draw_at
  validates_presence_of :start_sale_at
  validates_presence_of :finishes_sale_at
  validates_presence_of :ticket_value
  belongs_to :user
  belongs_to :kind
end
