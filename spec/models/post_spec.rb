require 'spec_helper'

describe Post do
  it "title should be automatically titleized before save" do
    post = Post.create(:title => "capitalize", :content => "Bacon Ipsum")
    expect(post.title).to eq("Capitalize")
  end

  it "post should be unpublished by default" do
    post = Post.create(:title => "capitalize", :content => "Bacon Ipsum")
    expect(post.is_published?).to eq(false)
  end

  it "slug should be automatically generated" do
    post = Post.new
    post.title   = "New post!"
    post.content = "A great story"
    post.slug.should be_nil
    post.save

    post.slug.should eq "new-post"
  end
end
