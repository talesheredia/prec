class CreatePrecatorios < ActiveRecord::Migration
  def change
    create_table :precatorios do |t|
      t.string :expediente
      t.integer :numero
      t.datetime :data_apresentacao
      t.string :processo_administrativo
      t.string :processo_primeiro_grau
      t.string :origem
      t.string :pagador
      t.string :credor
      t.string :advogado
      t.string :objeto
      t.string :ano
      t.string :situacao_atual
      t.string :localizacao
      t.string :tribunal_origem
      t.integer :posicao_crescente
      t.integer :posicao_cronologica
      t.timestamps null: false
    end
  end
end
