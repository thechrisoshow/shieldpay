require "shieldpay/configuration"
require "shieldpay/errors"
require "shieldpay/request"
require "shieldpay/version"

require "shieldpay/company"
require "shieldpay/customer"
require "shieldpay/payment_request"

module ShieldPay
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
