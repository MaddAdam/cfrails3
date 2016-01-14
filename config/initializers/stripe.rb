if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_gbTTVIAFLZNP3x7XaGFteUp1',
    :secret_key => 'sk_test_BRkZjguVp0K5WP2yehhSvKBK'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
