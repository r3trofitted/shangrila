class CharacterFormBuilder < ActionView::Helpers::FormBuilder
  def text_field(...)
    @template.content_tag(:div, class: "field-indicators") do
      @template.content_tag(:div, class: "field-border") do
        super(...)
      end
    end
  end
end
