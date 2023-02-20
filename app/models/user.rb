class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  
  # pay_customer(
  #   default_payment_processor: :stripe,
  #   stripe_attributes: :stripe_attributes
  # )

  # def stripe_attributes(pay_customer)
  #   attrs = {
  #     metadata: {
  #       pay_customer_id: pay_customer.id,
  #       user_id: id # or pay_customer.owner_id
  #     }
  #   }
  #   if Rails.env.development?
  #     attrs[:test_clock] = Stripe::TestHelpers::TestClock.create(
  #       frozen_time: Time.now.to_i
  #     )
  #   end
  #   attrs       

end
