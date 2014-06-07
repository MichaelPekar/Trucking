class OrderMailer < ActionMailer::Base
  default from: "Administrator <#{ Admin::MailerSettings.instance.email }>"
  def accept_order(order)
  @order = order
    mail :to => order.email, :subject => "BABYDORYCH-TRANS.COM.UA. Your order is accepted."
  end

end
