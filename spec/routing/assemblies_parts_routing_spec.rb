require "rails_helper"

RSpec.describe AssembliesPartsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/assemblies_parts").to route_to("assemblies_parts#index")
    end

    it "routes to #new" do
      expect(get: "/assemblies_parts/new").to route_to("assemblies_parts#new")
    end

    it "routes to #show" do
      expect(get: "/assemblies_parts/1").to route_to("assemblies_parts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/assemblies_parts/1/edit").to route_to("assemblies_parts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/assemblies_parts").to route_to("assemblies_parts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/assemblies_parts/1").to route_to("assemblies_parts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/assemblies_parts/1").to route_to("assemblies_parts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/assemblies_parts/1").to route_to("assemblies_parts#destroy", id: "1")
    end
  end
end
