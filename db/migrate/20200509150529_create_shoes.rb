class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :image_url
      t.string :name
      t.string :brand
      t.integer :year
      t.string :description
      
    end
  end
end
