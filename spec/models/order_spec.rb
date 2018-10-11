require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:toy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:toy) }
    it { should validate_presence_of(:unit_price) }
    it { should validate_presence_of(:quantity) }
  end
end
