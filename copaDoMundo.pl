% Oitavas de final
oitavas(frança,argentina).
oitavas(uruguai,portugal).
oitavas(brasil,méxico).
oitavas(bélgica,japão).
oitavas(espanha,rússia).
oitavas(croácia,dinamarca).
oitavas(suécia,suíça).
oitavas(inglaterra,colômbia).

% Quartas de final
quartas(frança,uruguai).
quartas(bélgica, brasil).
quartas(croácia,rússia).
quartas(inglaterra,suécia).

% Semi-final
semi(frança,bélgica).
semi(croácia,inglaterra).

% final
final(frança,croácia).

% Resultado Oitavas
ganhou(frança,argentina).
ganhou(uruguai,portugal).
ganhou(brasil,méxico).
ganhou(bélgica,japão).
ganhou(espanha,rússia).
ganhou(croácia,dinamarca).
ganhou(suécia,suíça).
ganhou(inglaterra,colômbia).

% Resultado Quartas de final 
ganhou(frança,uruguai).
ganhou(bélgica,brasil).
ganhou(croácia,rússia).
ganhou(inglaterra,suécia).

% Resultado Semifinal
ganhou(inglaterra,colômbia).
ganhou(inglaterra,colômbia).

% Resultado final 
ganhou(frança,croácia).

% Nacionalidade dos jogadores

nacionalidadeJogador(cavani,uruguai).
nacionalidadeJogador(suarez,uruguai).
nacionalidadeJogador(lukaku,bélgica).
nacionalidadeJogador(hazard,bélgica).
nacionalidadeJogador(neymar,brasil).
nacionalidadeJogador(thiagosilva,brasil).
nacionalidadeJogador(piquet,espanha).
nacionalidadeJogador(sergioramos,espanha).

% Artilheiro Pais

artilheiroPais(cavani).
artilheiroPais(lukaku).

% Capitão do País
capitaoPais(thiagosilva).
capitaoPais(sergioramos).
% --------------------- REGRAS -------------------------------

% Ganhadores Oitavas
timeGanhouNasOitavas(X,Y):-
    oitavas(X,Y),
    ganhou(X,Y).

% Ganhadores Quartas
timeGanhouNasQuartas(X,Y):-
    quartas(X,Y),
    ganhou(X,Y).

% Ganhadores da Semi
timeGanhouNasSemifinais(X,Y):-
    semi(X,Y),
    ganhou(X,Y).

% Ganhador da final
timeGanhouNaFinal(X,Y):-
    final(X,Y),
    ganhou(X,Y).

% Perdedores Oitavas
timePerdeuNasOitavas(X,Y):-
    oitavas(Y,X),
    ganhou(Y,X).

% Perdedores Quartas
timePerdeuNasQuartas(X,Y):-
    quartas(Y,X),
    ganhou(Y,X).

% Semi-Final
timePerdeuNasSemifinais(X,Y):-
    semi(Y,X),
    ganhou(Y,X).

%final perdedor
timePerdeuNaFinal(X,Y):-
    final(Y,X),
    ganhou(Y,X).

%Artilheiro Selecao
artilheiroSelecao(X,Y):-
    nacionalidadeJogador(X,Y),
    artilheiroPais(X).

capitalSelecao(X,Y):-
    nacionalidadeJogador(X,Y),
    capitaoPais(X).