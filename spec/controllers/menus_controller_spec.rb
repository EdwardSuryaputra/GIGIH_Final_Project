require 'rails_helper'

describe MenusController do

  describe 'GET #show' do
    it "assigns the requested menu to @menu" do
      menu = create(:menu)
      get :show, params: { id: menu }
      expect(assigns(:menu)).to eq menu
    end

    it "renders the :show template" do
      menu = create(:menu)
      get :show, params: { id: menu }
      expect(response).to render_template :show
    end
  end

  
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

  describe 'GET #edit' do
    it "assigns the requested menu to @menu" do
      menu = create(:menu)
      get :edit, params: { id: menu }
      expect(assigns(:menu)).to eq menu
    end

    it "renders the :edit template" do
      menu = create(:menu)
      get :edit, params: { id: menu }
      expect(response).to render_template :edit
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
  end

  describe 'PATCH #update' do
    before :each do
      @menu = create(:menu)
    end

    context "with valid attributes" do
      it "locates the requested @menu" do
        patch :update, params: { id: @menu, menu: attributes_for(:menu) }
        expect(assigns(:menu)).to eq @menu
      end

      it "changes @menu's attributes" do
        patch :update, params: { id: @menu, menu: attributes_for(:menu, item_name: 'Nasi Uduk') }
        @menu.reload
        expect(@menu.item_name).to eq('Nasi Uduk')
      end

      it "redirects to the menu" do
        patch :update, params: { id: @menu, menu: attributes_for(:menu) }
        expect(response).to redirect_to @menu
      end
    end
  end
end