final int corP1 = 1;
final int corP2 = 2;
final int corP3 = 3;
final int corP4 = 4;

// função para criar Casa
Casa criarCasa(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, int corIndex) {
  Led[] leds = {
    painel[x1][y1],
    painel[x2][y2],
    painel[x3][y3],
    painel[x4][y4]
  };
  return new Casa(leds, corIndex);
}

// Cria a estrutura baseP1
void criarBaseP1() {
  baseP1 = new Casa[36]; 

  baseP1[0] = criarCasa(0,0, 1,0, 0,1, 1,1, corP1);   // VERMELHO
  baseP1[1] = criarCasa(2,0, 3,0, 2,1, 3,1, corP1);
  baseP1[2] = criarCasa(4,0, 5,0, 4,1, 5,1, corP1);
  baseP1[3] = criarCasa(6,0, 7,0, 6,1, 7,1, corP1);
  baseP1[4] = criarCasa(8,0, 9,0, 8,1, 9,1, corP1);
  baseP1[5] = criarCasa(10,0, 11,0, 10,1, 11,1, corP1);
  baseP1[6] = criarCasa(10,2, 11,2, 10,3, 11,3, corP1);
  baseP1[7] = criarCasa(10,4, 11,4, 10,5, 11,5, corP1);
  baseP1[8] = criarCasa(10,6, 11,6, 10,7, 11,7, corP1);
  baseP1[9] = criarCasa(10,8, 11,8, 10,9, 11,9, corP1);
  baseP1[10] = criarCasa(10,10, 11,10, 10,11, 11,11, corP1);
  baseP1[11] = criarCasa(8,10, 9,10, 8,11, 9,11, corP1);
  baseP1[12] = criarCasa(6,10, 7,10, 6,11, 7,11, corP1);
  baseP1[13] = criarCasa(4,10, 5,10, 4,11, 5,11, corP1);
  baseP1[14] = criarCasa(2,10, 3,10, 2,11, 3,11, corP1);
  baseP1[15] = criarCasa(0,10, 1,10, 0,11, 1,11, corP1);
  baseP1[16] = criarCasa(0,8, 1,8, 0,9, 1,9, corP1);
  baseP1[17] = criarCasa(0,6, 1,6, 0,7, 1,7, corP1);
  baseP1[18] = criarCasa(0,4, 1,4, 0,5, 1,5, corP1);
  baseP1[19] = criarCasa(0,2, 1,2, 0,3, 1,3, corP1);
  baseP1[20] = criarCasa(2,2, 2,3, 2,4, 2,5, 0);  // BRANCO
  baseP1[21] = criarCasa(2,6, 2,7, 2,8, 2,9, 0);  
  baseP1[22] = criarCasa(9,2, 9,3, 9,4, 9,5, 0);  
  baseP1[23] = criarCasa(9,6, 9,7, 9,8, 9,9, 0); 
  baseP1[24] = criarCasa(3,2, 4,2, 5,2, 6,2, 0);
  baseP1[25] = criarCasa(3,9, 4,9, 5,9, 6,9, 0);
  baseP1[26] = criarCasa(7,2, 8,2, 7,9, 8,9, 0);
  baseP1[27] = criarCasa(5,3, 5,4, 6,3, 6,4, 0);
  baseP1[28] = criarCasa(5,5, 5,6, 6,5, 6,6, 0);
  baseP1[29] = criarCasa(5,7, 5,8, 6,7, 6,8, 0);
  baseP1[30] = criarCasa(3,5, 3,6, 4,5, 4,6, 0);
  baseP1[31] = criarCasa(7,5, 7,6, 8,5, 8,6, 0);
  baseP1[32] = criarCasa(3,3, 3,4, 4,3, 4,4, corP1);  // VERMELHO
  baseP1[33] = criarCasa(7,3, 8,3, 7,4, 8,4, corP1);
  baseP1[34] = criarCasa(3,7, 4,7, 3,8, 4,8, corP1);
  baseP1[35] = criarCasa(7,7, 7,8, 8,7, 8,8, corP1);

}

