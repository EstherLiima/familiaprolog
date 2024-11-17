% Base de dados fictícia de famílias

% familia(FamiliaID, Pai, Mae, Filhos)
familia(f1, pedro_silva, laura_silva, [voce, marcos_silva]).
familia(f2, jose_silva, clara_silva, [lucas_silva, sofia_silva]).
familia(f3, fernanda_silva, _, []).
familia(f4, ricardo_souza, paula_souza, [gabriel_souza, isabela_souza]).
familia(f5, juliana_souza, roberto_lima, [matheus_lima, beatriz_lima]).

% trabalha(Pessoa)
trabalha(marcos_silva).
trabalha(sofia_silva).
trabalha(isabela_souza).
trabalha(beatriz_lima).

% desempregado(Pessoa)
desempregado(pedro_silva).

% idade(Pessoa, Idade)
idade(pedro_silva, 40).
idade(laura_silva, 24).
idade(jose_silva, 50).
idade(clara_silva, 48).
idade(fernanda_silva, 35).
idade(ricardo_souza, 45).
idade(paula_souza, 28).
idade(juliana_souza, 38).
idade(roberto_lima, 37).
idade(voce, 20).
idade(marcos_silva, 18).
idade(lucas_silva, 22).
idade(sofia_silva, 25).
idade(gabriel_souza, 20).
idade(isabela_souza, 24).
idade(matheus_lima, 22).
idade(beatriz_lima, 21).

% renda_per_capita(FamiliaID, Renda)
renda_per_capita(f1, 800).
renda_per_capita(f2, 1500).
renda_per_capita(f3, 0).
renda_per_capita(f4, 2000).
renda_per_capita(f5, 1800).

% faz_universidade(Pessoa)
faz_universidade(voce).
faz_universidade(lucas_silva).
faz_universidade(gabriel_souza).
faz_universidade(matheus_lima).

% Consultas:

% a) As famílias que não têm filhos
sem_filhos(FamiliaID, Nome) :-
    familia(FamiliaID, Nome, _, Filhos),
    length(Filhos, 0).

% b) Todos os filhos que trabalham
filhos_trabalham(Filho) :-
    familia(_, _, _, Filhos),
    member(Filho, Filhos),
    trabalha(Filho).

% c) As famílias em que o pai está desempregado
pai_desempregado(FamiliaID, Pai) :-
    familia(FamiliaID, Pai, _, _),
    desempregado(Pai).

% d) As crianças cujos pais possuem uma diferença de idade superior a 15 anos
criancas_diferenca_idade(Crianca, Pai, Mae) :-
    familia(_, Pai, Mae, Filhos),
    member(Crianca, Filhos),
    idade(Pai, IdadePai),
    idade(Mae, IdadeMae),
    Dif is abs(IdadePai - IdadeMae),
    Dif > 15.

% e) As famílias cuja renda per capita é inferior a 1000
familias_renda_baixa(FamiliaID, Pai, Mae) :-
    renda_per_capita(FamiliaID, Renda),
    Renda < 1000,
    familia(FamiliaID, Pai, Mae, _).

% f) Os filhos que fazem universidade
filhos_universidade(Filho) :-
    familia(_, _, _, Filhos),
    member(Filho, Filhos),
    faz_universidade(Filho).
