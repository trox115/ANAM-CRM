class CreateAssembleia < ActiveRecord::Migration[6.0]
  def change
    create_table :assembleia do |t|
      t.string :Distrito
      t.string :Municipio
      t.string :nome_presidente
      t.string :email
      t.string :telefone
      t.boolean :aderiu
      t.date :data
      t.string :votacao
      t.string :observacoes

      t.timestamps
    end
  end
end
