require 'rails_helper'

RSpec.describe "assembleia/show", type: :view do
  before(:each) do
    @assembleium = assign(:assembleium, Assembleium.create!(
      Distrito: "Distrito",
      Municipio: "Municipio",
      nome_presidente: "Nome Presidente",
      email: "Email",
      telefone: "Telefone",
      aderiu: false,
      votacao: "Votacao",
      observacoes: "Observacoes"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Distrito/)
    expect(rendered).to match(/Municipio/)
    expect(rendered).to match(/Nome Presidente/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Votacao/)
    expect(rendered).to match(/Observacoes/)
  end
end
