class AddHrefToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :href, :string, :default => ''
  end
end
