class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
    t.string :id_number
    t.string :name
    t.string :systolic
    t.string :diastolic
    end
  end
end
