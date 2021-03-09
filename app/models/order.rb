class Order < ApplicationRecord

  with_options presence: true do
    validates :number
    validates :exp_month
    validates :exp_year
    validates :cvc
  end
end