// Cria a estrutura baseP2
void criarBaseP2() {
  baseP2 = new Casa[36];

  baseP2[0] = criarCasa(0,31, 1,31, 0,30, 1,30, corP2);   // VERDE
  baseP2[1] = criarCasa(2,31, 3,31, 2,30, 3,30, corP2);
  baseP2[2] = criarCasa(4,31, 5,31, 4,30, 5,30, corP2);
  baseP2[3] = criarCasa(6,31, 7,31, 6,30, 7,30, corP2);
  baseP2[4] = criarCasa(8,31, 9,31, 8,30, 9,30, corP2);
  baseP2[5] = criarCasa(10,31, 11,31, 10,30, 11,30, corP2);
  baseP2[6] = criarCasa(10,29, 11,29, 10,28, 11,28, corP2);
  baseP2[7] = criarCasa(10,27, 11,27, 10,26, 11,26, corP2);
  baseP2[8] = criarCasa(10,25, 11,25, 10,24, 11,24, corP2);
  baseP2[9] = criarCasa(10,23, 11,23, 10,22, 11,22, corP2);
  baseP2[10] = criarCasa(10,21, 11,21, 10,20, 11,20, corP2);
  baseP2[11] = criarCasa(8,21, 9,21, 8,20, 9,20, corP2);
  baseP2[12] = criarCasa(6,21, 7,21, 6,20, 7,20, corP2);
  baseP2[13] = criarCasa(4,21, 5,21, 4,20, 5,20, corP2);
  baseP2[14] = criarCasa(2,21, 3,21, 2,20, 3,20, corP2);
  baseP2[15] = criarCasa(0,21, 1,21, 0,20, 1,20, corP2);
  baseP2[16] = criarCasa(0,23, 1,23, 0,22, 1,22, corP2);
  baseP2[17] = criarCasa(0,25, 1,25, 0,24, 1,24, corP2);
  baseP2[18] = criarCasa(0,27, 1,27, 0,26, 1,26, corP2);
  baseP2[19] = criarCasa(0,29, 1,29, 0,28, 1,28, corP2);
  baseP2[20] = criarCasa(2,29, 2,28, 2,27, 2,26, 0);  // BRANCO
  baseP2[21] = criarCasa(2,25, 2,24, 2,23, 2,22, 0);  
  baseP2[22] = criarCasa(9,29, 9,28, 9,27, 9,26, 0);  
  baseP2[23] = criarCasa(9,25, 9,24, 9,23, 9,22, 0); 
  baseP2[24] = criarCasa(3,29, 4,29, 5,29, 6,29, 0);
  baseP2[25] = criarCasa(3,22, 4,22, 5,22, 6,22, 0);
  baseP2[26] = criarCasa(7,29, 8,29, 7,22, 8,22, 0);
  baseP2[27] = criarCasa(5,28, 5,27, 6,28, 6,27, 0);
  baseP2[28] = criarCasa(5,26, 5,25, 6,26, 6,25, 0);
  baseP2[29] = criarCasa(5,24, 5,23, 6,24, 6,23, 0);
  baseP2[30] = criarCasa(3,26, 3,25, 4,26, 4,25, 0);
  baseP2[31] = criarCasa(7,26, 7,25, 8,26, 8,25, 0);
  baseP2[32] = criarCasa(3,28, 3,27, 4,28, 4,27, corP2);  // VERDE
  baseP2[33] = criarCasa(7,28, 8,28, 7,27, 8,27, corP2);
  baseP2[34] = criarCasa(3,24, 4,24, 3,23, 4,23, corP2);
  baseP2[35] = criarCasa(7,24, 7,23, 8,24, 8,23, corP2);
}

