module ApplicationHelper
  def base_title
    Rails.application.class.parent_name.underscore.titleize
  end

  # Rails, Devise: notice, alert
  # Bootstrap: success, info, warning, danger
  def flash_classlist(type)
    bs = %w[success info warning danger]
    type = :danger  if alert
    type = :success if notice
    type = :success if bs.include? type
    "alert alert-#{type}"
  end
end
