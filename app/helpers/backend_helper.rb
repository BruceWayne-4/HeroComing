module BackendHelper
  def navbar_class(li_name)
    controller_name.include?(li_name) ? 'active' : ''
  end
end
