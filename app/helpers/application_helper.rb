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

  def application_languages
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

  def locale_select( options )
    render partial: 'layouts/language_select', locals: { id: options[:id], name: options[:name] , locales: options[:locales] }
  end

end
