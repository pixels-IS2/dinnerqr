require 'test_helper'

class MissYouMailerTest < ActionMailer::TestCase
  test "confirm mensage" do
  		client= Client.new(:email => 'qqq@qqq.qqq' )
		email = MissYouMailer.happy_form(client.email).deliver_now
		assert_not ActionMailer::Base.deliveries.empty?
		assert_equal ["dinnerqr@gmail.com"], email.from
		assert_equal [client.email], email.to
		assert_equal "Gracias por tu visita", email.subject 
	end 
end
