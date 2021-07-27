require 'rails_helper'

RSpec.feature 'Likes', type: :feature do
  before :each do
    @user = User.create(Fullname: 'Tester1', Username: 'Tester1')
  end

  it 'Should like a post' do
    visit root_path
    fill_in 'Username', with: 'Tester1'
    click_button 'Log In'
    fill_in 'opinion[text]', with: 'This is my first tweet'
    click_button 'Tweet'
    first(:css, '.like-1').click
    expect(page).to have_content('1 like')
  end

  it 'Should unlike a post' do
    visit root_path
    fill_in 'Username', with: 'Tester1'
    click_button 'Log In'
    fill_in 'opinion[text]', with: 'This is my first tweet'
    click_button 'Tweet'
    first(:css, '.like-1').click
    first(:css, '.unlike').click
    expect(page).to_not have_content('1 like')
  end
end
