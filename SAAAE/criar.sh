rake db:drop
rake db:create
rails g scaffold Pessoa pessoa_nome:string pessoa_sexo:string pessoa_endereco:string pessoa_cidade:string pessoa_estado:string pessoa_cep:string
rake db:migrate
rails g bootstrap:themed Documentos
rails g scaffold Documento doc_rg:string doc_cpf:string pessoas:references
rake db:migrate
rails g bootstrap:themed Pessoas
rails g scaffold Aluno aluno_ra:integer aluno_curso:string aluno_data_ingresso:date aluno_periodo:integer aluno_frequencia:float aluno_coeficiente:float pessoa:references
rake db:migrate
rails g bootstrap:themed Alunos
rails g scaffold Funcionario funcionario_rf:integer funcionario_area:string funcionario_permissao:integer pessoa:references
rake db:migrate
rails g bootstrap:themed Funcionarios
rails g scaffold Relatorio relatorio_data:date aluno:references funcionario:references
rake db:migrate
rails g bootstrap:themed Relatorios
rails g scaffold RelatorioAssistenteSocial ras_motivo:text ras_entrevista:text relatorio:references
rake db:migrate
rails g bootstrap:themed relatorio_assistente_socials
rails g scaffold RelatorioPsicologico rp_objetivo:text rp_atendimento:text relatorio:references
rake db:migrate
rails g bootstrap:themed relatorio_psicologicos
rails g scaffold RelatorioPedagogico rpe_objetivo:text rpe_atendimento:text relatorio:references
rake db:migrate
rails g bootstrap:themed relatorio_pedagogicos
rails g scaffold RelatorioGeral rg_objetivo:text rg_atendimento:text relatorio:references
rake db:migrate
rails g bootstrap:themed relatorio_gerals
