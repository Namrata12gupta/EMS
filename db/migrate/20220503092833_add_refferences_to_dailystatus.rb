# frozen_string_literal: true

class AddRefferencesToDailystatus < ActiveRecord::Migration[7.0]
  def change
    add_reference :daily_statuses, :user, foreign_key: true
  end
end
