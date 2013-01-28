class Product < ActiveRecord::Base
  attr_accessible :name, :price, :product_type_id, :properties
  belongs_to :product_type
  serialize :properties, Hash
  
  validate :validate_properties
  
  def validate_properties
    product_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end
end
