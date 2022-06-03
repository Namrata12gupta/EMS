class RenameLeavetoLeaf < ActiveRecord::Migration[7.0]
  def change
     rename_table :leaves, :leafs
  end
end
