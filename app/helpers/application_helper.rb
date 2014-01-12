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
    Admin::Collaborator.where(lang: params[:locale])
  end

  def application_languages
    [
        {value: 'en', flag: 'gb', title: t('countries.en') },
        {value: 'de', flag: 'de', title: t('countries.de') },
        {value: 'ru', flag: 'ru', title: t('countries.ru') },
        {value: 'ua', flag: 'ua', title: t('countries.ua') },
        {value: 'sk', flag: 'sk', title: t('countries.sk') },
        {value: 'cz', flag: 'cz', title: t('countries.cz') },
        {value: 'pl', flag: 'pl', title: t('countries.pl') }
    ]
  end

  def locale_select( options )
    render partial: 'layouts/language_select', locals: { id: options[:id], name: options[:name] , locales: options[:locales] }
  end

end
