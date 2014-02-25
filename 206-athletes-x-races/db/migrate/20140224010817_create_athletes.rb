class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
    t.string :name
    t.string :class_year
    end
  end
end
