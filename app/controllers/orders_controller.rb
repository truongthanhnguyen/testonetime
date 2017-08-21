class OrdersController < ApplicationController
require "amazon_pay"

  def create
    merchant_id = "A3QCQLYZKBHFRS"
    access_key = "AordersFPDNE5WCULPAQ"
    secret_key = "D+nDDFrrM1a19+T7arXuUBENbZOqw2a2saXniyFk"

    client = PayWithAmazon::Client.new(
      merchant_id,
      access_key,
      secret_key,
      sandbox: true,
      currency_code: :usd,
      region: :na
      )

    amazon_order_reference_id = "AMAZON_ORDER_REFERENCE_ID"
    address_consent_token = "ADDRESS_CONSENT_TOKEN"

    client.get_order_reference_details(
      amazon_order_reference_id,
      address_consent_token: address_consent_token,
      mws_auth_token: "amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE"
      )	
  end
end
