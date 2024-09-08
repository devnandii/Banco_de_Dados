<br>
<br>
<div>
  <ul align="center">
    <summary><h1 style="display: inline-block"> Banco de dados
    <img align="center" alt="nandi-css" height="30" widht="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/azuresqldatabase/azuresqldatabase-original.svg" />
    <img align="center" alt="nandi-css" height="30" widht="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/mysql/mysql-original.svg" />
    <img align="center" alt="nandi-css" height="30" widht="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/postgresql/postgresql-original.svg" />          
    </h1></summary>
</div>

## 🧠Definição

Banco de dados é uma coleção organizada de informações ou dados estruturados, que podem ser acessados, gerenciados e atualizados de forma eficiente.

## 📊Aplicações de Banco de Dados

Os bancos de dados são amplamente utilizados em diversas áreas e setores, permitindo o armazenamento, organização e análise de grandes volumes de dados.

- Bancos: transações
- Aviação civil: reservas,horários de vôos…
- Universidades: registros, grades de cursos..
- Mercados: clientes, produtos e compras
- Indústria: produção, estoque, pedidos e fornecimentos
- Recursos Humanos: registro de empregados, salários, dedução de
  impostos

## 🤯Por que utilizar BD ao invés de um Sistema de arquivos?

A escolha de usar um banco de dados em vez de um sistema de arquivos se justifica por várias razões, principalmente quando se trata de gerenciar grandes volumes de dados ou lidar com operações mais complexas. Aqui estão algumas das principais vantagens:

<details>
<summary>Organização e Estruturação de Dados</summary>

**Banco de Dados**: Oferece uma estrutura bem definida para organizar dados em tabelas, colunas e linhas, o que facilita o acesso, a manipulação e a análise. Cada dado está associado a uma chave primária, o que garante uma identificação única e clara.

**Sistema de Arquivos**: Os dados são armazenados de forma bruta (em arquivos de texto ou binários), o que pode dificultar a organização e o acesso eficiente, especialmente à medida que o volume de dados cresce.

</details>

<details>
<summary>Acesso e Manipulação de Dados</summary>

**Banco de Dados**: Oferece uma linguagem de consulta padronizada, como o **SQL**, que permite realizar buscas complexas, filtros e junções entre tabelas de forma eficiente e rápida.

**Sistema de Arquivos**: A busca e a recuperação de informações são mais limitadas e podem envolver a leitura de arquivos inteiros, o que é menos eficiente quando se trata de grandes volumes de dados.

</details>
<details>
<summary>Integridade e Consistência de Dados</summary>

**Banco de Dados**: Implementa regras para garantir a integridade e consistência dos dados, como a integridade referencial (chaves estrangeiras) e a validação de tipos de dados. Ele assegura que as transações sigam as propriedades ACID (Atomicidade, Consistência, Isolamento, Durabilidade), evitando inconsistências.

**Sistema de Arquivos**: Não oferece suporte nativo para garantir que os dados sejam consistentes ou que transações sejam executadas corretamente. Se ocorrer uma falha durante uma operação, os dados podem ficar corrompidos ou inconsistentes.

</details>
<details>
<summary>Concorrência e Controle de Acesso</summary>

**Banco de Dados**: Suporta múltiplos usuários acessando e modificando os dados simultaneamente, aplicando controle de concorrência para garantir que as alterações feitas por um usuário não afetem negativamente outros. Também oferece controle de permissões de acesso a nível granular (quem pode ler, modificar, etc.).

**Sistema de Arquivos**: É muito mais difícil gerenciar o acesso concorrente a arquivos, o que pode levar a conflitos quando vários usuários tentam modificar um arquivo ao mesmo tempo.

</details>
<details>
<summary> Segurança</summary>

**Banco de Dados**: Possui mecanismos de segurança robustos, como autenticação de usuários, controle de permissões, criptografia de dados e auditoria de acessos. Isso garante que apenas usuários autorizados possam acessar ou modificar dados sensíveis.

**Sistema de Arquivos**: Oferece mecanismos limitados de segurança, geralmente no nível do sistema operacional (permissões de leitura/escrita), o que pode ser insuficiente para dados críticos.

</details>
<details>
<summary>Redundância e Redução de Duplicação</summary>

