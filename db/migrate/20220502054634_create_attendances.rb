# frozen_string_literal: true

class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.datetime :checkin_time
      t.datetime :checkout_time
      t.string :status, default: 'present'
      t.string :working_hours
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
