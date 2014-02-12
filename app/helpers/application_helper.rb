module ApplicationHelper

  # Generate the html for the menu button
  def menu_item(key, icon, path, current)
    content_tag(:li, :class => current) do 
      link_to(path, :class => key) do
        content_tag(:span, nil, :class => "glyphicon glyphicon-#{icon}") + raw(t("menu.#{key}"))
      end
    end
  end

  # Return "active" class when menu item is active
  def menu_active?(*args)
    if args.include?(controller_name.to_sym) && args.include?(action_name.to_sym)
      "active"
    else
      nil
    end
  end

end
