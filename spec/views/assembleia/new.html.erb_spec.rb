require 'rails_helper'

RSpec.describe "assembleia/new", type: :view do
  before(:each) do
    assign(:assembleium, Assembleium.new(
      Distrito: "MyString",
      Municipio: "MyString",
      nome_presidente: "MyString",
      email: "MyString",
      telefone: "MyString",
      aderiu: false,
      votacao: "MyString",
      observacoes: "MyString"
    ))
  end

  it "renders new assembleium form" do
    render

    assert_select "form[action=?][method=?]", assembleia_path, "post" do

      assert_select "input[name=?]", "assembleium[Distrito]"

      assert_select "input[name=?]", "assembleium[Municipio]"

      assert_select "input[name=?]", "assembleium[nome_presidente]"

      assert_select "input[name=?]", "assembleium[email]"

      assert_select "input[name=?]", "assembleium[telefone]"

      assert_select "input[name=?]", "assembleium[aderiu]"

      assert_select "input[name=?]", "assembleium[votacao]"

      assert_select "input[name=?]", "assembleium[observacoes]"
    end
  end
end
