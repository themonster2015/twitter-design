require 'rails_helper'

RSpec.feature "Folllowings", type: :feature do
  before :each do
    @user = User.create(Fullname: 'Tester1', Username: 'Tester1')
    @user = User.create(Fullname: 'Tester2', Username: 'Tester2')
  end
  it 'Should be able to follow a user' do
    visit login_path
    fill_in 'Username', with: 'Tester1'
    click_button 'Log In'
    click_on 'Tester2'
    first(:css, ".follow-button").click
    expect(page).to have_content('HOME')
  end

  it 'Should be able to unfollow a user' do
    visit login_path
    fill_in 'Username', with: 'Tester1'
    click_button 'Log In'
    click_on 'Tester2'
    first(:css, ".follow-button").click
    first(:css, ".unfollow-button").click
    expect(page).to have_content('HOME')
  end
end