void criarBaseP3() {
  baseP3 = new Casa[36];

  baseP3[0] = criarCasa(31,0, 30,0, 31,1, 30,1, corP3);
  baseP3[1] = criarCasa(29,0, 28,0, 29,1, 28,1, corP3);
  baseP3[2] = criarCasa(27,0, 26,0, 27,1, 26,1, corP3);
  baseP3[3] = criarCasa(25,0, 24,0, 25,1, 24,1, corP3);
  baseP3[4] = criarCasa(23,0, 22,0, 23,1, 22,1, corP3);
  baseP3[5] = criarCasa(21,0, 20,0, 21,1, 20,1, corP3);
  baseP3[6] = criarCasa(21,2, 20,2, 21,3, 20,3, corP3);
  baseP3[7] = criarCasa(21,4, 20,4, 21,5, 20,5, corP3);
  baseP3[8] = criarCasa(21,6, 20,6, 21,7, 20,7, corP3);
  baseP3[9] = criarCasa(21,8, 20,8, 21,9, 20,9, corP3);
  baseP3[10] = criarCasa(21,10, 20,10, 21,11, 20,11, corP3);
  baseP3[11] = criarCasa(23,10, 22,10, 23,11, 22,11, corP3);
  baseP3[12] = criarCasa(25,10, 24,10, 25,11, 24,11, corP3);
  baseP3[13] = criarCasa(27,10, 26,10, 27,11, 26,11, corP3);
  baseP3[14] = criarCasa(29,10, 28,10, 29,11, 28,11, corP3);
  baseP3[15] = criarCasa(31,10, 30,10, 31,11, 30,11, corP3);
  baseP3[16] = criarCasa(31,8, 30,8, 31,9, 30,9, corP3);
  baseP3[17] = criarCasa(31,6, 30,6, 31,7, 30,7, corP3);
  baseP3[18] = criarCasa(31,4, 30,4, 31,5, 30,5, corP3);
  baseP3[19] = criarCasa(31,2, 30,2, 31,3, 30,3, corP3);
  baseP3[20] = criarCasa(29,2, 29,3, 29,4, 29,5, 0);
  baseP3[21] = criarCasa(29,6, 29,7, 29,8, 29,9, 0);
  baseP3[22] = criarCasa(22,2, 22,3, 22,4, 22,5, 0);
  baseP3[23] = criarCasa(22,6, 22,7, 22,8, 22,9, 0);
  baseP3[24] = criarCasa(28,2, 27,2, 26,2, 25,2, 0);
  baseP3[25] = criarCasa(28,9, 27,9, 26,9, 25,9, 0);
  baseP3[26] = criarCasa(24,2, 23,2, 24,9, 23,9, 0);
  baseP3[27] = criarCasa(26,3, 26,4, 25,3, 25,4, 0);
  baseP3[28] = criarCasa(26,5, 26,6, 25,5, 25,6, 0);
  baseP3[29] = criarCasa(26,7, 26,8, 25,7, 25,8, 0);
  baseP3[30] = criarCasa(28,5, 28,6, 27,5, 27,6, 0);
  baseP3[31] = criarCasa(24,5, 24,6, 23,5, 23,6, 0);
  baseP3[32] = criarCasa(28,3, 28,4, 27,3, 27,4, corP3);
  baseP3[33] = criarCasa(24,3, 23,3, 24,4, 23,4, corP3);
  baseP3[34] = criarCasa(28,7, 27,7, 28,8, 27,8, corP3);
  baseP3[35] = criarCasa(24,7, 24,8, 23,7, 23,8, corP3);
}

