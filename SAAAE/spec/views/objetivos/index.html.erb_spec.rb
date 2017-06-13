require 'rails_helper'

RSpec.describe "objetivos/index", type: :view do
  before(:each) do
    assign(:objetivos, [
      Objetivo.create!(
        :motivo => "Motivo"
      ),
      Objetivo.create!(
        :motivo => "Motivo"
      )
    ])
  end

  it "renders a list of objetivos" do
    render
    assert_select "tr>td", :text => "Motivo".to_s, :count => 2
  end
end
