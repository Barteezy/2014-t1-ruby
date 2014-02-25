class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :address
      t.string :rent
      t.string :allows_pets
      t.string :link
    end
  end
end
