class OrderMailer < ActionMailer::Base
  default from: "Administrator <#{ Admin::MailerSettings.instance.email }>"
  def accept_order(order)
  @order = order
    attachments.inline['logo.png'] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail :to => order.email, :subject => "BABYDORYCH-TRANS.COM.UA. Your order is accepted."
  end

end
