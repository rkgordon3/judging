require "spec_helper"

describe JudgesController do
  describe "routing" do

    it "routes to #index" do
      get("/judges").should route_to("judges#index")
    end

    it "routes to #new" do
      get("/judges/new").should route_to("judges#new")
    end

    it "routes to #show" do
      get("/judges/1").should route_to("judges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/judges/1/edit").should route_to("judges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/judges").should route_to("judges#create")
    end

    it "routes to #update" do
      put("/judges/1").should route_to("judges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/judges/1").should route_to("judges#destroy", :id => "1")
    end

  end
end