**Banco de Dados**: A normalização dos dados no banco de dados ajuda a evitar redundância e duplicação de informações, o que economiza espaço e reduz inconsistências.

**Sistema de Arquivos**: Não há controle sobre a duplicação de dados, e informações repetidas podem facilmente ser armazenadas em múltiplos arquivos, desperdiçando espaço e potencialmente criando dados conflitantes.

</details>
<br>

<div>
  <ul align="center">
    <summary><h1 style="display: inline-block"><h1>Arquitetura de Banco de dados           
    </h1></summary>
</div>

## 🎲Modelagem de Dados

Processo de criar uma representação visual e lógica da estrutura de um banco de dados, detalhando como os dados serão organizados, armazenados e relacionados. A modelagem de dados é essencial para garantir que o banco de dados seja bem projetado, eficiente e capaz de suportar as operações que a aplicação precisa realizar.

São classificados de acordo com os tipos de conceitos que eles utilizam para descrever a estrutura do BD.

Tipos:

- Alto nível ou conceituais
- Representativos ou lógico
- Baixo nível ou físicos

<details>
<summary>Modelos de alto nível ou conceituais</summary>
<p>
  <a href="/">
    <img src="https://spaceprogrammer.com/wp-content/uploads/2017/09/exemplo-de-DER.jpg" alt="DER">
  </a>
</p>
</details>

<details>
<summary>Modelos representativos ou lógico</summary>
Aluno_Turma(ano_semestre, codigo_disciplina, codigo_curso, matricula_aluno,
codigo_projeto) Projeto (codigo_projeto, titulo, conceito, hp)
</details>

<details>
<summary>BD- Hierárquico</summary>
<br><a href="/">
    <img src="https://harve.com.br/wp-content/uploads/2021/03/database2.png" alt="hierqar">
  </a><br>  <br>
Dados são classificados hierarquicamente, de acordo com uma arborescência descendente.</details>

<details>
<summary>BD- Rede</summary>
<br><a href="/">
    <img src="https://lh5.ggpht.com/franciscogpneto/SMWG3zwANyI/AAAAAAAAGrg/ustUmKAn7bw/image_thumb[2].png?imgmax=800" alt="rede">
  </a><br><br>
  Utiliza apontadores para os registros. Contudo, a estrutura já não é necessariamente em árvore no sentido descendente.
</details>

<details>
<summary>BD - Orientado a objetos</summary>

<br><a href="/">
<img src="https://media.licdn.com/dms/image/D4D12AQFL7k0xtjzi1A/article-cover_image-shrink_720_1280/0/1676915368312?e=2147483647&v=beta&t=pg5brcwN8LYyw9phzdF0fppSFgg0aZOYttIUypyEAC4" alt="object">
</a><br><br>
Dados são armazenados sob a forma de objetos, quer dizer, de estruturas chamadas classes que apresentam dados membros. Os campos são instâncias destas classes .

</details>

<details><summary>BD Multimídia</summary>

<br><a href="/">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKMsFglqM4TjQUwmRaAYIma3Rlfeh7UOfRRg&s" alt="midia">
</a>

Armazenamento e consulta de: imagens, vídeos, áudio e documentos.

</details>

<details><summary>BD Distribuído</summary>

<br><a href="/">
<img src="https://static.imasters.com.br/wp-content/uploads/2013/10/bdd-3.png" alt="distribuido">
</a>

Coleção de múltiplos bancos de dados logicamente inter-relacionados, distribuídos por uma rede de computadores.

</details>
<details><summary>BD Espacial</summary>

<br><a href="/">
<img src="https://www.ufpb.br/cga/contents/noticias/cga-desenvolve-banco-de-dados-espacial-para-ufpb-2/banco-de-dados-300x169.png/@@images/df732c66-e6cb-4ca6-a038-080e6a2dd90a.png" alt="espacial">
</a>

Armazenam objetos (pontos, linhas e polígonos) que possuem características espaciais que os descrevem e que possuem relacionamentos espaciais entre eles.

  </details>

<details>
<summary>BD NoSQL</summary>

<br><a href="/">
<img src="https://logap.com.br/wp-content/uploads/2022/01/non-relational-database-1024x342.png" alt="Nosql">
</a>

