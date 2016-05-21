require "rails_helper"

RSpec.describe PotentialUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/potential_users").to route_to("potential_users#index")
    end

    # it "routes to #new" do
    #   expect(:get => "/potential_users/new").to route_to("potential_users#new")
    # end

    it "routes to #show" do
      expect(:get => "/potential_users/1").to route_to("potential_users#show", :id => "1")
    end

    # it "routes to #edit" do
    #   expect(:get => "/potential_users/1/edit").to route_to("potential_users#edit", :id => "1")
    # end

    it "routes to #create" do
      expect(:post => "/potential_users").to route_to("potential_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/potential_users/1").to route_to("potential_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/potential_users/1").to route_to("potential_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/potential_users/1").to route_to("potential_users#destroy", :id => "1")
    end

  end
end
