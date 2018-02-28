class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :summary
      t.text :description
      t.string :client
      t.string :credit
      t.string :company
      t.string :role
      t.date :date
      t.string :slug
      t.string :website_url
      t.text :awards

      t.timestamps
    end
  end
end
