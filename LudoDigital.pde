
// ARQUIVO PRINCIPAL (LudoDigital.pde)
int cols = 32;
int rows = 32;
int cellSize = 20;
int gap = 1;

Led[][] painel = new Led[cols][rows];
Player[] players;

//ATUALIZA AS CASAS PARA ANIMACOES
ArrayList<Casa[]> todasAsCasas = new ArrayList<Casa[]>();

color[] cores = {
  color(255),       // 0 - BRANCO
  color(255, 0, 0), // 1 - VERMELHO
  color(0, 0, 255), // 2 - AZUL
  color(0, 255, 0), // 3 - VERDE
  color(255, 255, 0) // 4 - AMARELO
};

// Estruturas (arrays de casas)
Casa[] baseP1;
Casa[] baseP2;
Casa[] baseP3;
Casa[] baseP4;
Casa[] finalP1;
Casa[] finalP2;
Casa[] finalP3;
Casa[] finalP4;
Casa[] caminhoPrincipal;

// MARGENS (arrays de casas)
Casa[] molduraP1;
Casa[] molduraP2;
Casa[] molduraP3;
Casa[] molduraP4;
Casa[] lateralP1;
Casa[] lateralP2;
Casa[] lateralP3;
Casa[] lateralP4;
Casa[] centroTabuleiro;

//TESTE ANIMACAO
int passoAtual = 0;
int totalPassos = 5; // teste com 5 casas
Player jogadorTeste;
Peca pecaTeste;

void setup() {
  size(640, 640);
  
   frameRate(30);
  
  // Inicializa os LEDs
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      painel[x][y] = new Led(x, y, color(255), 1.0);
    }
  }
  
  // CRIAR LISTA DE BASES DOS JOGADORES
  criarBaseP1();
  criarBaseP2();
  criarBaseP3();
  criarBaseP4();
  inicializarPlayers();
  
  // CRIA LISTA DAS ESTRUTURAS
  criarMolduras();
  criarCaminhoPrincipal();
  criarLaterais();
  criarFinais();
  criarCentroTabuleiro();
  
  // LIGA BASE DOS JOGADORES
  acenderBase(baseP1, 1);
  acenderBase(baseP2, 1);
  acenderBase(baseP3, 1);
  acenderBase(baseP4, 1);
  
  // LIGA MARGENS
  acenderBase(molduraP1, 0.2);
  acenderBase(molduraP2, 0.2);
  acenderBase(molduraP3, 0.2);
  acenderBase(molduraP4, 0.2);
  acenderBase(centroTabuleiro, 0.1);
  
  acenderBase(lateralP1, 1);
  acenderBase(lateralP2, 1);
  acenderBase(lateralP3, 1);
  acenderBase(lateralP4, 1);
  
  // LIGA CAMINHO FINAL
  acenderBase(finalP1, 1);
  acenderBase(finalP2, 1);
  acenderBase(finalP3, 1);
  acenderBase(finalP4, 1);
  acenderBase(caminhoPrincipal, 1);
  
  // AJUSTE INDIVIDUAL LEDs DO CENTRO
  ajusteCentroTabuleiro();
  
  //ATUALIZA A LISTA COM TODAS AS CASAS PARA ANIMAÇÕES
  carregarListaGeraldeCasas();
  
  Player p = players[0];
  pecaAnimando = p.pecas[0];
  casasParaAndar = 6;
  iniciarAnimacao(pecaAnimando, caminhoPrincipal, 0);

}

void draw() {
  background(0);
  mostrarPainel();
  atualizarPiscarCasas();
  atualizarAnimacoes();

  if (animando) {
    animarMovimento();
  }  
}


void inicializarPlayers() {
  players = new Player[4];
  for (int i = 0; i < players.length; i++) {
    players[i] = new Player(i);  // Passa apenas o índice da cor
  }
}

void mostrarPainel() {
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      painel[x][y].show();
    }
  }
}

void atualizarPiscarCasas() {
  for (Casa[] estrutura : todasAsCasas) {
    for (Casa c : estrutura) {
      atualizarPiscar(c); // Já deve existir na lógica de animação
    }
  }
}

void atualizarAnimacoes() {
  if (animando) {
    animarMovimento();
  } else if (animandoMorte) {
    animarMorte();
  } else if (animacaoDeMortePendente) {
    //iniciarAnimacaoMorte(playerAnimando, indiceAtual);
    animacaoDeMortePendente = false;
    //playerAnimando = null;
  }
}
