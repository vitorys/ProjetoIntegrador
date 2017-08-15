require 'rails_helper'

RSpec.describe "atendimentos/new", type: :view do
  before(:each) do
    assign(:atendimento, Atendimento.new(
      :aluno => nil,
      :area => "MyString",
      :funcionario => nil
    ))
  end

  it "renders new atendimento form" do
    render

    assert_select "form[action=?][method=?]", atendimentos_path, "post" do

      assert_select "input#atendimento_aluno_id[name=?]", "atendimento[aluno_id]"

      assert_select "input#atendimento_area[name=?]", "atendimento[area]"

      assert_select "input#atendimento_funcionario_id[name=?]", "atendimento[funcionario_id]"
    end
  end
end
