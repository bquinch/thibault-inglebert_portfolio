class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :category
      t.text :description
      t.date :creation
      t.string :client

      t.timestamps
    end
  end
end
