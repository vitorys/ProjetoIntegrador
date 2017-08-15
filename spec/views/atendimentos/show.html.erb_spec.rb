require 'rails_helper'

RSpec.describe "atendimentos/show", type: :view do
  before(:each) do
    @atendimento = assign(:atendimento, Atendimento.create!(
      :aluno => nil,
      :area => "Area",
      :funcionario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(//)
  end
end
