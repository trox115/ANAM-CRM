require 'rails_helper'

RSpec.describe "assembleia/index", type: :view do
  before(:each) do
    assign(:assembleia, [
      Assembleium.create!(
        Distrito: "Distrito",
        Municipio: "Municipio",
        nome_presidente: "Nome Presidente",
        email: "Email",
        telefone: "Telefone",
        aderiu: false,
        votacao: "Votacao",
        observacoes: "Observacoes"
      ),
      Assembleium.create!(
        Distrito: "Distrito",
        Municipio: "Municipio",
        nome_presidente: "Nome Presidente",
        email: "Email",
        telefone: "Telefone",
        aderiu: false,
        votacao: "Votacao",
        observacoes: "Observacoes"
      )
    ])
  end

  it "renders a list of assembleia" do
    render
    assert_select "tr>td", text: "Distrito".to_s, count: 2
    assert_select "tr>td", text: "Municipio".to_s, count: 2
    assert_select "tr>td", text: "Nome Presidente".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Telefone".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Votacao".to_s, count: 2
    assert_select "tr>td", text: "Observacoes".to_s, count: 2
  end
end
