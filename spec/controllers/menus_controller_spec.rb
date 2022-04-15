require 'rails_helper'

describe MenusController do
  describe 'GET #new' do
    it "assigns a new Menu to @menu" do
      get :new
      expect(assigns(:menu)).to be_a_new(Menu)
    end

    it "renders the :new template" do
      get :new
      expect(:response).to render_template :new
    end
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new menu in the database" do
        expect{
          post :create, params: { menu: attributes_for(:menu) }
        }.to change(Menu, :count).by(1)
      end

      it "redirects to menus#show" do
        post :create, params: { menu: attributes_for(:menu) }
        expect(response).to redirect_to(menu_path(assigns[:menu]))
      end
    end

    # context "with invalid attributes" do
    #   it "does not save the new food in the database"
    #   it "re-renders the :new template"
    # end

  end
end