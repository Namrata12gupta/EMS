# frozen_string_literal: true

class AddReferencesToLeave < ActiveRecord::Migration[7.0]
  def change
    add_reference :leaves, :user, foreign_key: true
  end
end
