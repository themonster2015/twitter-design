require 'rails_helper'

RSpec.feature 'Opinions', type: :feature do
  before :each do
    @user = User.create(Fullname: 'Tester1', Username: 'Tester1')
    Opinion.create(AuthorId: @user.id, text: 'my first tweet')
  end

  it 'Should create an opinion' do
    visit root_path
    fill_in 'Username', with: 'Tester1'
    click_button 'Log In'
    fill_in 'opinion[text]', with: 'This is my first tweet'
    click_button 'Tweet'
    expect(page).to have_content('HOME')
  end
end
