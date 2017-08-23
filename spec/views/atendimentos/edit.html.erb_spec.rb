require 'rails_helper'

RSpec.describe "atendimentos/edit", type: :view do
  before(:each) do
    @atendimento = assign(:atendimento, Atendimento.create!(
      :aluno => nil,
      :area => "MyString",
      :funcionario => nil
    ))
  end

  it "renders the edit atendimento form" do
    render

    assert_select "form[action=?][method=?]", atendimento_path(@atendimento), "post" do

      assert_select "input#atendimento_aluno_id[name=?]", "atendimento[aluno_id]"

      assert_select "input#atendimento_area[name=?]", "atendimento[area]"

      assert_select "input#atendimento_funcionario_id[name=?]", "atendimento[funcionario_id]"
    end
  end
end