Aquilo que não é relacional

  </details>

<details>
<summary>Relacional</summary>

<br><a href="/">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsImq9gbKMqt-KHyRt2u2BdqqBf0F9KP89mQ&s" alt="hierqar">
</a>

Os dados são registrados em quadros de duas dimensões (linhas e colunas).

  </details>
  <br>

<div>
  <ul align="center">
    <summary><h1 style="display: inline-block"><h1>Modelagem Entidade Relacionamento           
    </h1></summary>
</div>

É uma técnica usada na modelagem de dados para representar graficamente as entidades de um sistema, suas características (atributos) e como essas entidades se relacionam entre si.

### Modelo Conceitual

- Modelagem semântica permite aproximar o modelo obtido do mundo real.
- Todos os dados são visualizados como fatos específicos sobre entidades, relacionamentos e atributos.
- Um MER é representado graficamente através de um diagrama entidade-relacionamento (DER).

### Modelo Entidade Relacionamento - MER

O MER é composto de _Entidade, Atributo, Relacionamento_.

<br><a href="/">
<img src="https://www.cadcobol.com.br/db2_novo_modelo_entidade_relacionamentos_01.jpg" alt="hierqar">
</a></details>

<details>
<summary>Entidade</summary>
Objeto pelo qual desejamos guardar informação.

Cada instância representa um conjunto de fatos sobre a entidade.

</details>

<details>
<summary>Relacionamento</summary>
É uma abstração de uma associação entre duas ou mais entidades.
</details>

<details>
<summary>Atributos</summary>
São propriedades que descrevem cada membro de um conjunto de entidades ou relacionamentos.

Cada atributo de uma entidade representa uma informação sobre essa entidade ou sobre um relacionamento.

Ex: para a entidade Livro atributos: titulo, autor, editora, ano, ISBN, etc.

**Tipos de atributos:**

**Simples:**

Ex: ano, cor.

**Composto:**

Divididos em partes.
Ex: endereço de cliente (rua, número, bairro, cidade, estado, cep).

**Multivalorados:**

Vários valores possíveis para o atributo.

Ex: telefone do cliente, nome de dependente do funcionário, etc.

</details>

<details>
<summary> Mapeamento de Cardinalidade </summary>

Representada entre parenteses: (mínima,máxima)

**Máxima (1 ou N):**
Representa a quantidade máxima de ocorrências de uma entidade, que
pode estar associada a uma mesma ocorrência da outra entidade.

**Mínima (0 ou 1):**
Indica se a participação de TODAS as ocorrências de uma entidade em
um determinado relacionamento é obrigatória (1) ou opcional (0).

A cardinalidade vai anotada no lado oposto do relacionamento ao qual se refere.

O mapeamento das cardinalidades deve seguir uma das instruções abaixo:

- Um para um (1:1):
  Uma entidade em A está associada no máximo a uma entidade em B, e uma entidade em B está associada a no máximo uma entidade em A.
- Um para muitos (1:N):
  Uma entidade em A está associada a várias entidades em B. Uma entidades em
  B, entretanto, deve estar associada no máximo a uma entidades em A.
- Muitos para muitos (N:N):
      Uma entidade em A está associada a qualquer número de entidades em B e
      uma entidade em B está associada a um número qualquer de entidades em A.
  </details>

**DER**

<br><a href="/">
<img src="
    https://sae.unb.br/cae/conteudo/unbfga/sbd/imagens/modelagem1.png
    " alt="DER">
</a>

<div>
  <ul align="center">
    <summary><h1 style="display: inline-block"><h1>Sistema Gerenciamento de Banco de Dados </h1></summary>
</div>

“Sistema de Gerenciamento de Banco de Dados” é um software que facilita a criação, manutenção e manipulação de bancos de dados. Ele atua como uma interface entre os usuários e os bancos de dados, permitindo o gerenciamento eficiente e seguro dos dados, além de garantir que as operações realizadas sejam consistentes e seguras.

### Existentes no mercado:

<div>
  <ul align="center">
    <img align="center" alt="nandi-css" height="400" widht="150" src="https://blog.betrybe.com/wp-content/uploads/2022/09/image-94.png" />   
</div>
