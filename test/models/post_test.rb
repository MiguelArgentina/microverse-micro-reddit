require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.first
    @post = @user.posts.build(title: 'Lorem ipsum', body: 'Lorem ipsum Lorem ipsum Lorem ipsum')
  end

  test 'should be valid' do
    assert @post.valid?
  end
end
