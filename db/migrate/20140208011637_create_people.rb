class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :summary
      t.text :biography
      t.string :email
      t.string :resume

      t.timestamps
    end
  end
end
