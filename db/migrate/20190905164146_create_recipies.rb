class CreateRecipies < ActiveRecord::Migration[5.2]
  def change
    create_table :recipies do |t|

        t.text :name
        t.string :img
        t.string :ingredients
        t.string :intructions
        t.integer :calories
        t.integer :fat
        t.integer :carbohydrates
        t.integer :protein
        t.integer :fiber
        t.integer :servings

      t.timestamps
    end
  end
end
