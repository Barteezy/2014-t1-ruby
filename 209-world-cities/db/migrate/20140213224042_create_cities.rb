class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
    t.string :name
    t.string :flag
    t.string :time_zone
    t.string :population
    end
  end
end
