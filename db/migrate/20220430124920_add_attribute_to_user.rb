# frozen_string_literal: true

class AddAttributeToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :father_name, :string
    add_column :users, :mother_name, :string
    add_column :users, :company_name, :string
    add_column :users, :designation, :string
    add_column :users, :country, :string
    add_column :users, :address, :string
    add_column :users, :phone_no, :integer
    add_column :users, :primary_skill, :string
    add_column :users, :pan_card, :integer
    add_column :users, :adhar_card, :integer
    add_column :users, :bank_name, :string
    add_column :users, :account_no, :integer
  end
end
