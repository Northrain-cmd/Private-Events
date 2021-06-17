module ApplicationHelper
  def flash_class(type)
    dict = {
      'notice' => 'alert-info',
      'error' => 'alert-danger',
      'alert' => 'alert-warning',
      'success' => 'alert-success',
      'warn' => 'alert-warning'
    }
    dict[type]
  end
end
