logExercicio
============

Log Exercicios


logQuakeArena
============

Ler o log gerado por Quake Arena carregando informações como:
        -número de kills por partida
        -nome dos jogadores
        -pontuação dos jogadores por partida
        -penalidades por jogador
        -motivo das mortes
        
Três classes:
        -Player
        -Game
        -ParserLogQuake

ParserLogQuake é a classe principal, responsável por processar a informação do arquivo. Seu construtor recebe o caminho para o arquivo de log e criar internamente várias instâncias de Game e Player, descrevendo as partidas.

p = ParserLogQuake.new('games.log')
puts p.games                                #exibe informações de todas as partidas

puts p.games.first                         #exibe informações da primeira partida

puts p.games.last.players                #exibe informações dos jogadores da primeira partida

puts p.games.last.players_names                #exibe os nomes dos jogadors

puts p.games.last.players['Isgalamido']        #exibe informações do jogador Isgalamido da última partida

Você pode executar o arquivo main.rb, contendo os exemplos da seguinte forma 
ruby games.rb

O resultado pedido em Task1 e Task2 pode ser obtido utilizando, por exemplo, o comando:
load 'parser_quake.rb'

p = ParserLogQuake.new('games.log')
puts p.games.last        #houve mais ação nesta partida :-)

Um plus para o que foi pedido são as informações de motivo da morte e arma utilizada para matar de cada player. Para isso utilize:

puts p.games.last.players['Oootsimo']        #os nomes dos players envolvidos na partida podem ser obitidos com o comando p.games.last.players_names

Os testes foram feitos utilizando Test::Unit, nativo do ruby e podem ser executados utilizando o comando:

ruby parser_quake_test.rb
