class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :abbrev
      t.string :name

      t.timestamps
    end
  end
end
