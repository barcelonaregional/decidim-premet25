# frozen_string_literal: true

Decidim.configure do |config|
  config.application_name = "Participa Premet25"
  config.mailer_sender = "Avisos Participa Premet25 <noreply@participa.premet25.cat>"

  # Change these lines to set your preferred locales
  config.default_locale = :ca
  config.available_locales = [:ca, :es]

  # Geocoder configuration
  config.maps = {
    provider: :here,
    api_key: Rails.application.secrets.maps[:here_api_key],
    static: { url: "https://image.maps.ls.hereapi.com/mia/1.6/mapview" }
  }

  config.maximum_attachment_size = 20.megabytes

  # Custom resource reference generator method
  # config.reference_generator = lambda do |resource, component|
  #   # Implement your custom method to generate resources references
  #   "1234-#{resource.id}"
  # end

  # Currency unit
  # config.currency_unit = "€"

  # The number of reports which an object can receive before hiding it
  # config.max_reports_before_hiding = 3

  # Custom HTML Header snippets
  #
  # The most common use is to integrate third-party services that require some
  # extra JavaScript or CSS. Also, you can use it to add extra meta tags to the
  # HTML. Note that this will only be rendered in public pages, not in the admin
  # section.
  #
  # Before enabling this you should ensure that any tracking that might be done
  # is in accordance with the rules and regulations that apply to your
  # environment and usage scenarios. This component also comes with the risk
  # that an organization's administrator injects malicious scripts to spy on or
  # take over user accounts.
  #
  config.enable_html_header_snippets = false

  # SMS gateway configuration
  #
  # If you want to verify your users by sending a verification code via
  # SMS you need to provide a SMS gateway service class.
  #
  # An example class would be something like:
  #
  # class MySMSGatewayService
  #   attr_reader :mobile_phone_number, :code
  #
  #   def initialize(mobile_phone_number, code)
  #     @mobile_phone_number = mobile_phone_number
  #     @code = code
  #   end
  #
  #   def deliver_code
  #     # Actual code to deliver the code
  #     true
  #   end
  # end
  #
  # config.sms_gateway_service = "MySMSGatewayService"

  # Etherpad configuration
  #
  # Only needed if you want to have Etherpad integration with Decidim. See
  # Decidim docs at docs/services/etherpad.md in order to set it up.
  #
  # config.etherpad = {
  #   server: Rails.application.secrets.etherpad[:server],
  #   api_key: Rails.application.secrets.etherpad[:api_key],
  #   api_version: Rails.application.secrets.etherpad[:api_version]
  # }
end

Rails.application.config.i18n.available_locales = Decidim.available_locales
Rails.application.config.i18n.default_locale = Decidim.default_locale
