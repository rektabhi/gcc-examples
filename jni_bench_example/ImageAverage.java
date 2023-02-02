package jni_bench_example;

public class ImageAverage {

   private static final int N = 10000;
   private static final int ITER = 100;

   static {
      System.loadLibrary("example");
   }
 
   private native int calculateAverage(int[][] image);
 
   public static void main(String[] args) {
      ImageAverage avg = new ImageAverage();
      int[][] image = new int[N][N];
      for (int i = 0; i < N; i++) {
         for (int j = 0; j < N; j++) {
            image[i][j] = (i+j) % 255;
         }
      }
      long totalTime = 0;
      for (int i = 0; i < ITER; i++) {
         long start = System.currentTimeMillis();
         int average = avg.calculateAverage(image);
         long end = System.currentTimeMillis();
         System.out.println("Iteration: " + ITER + " Average: " + average + " Time: " + (end-start));
         totalTime += (end-start);
      }
      System.out.println("Average time per iteration: " + (totalTime / ITER));
   }
}
