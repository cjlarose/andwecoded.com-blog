class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.integer :topic_id
      t.integer :post_id

      t.timestamps
    end
  end
end
