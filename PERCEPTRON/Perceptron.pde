class Perceptron {
  float[] pesos = new float[2];
  float lr = 0.1;
  
  Perceptron() {
    //Inicializar pesos
    for (int i=0; i<pesos.length; i++) {
      pesos[i] = random(-1,1);
    }
  }
  
  int salida(float[] inputs) {
    float sum=0;
    for (int i=0; i< pesos.length; i++) {
      sum += inputs[i]*pesos[i];
    }
    int output = sign(sum);
    return output;
  }
  
  //Funcion activacion
  int sign(float n){
    if (n>=0) {
      return 1;
    } else {
      return -1;
    }
  }
  
  void train(float[] inputs, int target){
    int guess = salida(inputs);
    int error = target - guess;
    //Actualizar pesos y bias
    for (int i=0; i<pesos.length; i++){
      pesos[i] += error * inputs[i] * lr;
    }
  }
}
