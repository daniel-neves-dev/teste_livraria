require 'rails_helper'

RSpec.describe "assemblies_parts/show", type: :view do
  before(:each) do
    assign(:assemblies_part, AssembliesPart.create!(
      assembly: nil,
      part: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
