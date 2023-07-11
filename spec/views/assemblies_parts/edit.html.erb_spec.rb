require 'rails_helper'

RSpec.describe "assemblies_parts/edit", type: :view do
  let(:assemblies_part) {
    AssembliesPart.create!(
      assembly: nil,
      part: nil
    )
  }

  before(:each) do
    assign(:assemblies_part, assemblies_part)
  end

  it "renders the edit assemblies_part form" do
    render

    assert_select "form[action=?][method=?]", assemblies_part_path(assemblies_part), "post" do

      assert_select "input[name=?]", "assemblies_part[assembly_id]"

      assert_select "input[name=?]", "assemblies_part[part_id]"
    end
  end
end
