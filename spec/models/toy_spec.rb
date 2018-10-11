require 'rails_helper'

RSpec.describe Toy, type: :model do
  describe 'relations' do
    it { is_expected.to have_many(:orders) }
  end

  describe 'validations' do
    it { should validate_uniqueness_of(:url_name) }
    it { should validate_presence_of(:url_name) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:description) }
  end
end
