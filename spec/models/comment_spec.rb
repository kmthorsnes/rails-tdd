require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.build(:comment)).to be_valid
    end
  end
  it { is_expected.to have_db_column :id }
  it { is_expected.to have_db_column :title }
  it { is_expected.to have_db_column :content }
  it { is_expected.to belong_to :article }
end

