class CreateShirts < ActiveRecord::Migration[5.1]
  def change
    create_table :shirts do |t|
      t.string :type
      t.string :size
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