void criarBaseP4() {
  baseP4 = new Casa[36];

  baseP4[0] = criarCasa(31,31, 30,31, 31,30, 30,30, corP4);
  baseP4[1] = criarCasa(29,31, 28,31, 29,30, 28,30, corP4);
  baseP4[2] = criarCasa(27,31, 26,31, 27,30, 26,30, corP4);
  baseP4[3] = criarCasa(25,31, 24,31, 25,30, 24,30, corP4);
  baseP4[4] = criarCasa(23,31, 22,31, 23,30, 22,30, corP4);
  baseP4[5] = criarCasa(21,31, 20,31, 21,30, 20,30, corP4);
  baseP4[6] = criarCasa(21,29, 20,29, 21,28, 20,28, corP4);
  baseP4[7] = criarCasa(21,27, 20,27, 21,26, 20,26, corP4);
  baseP4[8] = criarCasa(21,25, 20,25, 21,24, 20,24, corP4);
  baseP4[9] = criarCasa(21,23, 20,23, 21,22, 20,22, corP4);
  baseP4[10] = criarCasa(21,21, 20,21, 21,20, 20,20, corP4);
  baseP4[11] = criarCasa(23,21, 22,21, 23,20, 22,20, corP4);
  baseP4[12] = criarCasa(25,21, 24,21, 25,20, 24,20, corP4);
  baseP4[13] = criarCasa(27,21, 26,21, 27,20, 26,20, corP4);
  baseP4[14] = criarCasa(29,21, 28,21, 29,20, 28,20, corP4);
  baseP4[15] = criarCasa(31,21, 30,21, 31,20, 30,20, corP4);
  baseP4[16] = criarCasa(31,23, 30,23, 31,22, 30,22, corP4);
  baseP4[17] = criarCasa(31,25, 30,25, 31,24, 30,24, corP4);
  baseP4[18] = criarCasa(31,27, 30,27, 31,26, 30,26, corP4);
  baseP4[19] = criarCasa(31,29, 30,29, 31,28, 30,28, corP4);
  baseP4[20] = criarCasa(29,29, 29,28, 29,27, 29,26, 0);
  baseP4[21] = criarCasa(29,25, 29,24, 29,23, 29,22, 0);
  baseP4[22] = criarCasa(22,29, 22,28, 22,27, 22,26, 0);
  baseP4[23] = criarCasa(22,25, 22,24, 22,23, 22,22, 0);
  baseP4[24] = criarCasa(28,29, 27,29, 26,29, 25,29, 0);
  baseP4[25] = criarCasa(28,22, 27,22, 26,22, 25,22, 0);
  baseP4[26] = criarCasa(24,29, 23,29, 24,22, 23,22, 0);
  baseP4[27] = criarCasa(26,28, 26,27, 25,28, 25,27, 0);
  baseP4[28] = criarCasa(26,26, 26,25, 25,26, 25,25, 0);
  baseP4[29] = criarCasa(26,24, 26,23, 25,24, 25,23, 0);
  baseP4[30] = criarCasa(28,26, 28,25, 27,26, 27,25, 0);
  baseP4[31] = criarCasa(24,26, 24,25, 23,26, 23,25, 0);
  baseP4[32] = criarCasa(28,28, 28,27, 27,28, 27,27, corP4);
  baseP4[33] = criarCasa(24,28, 23,28, 24,27, 23,27, corP4);
  baseP4[34] = criarCasa(28,24, 27,24, 28,23, 27,23, corP4);
  baseP4[35] = criarCasa(24,24, 24,23, 23,24, 23,23, corP4);
}

void criarMolduras() {
  molduraP1 = new Casa[7];
  molduraP2 = new Casa[7];
  molduraP3 = new Casa[7];
  molduraP4 = new Casa[7];
  
  // BASE P1
  molduraP1[0] = criarCasa(0, 12, 1, 12, 2, 12, 3, 12, 2);
  molduraP1[1] = criarCasa(4, 12, 5, 12, 6, 12, 7, 12, 2);
  molduraP1[2] = criarCasa(8, 12, 9, 12, 10, 12, 11, 12, 2);
  molduraP1[3] = criarCasa(12, 12, 12, 11, 12, 10, 12, 9, 2);
  molduraP1[4] = criarCasa(12, 8, 12, 7, 12, 6, 12, 5, 2);
  molduraP1[5] = criarCasa(12, 4, 12, 3, 12, 2, 12, 1, 2);
  molduraP1[6] = criarCasa(12, 0, 12, 0, 12, 0, 12, 0, 2);
  
  //BASE P2
  molduraP2[0] = criarCasa(0, 19, 1, 19, 2, 19, 3, 19, 2);
  molduraP2[1] = criarCasa(4, 19, 5, 19, 6, 19, 7, 19, 2);
  molduraP2[2] = criarCasa(8, 19, 9, 19, 10, 19, 11, 19, 2);
  molduraP2[3] = criarCasa(12, 19, 12, 20, 12, 21, 12, 22, 2);
  molduraP2[4] = criarCasa(12, 23, 12, 24, 12, 25, 12, 26, 2);
  molduraP2[5] = criarCasa(12, 27, 12, 28, 12, 29, 12, 30, 2);
  molduraP2[6] = criarCasa(12, 31, 12, 31, 12, 31, 12, 31, 2);
  
  //BASE P3
  molduraP3[0] = criarCasa(19, 0, 19, 1, 19, 2, 19, 3, 2);
  molduraP3[1] = criarCasa(19, 4, 19, 5, 19, 6, 19, 7, 2);
  molduraP3[2] = criarCasa(19, 8, 19, 9, 19, 10, 19, 11, 2);
  molduraP3[3] = criarCasa(19, 12, 20, 12, 21, 12, 22, 12, 2);
  molduraP3[4] = criarCasa(23, 12, 24, 12, 25, 12, 26, 12, 2);
  molduraP3[5] = criarCasa(27, 12, 28, 12, 29, 12, 30, 12, 2);
  molduraP3[6] = criarCasa(31, 12, 31, 12, 31, 12, 31, 12, 2);
  
  //BASE P4
  molduraP4[0] = criarCasa(31, 19, 30, 19, 29, 19, 28, 19, 2);
  molduraP4[1] = criarCasa(27, 19, 26, 19, 25, 19, 24, 19, 2);
  molduraP4[2] = criarCasa(23, 19, 22, 19, 21, 19, 20, 19, 2);
  molduraP4[3] = criarCasa(19, 19, 19, 20, 19, 21, 19, 22, 2);
  molduraP4[4] = criarCasa(19, 23, 19, 24, 19, 25, 19, 26, 2);
  molduraP4[5] = criarCasa(19, 27, 19, 28, 19, 29, 19, 30, 2);
  molduraP4[6] = criarCasa(19, 31, 19, 31, 19, 31, 19, 31, 2);
  
  //FUNCOES EM CASCATA
  //criarCaminhoPrincipal();
  //criarLaterais();
  //criarFinais();
  //criarCentroTabuleiro();

}

