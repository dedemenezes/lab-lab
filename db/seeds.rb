puts 'cleaning DB'
User.destroy_all
Question.destroy_all

puts 'creating user'
User.create!(email: 'dede@lw.com', password: '123456')

puts 'creating questions...'
q1 = Question.create!(content: 'violencia e defesa do cidadao')
q2 = Question.create!(content: 'Combate a probreza')
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

puts 'finished zo/'
