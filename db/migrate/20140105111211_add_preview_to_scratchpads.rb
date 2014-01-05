class AddPreviewToScratchpads < ActiveRecord::Migration
  def change
    add_column :scratchpads, :preview, :text
  end
end
