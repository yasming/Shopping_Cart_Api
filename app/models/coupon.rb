class Coupon < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :code, presence: true
end
