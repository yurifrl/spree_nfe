class CreateNfeProductSourceTable < ActiveRecord::Migration
  def up
    unless table_exists? :spree_nfe_product_sources
      create_table :spree_nfe_product_sources do |t|
        t.string :source
        t.string :description
        t.timestamps
      end
    end
    [{source: 'Nacional', description: 'exceto as indicadas nos códigos 3 a 5'},
     {source: 'Estrangeira', description: 'Importação direta, exceto a indicada no código 6'},
     {source: 'Estrangeira', description: 'Adquirida no mercado interno, exceto a indicação no código 7'},
     {source: 'Nacional', description: 'Mercadoria ou bem com conteúdo de importação superior a 40%'},
     {source: 'Nacional', description: 'Cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes'},
     {source: 'Nacional', description: 'Mercadoria ou bem com conteúdo de importação inferior ou igual a 40%'},
     {source: 'Estrangeira', description: 'Importação direta sem similar nacional, constante em lista da CAMEX'},
     {source: 'Estrangeira', description: 'Adquirida no mercado interno, sem similar nacional, constante em lista da CAMEX'}]
        .each do |e|
      Spree::NfeProductSource.where(e).first_or_create
    end
  end

  def down
    if table_exists? :spree_nfe_product_sources
      drop_table :spree_nfe_product_sources
    end
  end
end