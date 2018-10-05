class Publication < ApplicationRecord
  belongs_to :cards
  belongs_to :buys
end
