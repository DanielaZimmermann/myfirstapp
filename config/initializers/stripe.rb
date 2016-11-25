if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_mbyofnCXKNa51jqpRl6dleT4',
    :secret_key => 'sk_test_4R1GsgCxCCz5TgLfNssxFDql'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]