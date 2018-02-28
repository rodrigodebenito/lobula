class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :caption
      t.string :credit
      t.integer :weight
      t.belongs_to :project

      t.timestamps
    end
    add_index :pictures, :project_id
  end
end
