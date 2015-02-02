Spree::Product.class_eval do
  belongs_to :nfe_product_source, class_name: 'Spree::NfeProductSource'
end