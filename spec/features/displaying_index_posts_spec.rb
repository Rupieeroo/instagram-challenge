require 'rails_helper.rb'

feature 'Displaying Index Posts' do
  scenario 'the index displays a list of posts' do
    post_one = create(:post, caption: "This is post one")
    post_two = create(:post, caption: "This is the second post")

    visit '/posts'
    expect(page).to have_content("This is post one")
    expect(page).to have_content("This is the second post")
    expect(page).to have_css("img[src*='coffee']")
  end
end