// LATERAIS PERSONALIZADAS PARA O TABULEIRO 
void criarLaterais(){
  lateralP1 = new Casa[2];
  lateralP2 = new Casa[2];
  lateralP3 = new Casa[2];
  lateralP4 = new Casa[2];
  
  lateralP1[0] = criarCasa(0, 13, 0, 14, 0, 15, 0, 16, corP1);
  lateralP1[1] = criarCasa(0, 17, 0, 17, 0, 18, 0, 18, corP1);
  lateralP2[0] = criarCasa(13, 31, 14, 31, 15, 31, 16, 31, corP2);
  lateralP2[1] = criarCasa(17, 31, 17, 31, 18, 31, 18, 31, corP2);
  lateralP3[0] = criarCasa(13, 0, 14, 0, 15, 0, 16, 0, corP3);
  lateralP3[1] = criarCasa(17, 0, 17, 0, 18, 0, 18, 0, corP3);
  lateralP4[0] = criarCasa(31, 13, 31, 14, 31, 15, 31, 16, corP4);
  lateralP4[1] = criarCasa(31, 17, 31, 17, 31, 18, 31, 18, corP4);
}

// LATERAIS PERSONALIZADAS PARA O TABULEIRO 
void criarFinais(){
  finalP1 = new Casa[6];
  finalP2 = new Casa[6];
  finalP3 = new Casa[6];
  finalP4 = new Casa[6];
  
  finalP1[0] = criarCasa(3, 15, 4, 15, 3, 16, 4, 16, corP1);
  finalP1[1] = criarCasa(5, 15, 6, 15, 5, 16, 6, 16, corP1);
  finalP1[2] = criarCasa(7, 15, 8, 15, 7, 16, 8, 16, corP1);
  finalP1[3] = criarCasa(9, 15, 10, 15, 9, 16, 10, 16, corP1);
  finalP1[4] = criarCasa(11, 15, 12, 15, 11, 16, 12, 16, corP1);
  finalP1[5] = criarCasa(13, 15, 14, 15, 13, 16, 14, 16, corP1);
  
  finalP2[0] = criarCasa(15, 28, 16, 28, 15, 27, 16, 27, corP2);
  finalP2[1] = criarCasa(15, 26, 16, 26, 15, 25, 16, 25, corP2);
  finalP2[2] = criarCasa(15, 24, 16, 24, 15, 23, 16, 23, corP2);
  finalP2[3] = criarCasa(15, 22, 16, 22, 15, 21, 16, 21, corP2);
  finalP2[4] = criarCasa(15, 20, 16, 20, 15, 19, 16, 19, corP2);
  finalP2[5] = criarCasa(15, 18, 16, 18, 15, 17, 16, 17, corP2);
  
  finalP3[0] = criarCasa(15, 3, 16, 3, 15, 4, 16, 4, corP3);
  finalP3[1] = criarCasa(15, 5, 16, 5, 15, 6, 16, 6, corP3);
  finalP3[2] = criarCasa(15, 7, 16, 7, 15, 8, 16, 8, corP3);
  finalP3[3] = criarCasa(15, 9, 16, 9, 15, 10, 16, 10, corP3);
  finalP3[4] = criarCasa(15, 11, 16, 11, 15, 12, 16, 12, corP3);
  finalP3[5] = criarCasa(15, 13, 16, 13, 15, 14, 16, 14, corP3);
  
  finalP4[0] = criarCasa(28, 15, 28, 16, 27, 15, 27, 16, corP4);
  finalP4[1] = criarCasa(26, 15, 26, 16, 25, 15, 25, 16, corP4);
  finalP4[2] = criarCasa(24, 15, 24, 16, 23, 15, 23, 16, corP4);
  finalP4[3] = criarCasa(22, 15, 22, 16, 21, 15, 21, 16, corP4);
  finalP4[4] = criarCasa(20, 15, 20, 16, 19, 15, 19, 16, corP4);
  finalP4[5] = criarCasa(18, 15, 18, 16, 17, 15, 17, 16, corP4);
}

