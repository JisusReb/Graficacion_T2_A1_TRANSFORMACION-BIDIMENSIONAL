float xPos = 200;  // Posición inicial en X
float yPos = 200;  // Posición inicial en Y
float scaleFactor = 1.0;  // Factor de escala inicial
float rotationAngle = 0.0;  // Ángulo de rotación inicial
float cortarX = 0.0;  // Valor de sesgado en X
float cortarY = 0.0;  // Valor de sesgado en Y
float intensidad = 0;
boolean aumentar = true;//Aumenta la Intensidad del color del Background

void setup() {
  size(400, 400);
}

void draw() {  
  // Dibuja un cuadrado en la posición actual
  rectMode(CENTER);
  float rojo = random(0, 255);
  float verde = random(0, 255);
  float azul = random(0, 255);
  background(intensidad, 280, 170);
  stroke(intensidad, 0,0);
  fill(rojo, verde, azul);
  translate(xPos, yPos);
  scale(scaleFactor);
  rotate(rotationAngle);
  shearX(cortarX);
  shearY(cortarY);
  rect(0, 0, 50, 50);
  
    if (intensidad == 255){
    aumentar = false;
  }else if (intensidad == 0 ){
    aumentar = true;
  }
  
  if (aumentar ){
      intensidad += 1;
  }else {
    intensidad -= 1;
  }
}

//Funcion de teclas
void keyPressed() {
  if (key == 'w' || key == 'W') {
    // Traslación hacia arriba
    yPos -= 10;
  } else if (key == 's' || key == 'S') {
    // Traslación hacia abajo
    yPos += 10;
  } else if (key == 'a' || key == 'A') {
    // Traslación hacia la izquierda
    xPos -= 10;
  } else if (key == 'd' || key == 'D') {
    // Traslación hacia la derecha
    xPos += 10;
  } else if (key == '+') {
    // Escalamiento hacia arriba
    scaleFactor += 0.1;
  } else if (key == '-') {
    // Escalamiento hacia abajo
    scaleFactor -= 0.1;
  } else if (key == 'r' || key == 'R') {
    // Rotación en sentido de las manecillas del reloj
    rotationAngle += radians(10);
  } else if (key == 't' || key == 'T') {
    // Rotación en sentido contrario a las manecillas del reloj
    rotationAngle -= radians(10);
  } else if (key == 'x' || key == 'X') {
    // Sesgado en X
    cortarX += 0.1;
  } else if (key == 'z' || key == 'Z') {
    // Sesgado en Y
    cortarY += 0.1;
  }
}
