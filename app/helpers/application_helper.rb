module ApplicationHelper
  require 'html_truncator'

  def resource_name
    :person
  end

  def resource
    @resource ||= Person.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:person]
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
    link_to title, { sort: column, direction: direction }, class: css_class
  end

  def errors_for(object)
    if object.errors.any?
      content_tag(:div, class: 'panel panel-danger') do
        concat(content_tag(:div, class: 'panel-heading') do
          concat(content_tag(:h4, class: 'panel-title') do
                   concat "Zapis danych nie powiódł się. Wystąpiły błędy:"
                 end)
        end)
        concat(content_tag(:div, class: 'panel-body') do
          concat(content_tag(:ul) do
            object.errors.full_messages.each do |msg|
              concat content_tag(:li, msg)
            end
          end)
        end)
      end
    end
end
end