void criarCentroTabuleiro(){
  centroTabuleiro = new Casa[5]; //52
  
  centroTabuleiro[0] = criarCasa(15,15, 16,15, 15,16, 16,16, 1);
  centroTabuleiro[1] = criarCasa(14,14, 17,14, 14,17, 17,17, 1);
  centroTabuleiro[2] = criarCasa(13,13, 18,13, 13,18, 18,18, 1);
  centroTabuleiro[3] = criarCasa(14,13, 17,13, 14,18, 17,18, 1);
  centroTabuleiro[4] = criarCasa(13,14, 13,17, 18,14, 18,17, 1);
}

void ajusteCentroTabuleiro(){
  
  //ALINHA O CAMINHO FINAL COMO FLECHAS 
  centroTabuleiro[4].leds[0].setColor(cores[1], 1);
  centroTabuleiro[4].leds[1].setColor(cores[1], 1);
  centroTabuleiro[4].leds[2].setColor(cores[4], 1);
  centroTabuleiro[4].leds[3].setColor(cores[4], 1);
  
  centroTabuleiro[3].leds[0].setColor(cores[3], 1);
  centroTabuleiro[3].leds[1].setColor(cores[3], 1);
  centroTabuleiro[3].leds[2].setColor(cores[2], 1);
  centroTabuleiro[3].leds[3].setColor(cores[2], 1);
}

