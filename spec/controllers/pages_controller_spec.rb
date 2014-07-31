require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to be_success
    end
  end

  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to be_success
    end
  end

  describe "GET faqs" do
    it "returns http success" do
      get :faqs
      expect(response).to be_success
    end
  end

  describe "GET support" do
    it "returns http success" do
      get :support
      expect(response).to be_success
    end
  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to be_success
    end
  end

  describe "GET privacy" do
    it "returns http success" do
      get :privacy
      expect(response).to be_success
    end
  end

  describe "GET terms" do
    it "returns http success" do
      get :terms
      expect(response).to be_success
    end
  end

end
