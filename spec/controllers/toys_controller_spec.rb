require 'rails_helper'

RSpec.describe ToysController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "renders the show template" do
      toy = Toy.create!(name: 'Test', description: 'Test description', price: 5, url_name: 'test')
      get :show, params: { url_name: toy.url_name }
      expect(response).to render_template("show")
    end
  end
end
