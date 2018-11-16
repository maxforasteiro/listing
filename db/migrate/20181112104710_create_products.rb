class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :price_in_cents
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
