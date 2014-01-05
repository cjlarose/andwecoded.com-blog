class CreateScratchpads < ActiveRecord::Migration
  def change
    create_table :scratchpads do |t|
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
