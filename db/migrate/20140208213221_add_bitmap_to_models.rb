class AddBitmapToModels < ActiveRecord::Migration
  def self.up
    add_attachment :people, :bitmap
    add_attachment :projects, :bitmap
    add_attachment :pictures, :bitmap
  end

  def self.down
    remove_attachment :people, :bitmap
    remove_attachment :projects, :bitmap
    remove_attachment :pictures, :bitmap
  end
end
