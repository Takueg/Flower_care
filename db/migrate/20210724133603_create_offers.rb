class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :image_url
      t.string :adress
      t.text :description
      t.integer :price
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
