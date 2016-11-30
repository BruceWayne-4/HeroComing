module BackendHelper

  def li_names(name)
    case name
    when 'home'
      %w( home )
    when 'customers'
      %w( users heros )
    when 'orders'
      %w( orders )
    when 'admins'
      %w( admins )
    end
  end

  def backend_li_active(li_names, li_name)
    li_names.include?(li_name) ? 'active' : ''
  end
end
