# frozen_string_literal: true

class CreateHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :holidays do |t|
      t.string :holiday_name
      t.date :date

      t.timestamps
    end
  end
end