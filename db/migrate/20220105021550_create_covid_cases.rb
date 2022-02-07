class CreateCovidCases < ActiveRecord::Migration[5.2]
  def change
    create_table :covid_cases do |t|
      t.string :firstname
      t.string :lastname
      t.integer :dni, limit: 8
      t.bigint :cellphone
      t.string :email
      t.references :locality, foreign_key: true
      t.string :address_street
      t.integer :address_number
      t.integer :address_floor
      t.string :address_department
      t.string :reason
      t.date :initial_date
      t.string :c_firstname
      t.string :c_lastname
      t.string :c_dni
      t.bigint :c_cellphone
      t.boolean :c_is_cohabiting
      t.date :c_cohabiting_symptom_date
      t.string :c_symptom
      t.date :last_dose_date
      t.string :institution
      t.bigint :security_code
      t.references :vaccination_scheme, foreign_key: true
      t.references :state, foreign_key: true
      t.timestamps
    end
  end
end
