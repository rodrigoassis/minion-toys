require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  describe "POST create" do
    it "creates a new order" do
      toy = Toy.create!(name: 'Test', description: 'Test description', price: 5, url_name: 'test')
      user = User.create!(name: 'Test', email: 'test@test.com', password: 'test123')
      sign_in user

      post :create, params: { order: { toy_id: toy.id } }
      expect(response).to redirect_to(root_path)
    end
  end
end
