//ANIMAÇÃO VAR
boolean piscando = false;
int vezesPiscar = 0;
int intervaloPiscar = 0;
int proximaTroca = 0;
boolean estadoLigado = false;
int contador = 0;

//PLAYER VARIAVEIS
boolean animando = false;
Peca pecaAnimando;
int casasParaAndar = 6;
int inicioAnimacao;
int delayEntrePassos = 5;
int indiceAtual;
Casa[] caminhoAtual;
int[] coresOriginaisDosIndices = new int[100]; // tamanho suficiente


//ANIMAÇÃO MORTE VARIAVEIS
boolean animandoMorte = false;
boolean animacaoDeMortePendente = false;
int frameInicioMorte;
int casaAlvoMorte;
Player playerMorte;
Casa[] caminhoMorte;
int etapaMorte = 0;
int delayEtapaMorte = 3;
color[] coresOriginaisDaMorte = new color[5];


void iniciarPiscar(int vezes, int intervalo) {
  piscando = true;
  vezesPiscar = vezes;
  intervaloPiscar = intervalo;
  proximaTroca = millis() + intervalo;
  estadoLigado = false;
  contador = 0;
}

void atualizarPiscar(Casa c) {
  if (!piscando) return;

  if (millis() >= proximaTroca) {
    estadoLigado = !estadoLigado;
    c.acender(estadoLigado ? 1 : 0);  // Usa seu método de acender com brilho

    proximaTroca = millis() + intervaloPiscar;

    if (!estadoLigado) {
      contador++;
      if (contador >= vezesPiscar) {
        piscando = false;
        c.acender(1);  // Garante que fique acesa ao fim
      }
    }
  }
}

void iniciarAnimacao(Peca peca, Casa[] caminho, int inicio) {
  pecaAnimando = peca;
  caminhoAtual = caminho;
  indiceAtual = inicio;
  inicioAnimacao = frameCount;
  animando = true;

  // Cor original da casa inicial
  coresOriginaisDosIndices[indiceAtual] = caminhoAtual[indiceAtual].corIndex;

  // Marca visual inicial
  caminhoAtual[indiceAtual].corIndex = peca.corIndex;
  caminhoAtual[indiceAtual].acender(1);
}


void animarMovimento() {
  
  if (frameCount - inicioAnimacao >= delayEntrePassos) { //<>//
    caminhoAtual[indiceAtual].corIndex = coresOriginaisDosIndices[indiceAtual];
    caminhoAtual[indiceAtual].acender(1); //<>//
    println(caminhoPrincipal[indiceAtual].corIndex);

    indiceAtual++;

    if (indiceAtual < caminhoAtual.length && casasParaAndar > 0) {
      coresOriginaisDosIndices[indiceAtual] = caminhoAtual[indiceAtual].corIndex;

      pecaAnimando.moverPara(caminhoAtual[indiceAtual]);

      caminhoAtual[indiceAtual].corIndex = pecaAnimando.corIndex;
      caminhoAtual[indiceAtual].acender(1);

      casasParaAndar--;
      inicioAnimacao = frameCount;
    } else {
      animando = false;
    }
  }
}


 //<>//

void iniciarAnimacaoMorte(Player p, int indiceFinal) {
  animandoMorte = true;
  etapaMorte = 0;
  frameInicioMorte = frameCount;
  casaAlvoMorte = indiceFinal;
  playerMorte = p;
  caminhoMorte = caminhoPrincipal;

  // Guarda as cores originais
  for (int i = -2; i <= 2; i++) {
    int idx = casaAlvoMorte + i;
    if (idx >= 0 && idx < caminhoMorte.length && i != 0) {
      coresOriginaisDosIndices[i + 2] = cores[caminhoMorte[idx].corIndex];
    }
  }
}

void animarMorte() {
  if (!animandoMorte) return;

  int t = frameCount - frameInicioMorte;

  if (etapaMorte == 0 && t >= 0) {
    acenderMorte(casaAlvoMorte - 1, 0.7);
    acenderMorte(casaAlvoMorte + 1, 0.7);
    etapaMorte++;
    frameInicioMorte = frameCount;
  } else if (etapaMorte == 1 && t >= delayEtapaMorte) {
    apagarMorte(casaAlvoMorte - 1);
    apagarMorte(casaAlvoMorte + 1);
    etapaMorte++;
    frameInicioMorte = frameCount;
  } else if (etapaMorte == 2 && t >= delayEtapaMorte) {
    acenderMorte(casaAlvoMorte - 2, 0.3);
    acenderMorte(casaAlvoMorte + 2, 0.3);
    etapaMorte++;
    frameInicioMorte = frameCount;
  } else if (etapaMorte == 3 && t >= delayEtapaMorte) {
    apagarMorte(casaAlvoMorte - 2);
    apagarMorte(casaAlvoMorte + 2);
    animandoMorte = false;
  }
}

void acenderMorte(int idx, float brilho) {
  if (idx >= 0 && idx < caminhoMorte.length) {
    caminhoMorte[idx].corIndex = playerMorte.corIndex;
    caminhoMorte[idx].acender(brilho);
  }
}

void apagarMorte(int idx) {
  if (idx >= 0 && idx < caminhoMorte.length) {
    // Restaura a cor original
    int offset = idx - casaAlvoMorte;
    caminhoMorte[idx].corIndex = getCorIndexPorColor(coresOriginaisDaMorte[offset + 2]);
    caminhoMorte[idx].acender(1);
  }
}

int getCorIndexPorColor(color c) {
  for (int i = 0; i < cores.length; i++) {
    if (c == cores[i]) return i;
  }
  return 0; // Branco por padrão se não encontrar
}

// Função para acender as casas de uma base
void acenderBase(Casa[] base, float b) {
  for (Casa c : base) {
    c.acender(b);  // Acende todas as casas da base com o brilho máximo
  }
}
