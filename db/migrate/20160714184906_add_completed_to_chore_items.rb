class AddCompletedToChoreItems < ActiveRecord::Migration
  def change
    add_column :chore_items, :completed_at, :datetime
  end
end
