require 'rails_helper'

RSpec.describe "objetivos/new", type: :view do
  before(:each) do
    assign(:objetivo, Objetivo.new(
      :motivo => "MyString"
    ))
  end

  it "renders new objetivo form" do
    render

    assert_select "form[action=?][method=?]", objetivos_path, "post" do

      assert_select "input#objetivo_motivo[name=?]", "objetivo[motivo]"
    end
  end
end
