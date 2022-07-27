Dado('que eu acesso a página principal') do
   visit 'http:carrefour.com/'
  end
  
  Quando('eu faço login com {string} e {string}') do |email, senha|
    @email= email
    login = LoginPage.new
    login.faz_login(email,senha)
end    
  
  Entao('devo ser autenticado com sucesso') do
    expect(page).to have_content @email
end
  
  Entao('devo ver a seguinte mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
  end

  