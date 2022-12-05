puts 'cleaning DB'
User.destroy_all
Question.destroy_all
Project.destroy_all

puts 'creating user'
User.create!(email: 'dede@lw.com', password: '123456', admin: true)

# puts 'creating questions...'
# q1 = Question.create!(content: 'violencia e defesa do cidadao')
# q2 = Question.create!(content: 'Combate a probreza')

# puts 'creating answers...'
# Answer.create!(
#   content: 'o cidadao deve ter o direito ao porte de arma para garantir sua seguranca e de sua familia',
#   question: q1
# )
# Answer.create!(
#   content: 'o direito ao porte deve ser limitado pois aumeta a violencia',
#   question: q1
#   )
# Answer.create!(
#   content: 'programas sociais estimulam a ociosidade',
#   question: q2
# )
# Answer.create!(
#   content: 'programas sociais diminuem a desigualdade',
#   question: q2
# )

# puts 'finished zo/'

puts 'Creating PROEJCT'

Project.create!(
  name: 'Rede Observacao',
  content: "<h1 class='fs-2'>Sobre nós - Mussum Ipsum</h1>

  <p>Mussum Ipsum, cacilds vidis litro abertis. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.Detraxit consequat et quo num tendi nada.Si num tem leite então bota uma pinga aí cumpadi!Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis.</p>

  <p>Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.Per aumento de cachacis, eu reclamis.Aenean aliquam molestie leo, vitae iaculis nisl.</p>

  <p>Leite de capivaris, leite de mula manquis sem cabeça.Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget.Per aumento de cachacis, eu reclamis.</p>"
)
