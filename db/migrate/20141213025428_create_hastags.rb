class CreateHastags < ActiveRecord::Migration
  def change
    create_table :hastags do |t|
      t.text :id_hastag
      t.text :etiqueta
      t.text :intencion

      t.timestamps
    end
  end
end
