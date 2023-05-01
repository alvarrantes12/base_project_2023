require "rails_helper"

RSpec.describe PatienesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/patienes").to route_to("patienes#index")
    end

    it "routes to #new" do
      expect(get: "/patienes/new").to route_to("patienes#new")
    end

    it "routes to #show" do
      expect(get: "/patienes/1").to route_to("patienes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/patienes/1/edit").to route_to("patienes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/patienes").to route_to("patienes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/patienes/1").to route_to("patienes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/patienes/1").to route_to("patienes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/patienes/1").to route_to("patienes#destroy", id: "1")
    end
  end
end
