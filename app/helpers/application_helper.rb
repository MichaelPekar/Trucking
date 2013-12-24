module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def collaborators_list
    Admin::Collaborator.all
  end

  def locales
    [
        {value: 'en', flag: 'gb', title: 'Great Britain (UK)'},
        {value: 'de', flag: 'de', title: 'Germany'},
        {value: 'ru', flag: 'ru', title: 'Russian Federation'},
        {value: 'ua', flag: 'ua', title: 'Ukraine'},
        {value: 'sk', flag: 'sk', title: 'Slovakia'},
        {value: 'cz', flag: 'cz', title: 'Czech Republic '},
        {value: 'pl', flag: 'pl', title: 'Poland '}
    ]
  end
end
