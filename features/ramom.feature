Cenário: má inserção de professor no sistema
Given eu estou na página “Professores matriculados”
When eu tento adicionar o professor “Ramom”, email “rjcs@cin.ufpe.br” no sistema, github "ramomjcs", sem as informações de cpf 
And o professor “Ramom” não está cadastrado no sistema
Then o sistema me mostra uma mensagem de erro
And e continua na página de cadastro mostrando o campo que falta
And o professor não é cadastrado no sistema 

Cenário: Atualização de CPF invalido 
Given eu vou atualizar os dados no aluno por necessidade de alteração dos dados
When eu tento realizar a finalização 
Then aparece uma mensagem de aviso na plataforma relatando que a mudança no CPF nao foi válida
And aparece uma tela indicando qual campo corrigir
And ao corrigir ele finaliza recebendo uma mensagem informando sucesso

Cenário: inserção inválida de aluno
Given eu estou na página “Alunos matriculados”
And o aluno “Ramom Santos” não está matriculado no sistema
When eu adiciono o aluno “Ramom Santos”, de cpf “999.999.999-66” e email “rjcs@cin.ufpe.br” no sistema
Then eu ainda estou na página “Alunos matriculados”
And o sistema me mostra uma mensagem de erro “Dados incorretos”
And a lista de alunos matriculados no sistema se mantém sem o aluno “Mateus Loureiro”

Cenário: Remoção bem sucedida de professor do sistema.
Given eu estou logado no sistema como administrador
And estou na página de "matrículas"
And há um professor matriculado com nome, cpf, email contendo os dados “Ramom Santos”, “111.222.333-44”, “ramom@falsomail.com” e “RamomSantos”
When seleciono a opção de “Remover”
Then removo o professor com CPF “111.222.333-44”
And continuo na mesma página de “matrícula”