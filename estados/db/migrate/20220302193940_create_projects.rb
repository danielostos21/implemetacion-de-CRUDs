class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :codigo
      t.date :fecha_inicio
      t.string :nombre
      t.decimal :valor
      t.text :description
      t.references :client, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
