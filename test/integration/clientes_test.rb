require 'test_helper'

class ClientesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  describe 'Clientes' do
    context 'GET /clientes/new' do
        visit new_cliente_path
  
        page.should have_content 'Email'
        page.should have_content 'CPF'
        page.should have_content 'Senha'
        page.should have_content 'Telefone'
        page.should have_content 'Username'
        page.should have_content 'Nome'
        page.has_field? 'email'
        page.has_field? 'cpf'
        page.has_field? 'senha'
        page.has_field? 'telefone'
        page.has_field? 'username'
        page.has_field? 'nome'
        page.has_button? 'Submit'
    end
  end
end
