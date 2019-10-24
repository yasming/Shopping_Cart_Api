# frozen_string_literal: true

class Coupon < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :code, presence: true
end
