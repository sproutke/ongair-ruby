require "ongair_ruby/version"
require "httparty"

module OngairRuby
  module_function

  def send_message(phone_number, message, thread=true)
  	HTTParty.post(ENV['ONGAIR_URL'], body: {token: ENV['ONGAIR_API_TOKKEN'], phone_number: phone_number, text: message, thread: thread })
  end
end
