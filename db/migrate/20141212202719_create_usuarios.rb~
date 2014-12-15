class CreateUsuarios < ActiveRecord::Migration
  def change
	drop_table :usuarios
    create_table :usuarios do |t|
      t.text :id_usuario
      t.text :nombre
      t.integer :contador_seguidores
      t.text :descripcion
      t.text :nick

      t.timestamps
    end
  end
end
