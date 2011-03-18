require 'spec_helper'

describe Post do
  before(:each) do
    @post = Post.new(:title => "Title", :body => "Text for body", :publication => Time.now.strftime("%Y-%m-%d %H:%M:%S"), :enabled => 1)
  end
  
  it "should be not created without title" do
    @post.title = nil
    @post.should_not be_valid
  end
  
  it "should be not created without body" do
    @post.body = nil
    @post.should_not be_valid
  end
  
  it 'should be created with all requirements' do
    @post.should be_valid
  end
end
