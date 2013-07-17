require 'spec_helper'

describe 'User', :js => true do
    let!(:user) { User.create :email => "test@example.com", :password => "secret" }
    let!(:post) { Post.create :title => "Fuck you rails",:content => "asdasd"}

  context "on homepage" do
    # it "sees a list of recent posts titles" do
    #   expect(page).to have_content(post.title)
    #       visit root_path
    # end
    # it "can not see bodies of the recent posts" do
    #   visit posts_path
    #   expect(page).to have_content(post.content)
    # end
    # it "can click on titles of recent posts and should be on the post show page" do
    #   visit root_path
    #   within(".recent_posts") do
    #   click_on(post.title)
    # end
    end
    it "can not see the edit link" do
      visit root_path
      expect(page).to have_no_link()
    end

    end
    # it "can not see the delete link" do
    #   pending
    #   # given a user and a list of posts
    #   # user visits the homepage
    #   # user should not see any delete links
    # end
  end

  # context "post show page" do
  #   it "sees title and body of the post" do
  #     pending
  #     # given a user and post(s)
  #     # user visits the post show page
  #     # user should see the post title
  #     # user should see the post body
  #   end
  #   it "can not see the edit link" do
  #     pending
  #     # given a user and post(s)
  #     # user visits the post show page
  #     # user should not see the post edit link
  #   end
  #   it "can not see the published flag" do
  #     pending
  #     # given a user and post(s)
  #     # user visits the post show page
  #     # user should not see the published flag content
  #   end
  #   it "can not see the Admin homepage link" do
  #     pending
  #     # given a user and post(s)
  #     # user visits the post show page
  #     # user should not see the the admin homepage link
  #   end
  # end
end