void criarCaminhoPrincipal(){
  caminhoPrincipal = new Casa[52];
  
  caminhoPrincipal[0] = criarCasa(3,13, 4,13, 3,14, 4,14, corP1); //VERMELHA
  caminhoPrincipal[1] = criarCasa(5,13, 6,13, 5,14, 6,14, 0);
  caminhoPrincipal[2] = criarCasa(7,13, 8,13, 7,14, 8,14, 0);
  caminhoPrincipal[3] = criarCasa(9,13, 10,13, 9,14, 10,14, 0);
  caminhoPrincipal[4] = criarCasa(11,13, 12,13, 11,14, 12,14, 0);
  
  caminhoPrincipal[5] = criarCasa(13,12, 14,12, 13,11, 14,11, 0);
  caminhoPrincipal[6] = criarCasa(13,10, 14,10, 13,9, 14,9, 0);
  caminhoPrincipal[7] = criarCasa(13,8, 14,8, 13,7, 14,7, 0);
  caminhoPrincipal[8] = criarCasa(13,6, 14,6, 13,5, 14,5, 0);
  caminhoPrincipal[9] = criarCasa(13,4, 14,4, 13,3, 14,3, 0);
  caminhoPrincipal[10] = criarCasa(13,2, 14,2, 13,1, 14,1, 0);
  caminhoPrincipal[11] = criarCasa(15,1, 16,1, 15,2, 16,2, 0);
  
  caminhoPrincipal[12] = criarCasa(17,1, 18,1, 17,2, 18,2, 0);
  caminhoPrincipal[13] = criarCasa(17,3, 18,3, 17,4, 18,4, corP3); //VERDE
  caminhoPrincipal[14] = criarCasa(17,5, 18,5, 17,6, 18,6, 0);
  caminhoPrincipal[15] = criarCasa(17,7, 18,7, 17,8, 18,8, 0);
  caminhoPrincipal[16] = criarCasa(17,9, 18,9, 17,10, 18,10, 0);
  caminhoPrincipal[17] = criarCasa(17,11, 18,11, 17,12, 18,12, 0);
  
  caminhoPrincipal[18] = criarCasa(19,13, 20,13, 19,14, 20,14, 0);
  caminhoPrincipal[19] = criarCasa(21,13, 22,13, 21,14, 22,14, 0);
  caminhoPrincipal[20] = criarCasa(23,13, 24,13, 23,14, 24,14, 0);
  caminhoPrincipal[21] = criarCasa(25,13, 26,13, 25,14, 26,14, 0);
  caminhoPrincipal[22] = criarCasa(27,13, 28,13, 27,14, 28,14, 0);
  caminhoPrincipal[23] = criarCasa(29,13, 30,13, 29,14, 30,14, 0);
  caminhoPrincipal[24] = criarCasa(29,15, 30,15, 29,16, 30,16, 0);
  
  caminhoPrincipal[25] = criarCasa(30,17, 29,17, 30,18, 29,18, 0);
  caminhoPrincipal[26] = criarCasa(28,17, 27,17, 28,18, 27,18, corP4);
  caminhoPrincipal[27] = criarCasa(26,17, 25,17, 26,18, 25,18, 0); //AMARELO
  caminhoPrincipal[28] = criarCasa(24,17, 23,17, 24,18, 23,18, 0);
  caminhoPrincipal[29] = criarCasa(22,17, 21,17, 22,18, 21,18, 0);
  caminhoPrincipal[30] = criarCasa(20,17, 19,17, 20,18, 19,18, 0);
  
  caminhoPrincipal[31] = criarCasa(17,19, 18,19, 17,20, 18,20, 0);
  caminhoPrincipal[32] = criarCasa(17,21, 18,21, 17,22, 18,22, 0);
  caminhoPrincipal[33] = criarCasa(17,23, 18,23, 17,24, 18,24, 0);
  caminhoPrincipal[34] = criarCasa(17,25, 18,25, 17,26, 18,26, 0);
  caminhoPrincipal[35] = criarCasa(17,27, 18,27, 17,28, 18,28, 0);
  caminhoPrincipal[36] = criarCasa(17,29, 18,29, 17,30, 18,30, 0);
  caminhoPrincipal[37] = criarCasa(16,30, 16,29, 15,30, 15,29, 0);
  
  caminhoPrincipal[38] = criarCasa(14,30, 14,29, 13,30, 13,29, 0);
  caminhoPrincipal[39] = criarCasa(14,28, 14,27, 13,28, 13,27, corP2); //AZUL
  caminhoPrincipal[40] = criarCasa(14,26, 14,25, 13,26, 13,25, 0);
  caminhoPrincipal[41] = criarCasa(14,23, 14,24, 13,23, 13,24, 0);
  caminhoPrincipal[42] = criarCasa(14,22, 14,21, 13,22, 13,21, 0);
  caminhoPrincipal[43] = criarCasa(14,20, 14,19, 13,20, 13,19, 0);
  
  caminhoPrincipal[44] = criarCasa(12,17, 12,18, 11,17, 11,18, 0);
  caminhoPrincipal[45] = criarCasa(10,17, 10,18, 9,17, 9,18, 0);
  caminhoPrincipal[46] = criarCasa(8,17, 8,18, 7,17, 7,18, 0);
  caminhoPrincipal[47] = criarCasa(6,17, 6,18, 5,17, 5,18, 0);
  caminhoPrincipal[48] = criarCasa(4,17, 4,18, 3,17, 3,18, 0);
  caminhoPrincipal[49] = criarCasa(2,17, 2,18, 1,17, 1,18, 0);
  caminhoPrincipal[50] = criarCasa(2,15, 2,16, 1,15, 1,16, 0);
  caminhoPrincipal[51] = criarCasa(2,14, 2,13, 1,14, 1,13, 0); 
}

void carregarListaGeraldeCasas(){
  todasAsCasas.clear();
  
  todasAsCasas.add(baseP1);
  todasAsCasas.add(baseP2);
  todasAsCasas.add(baseP3);
  todasAsCasas.add(baseP4);
  todasAsCasas.add(finalP1);
  todasAsCasas.add(finalP2);
  todasAsCasas.add(finalP3);
  todasAsCasas.add(finalP4);
  todasAsCasas.add(caminhoPrincipal);
  todasAsCasas.add(molduraP1);
  todasAsCasas.add(molduraP2);
  todasAsCasas.add(molduraP3);
  todasAsCasas.add(molduraP4);
  todasAsCasas.add(lateralP1);
  todasAsCasas.add(lateralP2);
  todasAsCasas.add(lateralP3);
  todasAsCasas.add(lateralP4);
  todasAsCasas.add(centroTabuleiro);
}
