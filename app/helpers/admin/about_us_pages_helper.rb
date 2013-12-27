module Admin::AboutUsPagesHelper

  def available_about_us_languages
    application_languages.select{ |l| Admin::AboutUsPage.where(lang: l[:value]).count == 0}
  end

end
