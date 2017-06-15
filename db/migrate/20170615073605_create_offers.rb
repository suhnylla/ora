class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :offer_description
      t.string :offer_category
      t.integer :token
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
