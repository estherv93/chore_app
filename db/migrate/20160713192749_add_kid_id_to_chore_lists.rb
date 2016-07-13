class AddKidIdToChoreLists < ActiveRecord::Migration
  def change
      add_column :chore_lists, :kid_id, :integer
  end
end
