# frozen_string_literal: true

class AaddAttributeToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :integer
  end
end
