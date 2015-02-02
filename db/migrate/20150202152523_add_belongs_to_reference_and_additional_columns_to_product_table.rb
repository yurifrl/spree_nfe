class AddBelongsToReferenceAndAdditionalColumnsToProductTable < ActiveRecord::Migration
  def up
    unless column_exists? :spree_products, :nfe_product_source_id
      add_column :spree_products, :nfe_product_source_id, :integer
    end
    unless column_exists? :spree_products, :nfe_product_id
      add_column :spree_products, :nfe_code, :string
    end
    unless column_exists? :spree_products, :nfe_tax_replacement
      add_column :spree_products, :nfe_tax_replacement, :boolean
    end
  end

  def down
    if column_exists? :spree_products, :nfe_product_source_id
      remove_column :spree_products, :nfe_product_source_id
    end
    if column_exists? :spree_products, :nfe_product_id
      remove_column :spree_products, :nfe_code
    end
    if column_exists? :spree_products, :nfe_tax_replacement
      remove_column :spree_products, :nfe_tax_replacement
    end
  end
end