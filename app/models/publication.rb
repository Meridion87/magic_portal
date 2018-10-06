class Publication < ApplicationRecord
  belongs_to :card, optional: true
  belongs_to :buy, optional: true
end
