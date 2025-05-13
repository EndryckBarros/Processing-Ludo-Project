class Player {
  int corIndex;
  Peca[] pecas = new Peca[4];

  Player(int corIndex) {
    this.corIndex = corIndex;
    inicializarPecasNaBase();
  }

  color getCor() {
    return cores[corIndex];
  }

  void inicializarPecasNaBase() {
    Casa[] base;
    switch (corIndex) {
      case 0: base = baseP1; break;
      case 1: base = baseP2; break;
      case 2: base = baseP3; break;
      case 3: base = baseP4; break;
      default: return;
    }

    // As 4 últimas posições do array de base são as casas iniciais
    for (int i = 0; i < 4; i++) {
      pecas[i] = new Peca(corIndex, base[base.length - 4 + i]);
    }
  }
}

// CLASSE LED (individual)
class Led {
  int x, y;
  color cor;
  float brilho;

  Led(int x, int y, color cor, float brilho) {
    this.x = x;
    this.y = y;
    this.cor = cor;
    this.brilho = brilho;
  }

  void setColor(color c, float b) {
    cor = c;
    brilho = b;
  }

  void show() {
    fill(cor, brilho * 255);
    noStroke();
    rect(x * cellSize + gap, y * cellSize + gap, cellSize - gap*2, cellSize - gap*2);
  }
}

class Casa {
  Led[] leds;
  int corIndex;
  boolean ocupada = false;
  int playerIndex = -1;
  boolean ativa = false;  // <-- NOVA FLAG

  Casa(Led[] leds, int corIndex) {
    this.leds = leds;
    this.corIndex = corIndex;
  }

  void acender(float brilho) {
    ativa = true;  // <-- Marca como ativa
    for (Led l : leds) {
      l.setColor(cores[corIndex], brilho);
    }
  }

  void acender(color cor, float brilho) {
    ativa = true;  // <-- Marca como ativa
    for (Led l : leds) {
      l.setColor(cor, brilho);
    }
  }

  void apagar() {
    ativa = false;  // <-- Marca como inativa
    for (Led l : leds) {
      l.setColor(color(0), 1.0);
    }
  }

  void mostrar() {
    if (ativa) {
      for (Led l : leds) {
        l.show();
      }
    }
  }
}

class Peca {
  int corIndex;
  Casa casaAtual;
  boolean naBase = true;
  boolean finalizado = false;

  Peca(int corIndex, Casa casaInicial) {
    this.corIndex = corIndex;
    this.casaAtual = casaInicial;
    acender(); // Acende a casa inicial
  }

  void acender() {
    casaAtual.acender(cores[corIndex], 1);
  }

  void moverPara(Casa destino) {
    if (casaAtual != null) {
      casaAtual.acender(0); // apaga a casa anterior
    }
  
    casaAtual = destino;
  
    if (casaAtual != null) {
      casaAtual.acender(1); // acende a nova
    }
  }
}
