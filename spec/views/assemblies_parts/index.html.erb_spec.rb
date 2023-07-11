require 'rails_helper'

RSpec.describe "assemblies_parts/index", type: :view do
  before(:each) do
    assign(:assemblies_parts, [
      AssembliesPart.create!(
        assembly: nil,
        part: nil
      ),
      AssembliesPart.create!(
        assembly: nil,
        part: nil
      )
    ])
  end

  it "renders a list of assemblies_parts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
