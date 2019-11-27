Team.create!([
{
  nome: "Sem time",
  sigla: "Free",
  instituicao: ""
},
{
  nome: "Alunos de Areia",
  sigla: "AdA",
  instituicao: "SENAC"
},
{
  nome: "Professores de Areia",
  sigla: "PdA",
  instituicao: "SENAC"
},
{
  nome: "Lightless Ghosts",
  sigla: "LLG",
  instituicao: "SENAC"
}
])
 
p "Created #{Team.count} team"

Role.create!([
{
  role: "Topo"
},
{
  role: "Selva"
},
{
  role: "Meio"
},
{
  role: "Atirador"
},
{
  role: "Suporte"
},
{
  role: "Coach"
}
])
 
p "Created #{Role.count} roles"

Player.create!([
{
  nome: "Filipe",
  sobrenome: "Montebeller",
  datanasc: Date.new(1999,10,14),
  nickname: "MontebellerZ",
  elo: "Ouro",
  divisao: 2,
  team_id: 3
},
{
  nome: "Lucas",
  sobrenome: "Aquino",
  datanasc: Date.new(2002,3,24),
  nickname: "MineroL0L",
  elo: "Prata",
  divisao: 4,
  team_id: 3
},
{
  nome: "Valdério",
  sobrenome: "Snow",
  datanasc: Date.new(1998,3,23),
  nickname: "CalikSnow",
  elo: "Ouro",
  divisao: 1,
  team_id: 3
},
{
  nome: "Gabriel",
  sobrenome: "Morozini",
  datanasc: Date.new(2002,2,18),
  nickname: "Kurushi",
  elo: "Platina",
  divisao: 3,
  team_id: 3
},
{
  nome: "Victor",
  sobrenome: "Montebeller",
  datanasc: Date.new(2001,10,9),
  nickname: "VictorM4ster",
  elo: "Platina",
  divisao: 4,
  team_id: 3
},
{
  nome: "Filipe",
  sobrenome: "Alves Vaz",
  datanasc: Date.new(1987,3,19),
  nickname: "Vaz",
  elo: "Desafiante",
  divisao: "",
  team_id: 2
},
{
  nome: "Leandro",
  sobrenome: "Guedes",
  datanasc: Date.new(1975,1,1),
  nickname: "Loord",
  elo: "Desafiante",
  divisao: "",
  team_id: 2
}
])
 
p "Created #{Player.count} players"

Playerrole.create!([
{
  player_id: 1,
  role_id: 5
},
{
  player_id: 1,
  role_id: 1
},
{
  player_id: 2,
  role_id: 3
},
{
  player_id: 2,
  role_id: 4
},
{
  player_id: 3,
  role_id: 3
},
{
  player_id: 4,
  role_id: 1
},
{
  player_id: 5,
  role_id: 4
},
{
  player_id: 5,
  role_id: 3
},
{
  player_id: 6,
  role_id: 6
},
{
  player_id: 7,
  role_id: 6
}
])
 
p "Created #{Playerrole.count} playerroles"