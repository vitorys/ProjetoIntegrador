require 'rails_helper'

RSpec.describe "atendimentos/index", type: :view do
  before(:each) do
    assign(:atendimentos, [
      Atendimento.create!(
        :aluno => nil,
        :area => "Area",
        :funcionario => nil
      ),
      Atendimento.create!(
        :aluno => nil,
        :area => "Area",
        :funcionario => nil
      )
    ])
  end

  it "renders a list of atendimentos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
