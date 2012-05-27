module Spree
  class Gateway::PaymentExpress < Gateway
    preference :login, :string
    preference :password, :string
    
    attr_accessible :preferred_login, :preferred_password
    
    def provider_class
      ActiveMerchant::Billing::PaymentExpressGateway
    end
  end
end