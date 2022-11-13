#hash de mensagens para o usuário
mensagens = { "home" => ["Selecione a opção desejada: ", "[1] Comprar","[2] Sair"], 
    "menu_produtos" => ["Selecione a opção desejada: ", "[1]Mouse Gamer: R$200,00","[2]Headset Dragon Force: R$400,00","[3]Teclado: R$100,00","[4]Processador AMD Ryzen: R$700,00"],
    "qtd" => "Digite a quantidade desejada:__",
    "voltar" => "Digite 0 para voltar ao menu inicial"}
 
def tchau
    puts "Obrigado pela preferência e volte sempre!"
end
    
#hash de produtos
produtos = { "mouse_gamer" => 200.00, "headset_dragon_force" => 400.00, "teclado" => 100.00, "processador_amd_rayzen" => 700.00 }

#variável do subtotal
subtotal = 0.00

#Início do programa
puts mensagens['home']
opcao = gets.chomp.to_i


#Laço de repetição para fazer a compra
while opcao == 1
puts mensagens['menu_produtos']
opcao = gets.chomp.to_i

case opcao
when 1    
puts mensagens['qtd']
qtd = gets.chomp.to_i
subtotal += produtos['mouse_gamer'] * qtd

puts "Subtotal: R$#{subtotal}"
puts mensagens['voltar']
opcao = gets.chomp.to_i

  #condicional para voltar ao menu inicial
  if opcao == 0
  puts mensagens['home']
  opcao = gets.chomp.to_i
  end

when 2
puts mensagens['qtd']
qtd = gets.chomp.to_i
subtotal += produtos['headset_dragon_force'] * qtd

puts "Subtotal: R$#{subtotal}"
puts mensagens['voltar']
opcao = gets.chomp.to_i
  
  if opcao == 0
  puts mensagens['home']
  opcao = gets.chomp.to_i
  end

when 3
    puts mensagens['qtd']
    qtd = gets.chomp.to_i
    subtotal += produtos['teclado'] * qtd
    
    puts "Subtotal: R$#{subtotal}"
    puts mensagens['voltar']
    opcao = gets.chomp.to_i
      
      if opcao == 0
      puts mensagens['home']
      opcao = gets.chomp.to_i
      end
when 4
puts mensagens['qtd']
qtd = gets.chomp.to_i
subtotal += produtos['processador_amd_rayzen'] * qtd

puts "Subtotal: R$#{subtotal}"
puts mensagens['voltar']
opcao = gets.chomp.to_i

  if opcao == 0
  puts mensagens['home']
  opcao = gets.chomp.to_i
  end
end 
end #fim do laço

if opcao == 2

self.tchau()

end