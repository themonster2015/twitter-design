require 'rails_helper'

RSpec.describe Opinion, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:text) }
    it { should_not allow_value(' ').for(:text) }
  end

  describe 'associations' do
    it { should belong_to(:Author).with_foreign_key(:AuthorId).class_name('User') }
    it { should have_many(:likes) }
  end
end
