require "spec_helper"

describe Article do
	describe "validations" do
		it { should validate_presence_of :title }
		it { should validate_presence_of :text }
	end

	describe "assosiations" do
		it { should have_many :comments }
	end

	describe "#subject" do
		it "returns the article title" do
			#create article
			article = create(:article, title: 'Test article')

			#assert (check)
			expect(article.subject).to eq 'Test article'
		end
	end

	describe "#last_comment" do
		it "returns the last comment" do
			article = create(:article_with_comments)

			#check
			expect(article.last_comment.body).to eq "comment body 3"
		end
	end
end
