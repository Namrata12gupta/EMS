# frozen_string_literal: true

class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.string :leave_type
      t.date :from_date
      t.date :till_date
      t.integer :total_days
      t.string :reason

      t.timestamps
    end
  end
end
