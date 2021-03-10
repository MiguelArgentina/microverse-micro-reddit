require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: 'Miguel', nickname: 'Argentino')
  end

  test 'name and nickname should be valid' do
    assert @user.valid?
  end

  test 'name and nickname should be present' do
    @user.name = '    '
    assert_not @user.valid?
  end

  test 'nickname is not duplicate' do
    duplicate_nickname = @user.dup
    @user.save
    assert_not duplicate_nickname.valid?
  end
end
