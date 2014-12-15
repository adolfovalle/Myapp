class CreatePalabras < ActiveRecord::Migration
  def change
    create_table :palabras do |t|
      t.text :palabrac
      t.text :intencionp

      t.timestamps
    end
  end
end
