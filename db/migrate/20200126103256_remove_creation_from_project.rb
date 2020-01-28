class RemoveCreationFromProject < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :creation, :date
  end
end
