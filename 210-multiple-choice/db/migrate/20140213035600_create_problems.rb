class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
    t.string :problem_number
    t.string :equation
    t.string :answer_a
    t.string :answer_b
    t.string :answer_c
    t.string :answer_d
    end
  end
end
