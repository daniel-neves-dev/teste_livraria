require 'rails_helper'

RSpec.describe "assemblies_parts/new", type: :view do
  before(:each) do
    assign(:assemblies_part, AssembliesPart.new(
      assembly: nil,
      part: nil
    ))
  end

  it "renders new assemblies_part form" do
    render

    assert_select "form[action=?][method=?]", assemblies_parts_path, "post" do

      assert_select "input[name=?]", "assemblies_part[assembly_id]"

      assert_select "input[name=?]", "assemblies_part[part_id]"
    end
  end
end
