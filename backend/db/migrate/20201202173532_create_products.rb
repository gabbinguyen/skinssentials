class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :name
      t.string :skin_type
      t.string :step
      t.string :img_url

      t.timestamps
    end
  end
end
