require "rails_helper"

RSpec.describe AssembleiaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/assembleia").to route_to("assembleia#index")
    end

    it "routes to #new" do
      expect(get: "/assembleia/new").to route_to("assembleia#new")
    end

    it "routes to #show" do
      expect(get: "/assembleia/1").to route_to("assembleia#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/assembleia/1/edit").to route_to("assembleia#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/assembleia").to route_to("assembleia#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/assembleia/1").to route_to("assembleia#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/assembleia/1").to route_to("assembleia#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/assembleia/1").to route_to("assembleia#destroy", id: "1")
    end
  end
end
