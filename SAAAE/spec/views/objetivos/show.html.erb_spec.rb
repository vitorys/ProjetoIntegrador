require 'rails_helper'

RSpec.describe "objetivos/show", type: :view do
  before(:each) do
    @objetivo = assign(:objetivo, Objetivo.create!(
      :motivo => "Motivo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Motivo/)
  end
end
