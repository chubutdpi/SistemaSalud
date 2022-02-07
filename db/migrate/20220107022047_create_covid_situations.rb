class CreateCovidSituations < ActiveRecord::Migration[5.2]
  def change
    create_table :covid_situations do |t|
      t.references :locality, foreign_key: true
      t.date :part_date
      t.integer :ambulatory
      t.integer :general_room
      t.integer :uti_with_arm
      t.integer :uti_without_arm
      t.integer :new_cases
      t.integer :new_deceased
      t.integer :new_recovered
      t.timestamps
    end
  end
end
