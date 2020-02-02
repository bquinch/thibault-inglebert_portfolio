class Addprioritytoprojects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :priority, :integer
  end
end
