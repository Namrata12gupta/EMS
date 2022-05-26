class AddAttributeToLeave < ActiveRecord::Migration[7.0]
  def change
    add_column :leaves, :leave_status, :integer
  end
end
