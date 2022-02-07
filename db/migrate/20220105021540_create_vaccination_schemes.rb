class CreateVaccinationSchemes < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccination_schemes do |t|
      t.string :name
      t.date :last_dosis

      t.timestamps
    end
  end
end
