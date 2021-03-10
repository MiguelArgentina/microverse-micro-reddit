require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.first
    @post = @user.posts.build(title: 'Lorem ipsum', body: 'Lorem ipsum Lorem ipsum Lorem ipsum')
  end

  test 'should be valid' do
    assert @post.valid?
  end

  test 'user id should be present' do
    @post.user_id = nil
    assert_not @post.valid?
  end

  test 'title should be present' do
    @post.title = ' '
    assert_not @post.valid?
  end

  test 'title should be at least 2 characters' do
    @post.title = 'a'
    assert_not @post.valid?
  end

  test 'title should be at most 50 characters' do
    @post.title = 'a' * 51
    assert_not @post.valid?
  end

  test 'body should be present' do
    @post.body = ' '
    assert_not @post.valid?
  end

  test 'body should be at least 2 characters' do
    @post.body = 'a'
    assert_not @post.valid?
  end

  test 'body should be at most 200 characters' do
    @post.body = 'a' * 201
    assert_not @post.valid?
  end
end
