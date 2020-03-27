package perceptron_multisalida;
import java.util.Random;
import java.util.ArrayList;

public class Perceptron_multisalida {

    private boolean parar = false;
    private int[] weights = new int[6];
    private int[] bias = new int[6];


    public Perceptron_multisalida() {

        // Inicializar pesos y bias
        for (int i = 0; i < 6; i++) {
                this.weights[i] = 0;
            
        }
        for (int i = 0; i < 6; i++) {
            this.bias[i] = 0;
        }
    }
    


    public void Proceso() {


        //Mientras la condicion de parar sea falsa
        while (!this.parar) {
            for (int i=0; i< weights.length; i++) {

         // Calcular la Activacion para cada unidad de salidad
            	salida(weights);

            }
        }
    }
 // Calcular la Activacion para cada unidad de salidad
	private int salida(int[] inputs) {
		float sum=0;
		for (int j=0; j< weights.length; j++) {
			sum += inputs[j]*weights[j];
		}
		int output = sign(sum);
		return output;
		
	}

	//funcion activacion
	public static int sign(float n){
		if (n>=0) {
			return 1;
		} else {
			return -1;
		}
	}

    public int[] getPesos() {
        return this.weights;
    }

    public int[] getBias() {
        return this.bias;
    }

}
