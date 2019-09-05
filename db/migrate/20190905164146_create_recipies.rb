class CreateRecipies < ActiveRecord::Migration[5.2]
  def change
    create_table :recipies do |t|

      t.timestamps
    end
  end
end
