# frozen_string_literal: true

class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :coupon_id
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
