require 'rails_helper'

RSpec.describe "objetivos/edit", type: :view do
  before(:each) do
    @objetivo = assign(:objetivo, Objetivo.create!(
      :motivo => "MyString"
    ))
  end

  it "renders the edit objetivo form" do
    render

    assert_select "form[action=?][method=?]", objetivo_path(@objetivo), "post" do

      assert_select "input#objetivo_motivo[name=?]", "objetivo[motivo]"
    end
  end
end
