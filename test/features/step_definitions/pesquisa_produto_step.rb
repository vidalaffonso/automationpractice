Dado("que eu acesse a plataforma do ecommerce") do
    home_page.load
    puts "url_default: #{page.current_url}"
  end
  
  Dado("que eu pesquise o produto") do
    
    home_page.busca_produto
   
    
  end
  
  Quando("eu clicar em adicionar ao carrinho") do
    search_store.seleciona_produto
    search_store.checkout
  end
  
  Então("deverá ser apresentado a pagina de para checkout") do
    search_store.criar_usuario
  end