require "spec_helper"

describe ScoreSheetsController do
  describe "routing" do

    it "routes to #index" do
      get("/score_sheets").should route_to("score_sheets#index")
    end

    it "routes to #new" do
      get("/score_sheets/new").should route_to("score_sheets#new")
    end

    it "routes to #show" do
      get("/score_sheets/1").should route_to("score_sheets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/score_sheets/1/edit").should route_to("score_sheets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/score_sheets").should route_to("score_sheets#create")
    end

    it "routes to #update" do
      put("/score_sheets/1").should route_to("score_sheets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/score_sheets/1").should route_to("score_sheets#destroy", :id => "1")
    end

  end
end
