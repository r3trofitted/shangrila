class CharacterFormBuilder < ActionView::Helpers::FormBuilder
  def text_field(...)
    @template.content_tag(:div, class: "field-indicators") do
      @template.content_tag(:div, class: "field-border") do
        super(...)
      end
    end
  end
  
  def options_table(attribute, collection = options_collection_for_attribute(attribute))
    @template.render "options_table", f: self, attr: attribute, collection: collection
  end
  
  def wrapper_field_id(attr)
    field_id(attr) + "_field"
  end
  
  private
  
  def options_collection_for_attribute(attribute)
    klass = object.class
    
    begin
      klass.const_get(attribute.to_s.pluralize.upcase)
    rescue NameError
      raise ArgumentError, "count not find collection for attribute #{attribute} in #{klass}"
    end
  end
end
