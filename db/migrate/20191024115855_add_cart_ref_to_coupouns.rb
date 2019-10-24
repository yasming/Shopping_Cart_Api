# frozen_string_literal: true

class AddCartRefToCoupouns < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :carts, :coupons, column: :coupon_id
  end
end
