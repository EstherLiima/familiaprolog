# Base de Dados Prolog para Família Fictícia

## Descrição
Esta base de dados Prolog representa uma família fictícia, incluindo detalhes sobre pais, mães, filhos, trabalho, desemprego, idade, renda per capita e status universitário. Ela foi criada para atividades acadêmicas e demonstração de consultas Prolog.

## Estrutura da Base de Dados
A base de dados consiste em fatos e regras para descrever e consultar informações sobre a família.

### Fatos
#### Definição das Famílias
familia(FamiliaID, Pai, Mae, Filhos).
- `FamiliaID`: Identificador único da família.
- `Pai`: Nome do pai.
- `Mae`: Nome da mãe.
- `Filhos`: Lista de filhos.

#### Exemplo:
familia(f1, pedro_silva, laura_silva, [voce, marcos_silva]).
familia(f2, jose_silva, clara_silva, [lucas_silva, sofia_silva]).
familia(f3, fernanda_silva, _, []).
familia(f4, ricardo_souza, paula_souza, [gabriel_souza, isabela_souza]).
familia(f5, juliana_souza, roberto_lima, [matheus_lima, beatriz_lima]).

#### Outras Relações e Atributos
trabalha(marcos_silva).
trabalha(sofia_silva).
trabalha(isabela_souza).
trabalha(beatriz_lima).
desempregado(pedro_silva).
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
renda_per_capita(f1, 800).
renda_per_capita(f2, 1500).
renda_per_capita(f3, 0).
renda_per_capita(f4, 2000).
renda_per_capita(f5, 1800).
faz_universidade(voce).
faz_universidade(lucas_silva).
faz_universidade(gabriel_souza).
faz_universidade(matheus_lima).

## Consultas

### Famílias que não têm filhos
sem_filhos(FamiliaID, Nome).
Exemplo:
?- sem_filhos(FamiliaID, Nome).

### Todos os filhos que trabalham
filhos_trabalham(Filho).
Exemplo:
?- filhos_trabalham(Filho).

### Famílias em que o pai está desempregado
pai_desempregado(FamiliaID, Pai).
Exemplo:
?- pai_desempregado(FamiliaID, Pai).

### Crianças cujos pais possuem uma diferença de idade superior a 15 anos
criancas_diferenca_idade(Crianca, Pai, Mae).
Exemplo:
?- criancas_diferenca_idade(Crianca, Pai, Mae).

### Famílias cuja renda per capita é inferior a 1000
familias_renda_baixa(FamiliaID, Pai, Mae).
Exemplo:
?- familias_renda_baixa(FamiliaID, Pai, Mae).

### Filhos que fazem universidade
filhos_universidade(Filho).
Exemplo:
?- filhos_universidade(Filho).

## Como Usar

1. **Carregar o Arquivo**:
   ?- [familia].

2. **Executar Consultas**:
   Execute as consultas descritas acima para obter as informações desejadas.
