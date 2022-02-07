class CreateLocalities < ActiveRecord::Migration[5.2]
  def change
    create_table :localities do |t|
      t.string :name
      t.integer :postal_code
      t.string :short_name
      t.boolean :enabled
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
