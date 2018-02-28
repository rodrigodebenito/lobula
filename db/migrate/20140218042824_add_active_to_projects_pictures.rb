class AddActiveToProjectsPictures < ActiveRecord::Migration
  def change
    add_column :projects, :active, :boolean, :default => true
    add_column :pictures, :active, :boolean, :default => true
  end
end
