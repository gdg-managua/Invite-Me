class Visitor
  include ActiveModel::Model
  attr_accessor :email, :string
  attr_accessor :f_name, :string
  attr_accessor :l_name, :string
  validates_presence_of :email
  #validates_presence_of :name
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  def subscribe
    # mailchimp = Gibbon::API.new(Rails.application.secrets.mailchimp_api_key)
    # gibbon busca la var automaticamente
    mailchimp = Gibbon::API.new
    result = mailchimp.lists.subscribe({
      :id => Rails.application.secrets.MAILCHIMP_LIST_ID,
      :email => {:email => self.email},
      :merge_vars => {
        'FNAME' => f_name,
        'LNAME' => l_name
      },
      :double_optin => false,
      :update_existing => true,
      :send_welcome => true
    })
    Rails.logger.info("Gracias #{self.email} por Suscribirte") if result
  end

end
