# frozen_string_literal: true

class AddCartRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :carts, :users, column: :user_id
  end
end
