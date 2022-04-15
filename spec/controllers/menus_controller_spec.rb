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
      it "saves the new food in the database"
      it "redirects to foods#show"
      it "price is higher than 0.01"
      it "description length is no more than 150 characters"
      it "has at least one category"
    end

    # context "with invalid attributes" do
    #   it "does not save the new food in the database"
    #   it "re-renders the :new template"
    #   it "price is lesser than 0.01"
    #   it "description length is more than 150 characters"
    #   it "doesn/t have any category"
    # end

  end
end