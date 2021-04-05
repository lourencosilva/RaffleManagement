class Kind < ApplicationRecord
  validates_presence_of :description
  validates_presence_of :initial
  validates_presence_of :step
  validates_presence_of :quantity

  def to_s
    description
  end
end
