class CreateWorldCities < ActiveRecord::Migration
  def change
    create_table :world_cities do |t|
    t.string :name
    t.string :country
    t.string :country_flag_filename
    t.string :time_zone_offset
    t.string :population_in_millions
    t.string :official_url
    t.string :nickname
    t.string :river
    end
  end
end
