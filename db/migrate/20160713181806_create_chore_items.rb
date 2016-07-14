class CreateChoreItems < ActiveRecord::Migration
  def change
    create_table :chore_items do |t|
      t.string :content
        t.references :kid, index: true, foreign_key: true

      t.timestamps
    end
  end
end
