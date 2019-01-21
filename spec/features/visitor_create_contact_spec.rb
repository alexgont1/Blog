require "spec_helper"

#https://github.com/teamcapybara/capybara#using-capybara-with-rspec
feature "Contact Creation" do
	scenario "allows access to contact page" do
		visit '/contacts'

		expect(page).to have_content I18n.t('contacts.contact_us')
	end
end