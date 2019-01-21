require "spec_helper"

feature "Article Creation" do
	before(:all) do #before all tests - 1 time
		sign_up
	end

	#work without addition file 'database_cleaner.rb'
	# after(:all) do #clean DB that blocked by 'before(:all)'
	# 	DatabaseCleaner.clean_with(:truncation)
	# end

	scenario "allows user to visit new article page" do
		visit new_article_path
		expect(page).to have_content 'New article'#add I18n later
	end

end