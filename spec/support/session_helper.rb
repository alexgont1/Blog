def sign_up
	visit new_user_registration_path #from routes

	fill_in :user_email, :with  => 'user123@example.com'
	fill_in :user_username, :with  => 'mike'
	fill_in :user_password, :with  => 'pass1234'
	fill_in :user_password_confirmation, :with  => 'pass1234'

	click_button 'Sign up'
end