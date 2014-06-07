class Admin::MailerSettingsController < Admin::AdminController
  def index
    @mailer_settings = Admin::MailerSettings.instance
  end

  def update
    @mailer_settings = Admin::MailerSettings.instance
    @mailer_settings.update_attributes(params[:admin_mailer_settings])
    redirect_to :back
  end
end
