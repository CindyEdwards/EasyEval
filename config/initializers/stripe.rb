Stripe.api_key = "sk_test_9apNfxhlmFafG3XVt2Kc0CmR"

STRIPE_PUBLIC_KEY = "pk_test_Qe9EmkEmIvylZdQd1rWAWGsX"



#http://stackoverflow.com/questions/12755867/rails-constant-not-initializing

#if Rails.env == 'production'
#  Stripe.api_key:    "productionapikeycode"
#  STRIPE_PUBLIC_KEY: "productionpublickeycode"
#else
#  Stripe.api_key:    "tesapikeycode"
#  STRIPE_PUBLIC_KEY: "testpublickeycode"     
#end 


StripeEvent.setup do
  
	subscribe 'customer.subscription.deleted' do |event|
    
		user = User.find_by_customer_id(event.data.object.customer)
    
		user.expire
  
		end

end