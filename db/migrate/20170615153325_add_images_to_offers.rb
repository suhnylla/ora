class AddImagesToOffers < ActiveRecord::Migration[5.1]
  def change
    add_column :offers, :images, :json
  end
end
