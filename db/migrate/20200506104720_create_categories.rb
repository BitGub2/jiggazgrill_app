class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
    	t.string :title
    	t.integer :listing_order

      t.timestamps
    end
  end
end
