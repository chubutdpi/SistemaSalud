class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :cuerpo
      t.date :fecha
      t.string :tipo
      t.timestamps
    end
  end
end
