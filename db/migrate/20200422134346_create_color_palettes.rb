class CreateColorPalettes < ActiveRecord::Migration[6.0]
  def change
    create_table :color_palettes do |t|
      t.string :first_color
      t.string :second_color
      t.string :third_color
      t.string :fourth_color
      t.string :fifth_color
      t.string :sixth_color

      t.timestamps
    end
  end
end
