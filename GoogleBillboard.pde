public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
   for (int i=0; i<110; i++) {
    String digits = e.substring(i, i+10);
    double doubledigits = Double.parseDouble(digits);
    if (isPrime(doubledigits)) {
    	System.out.println(doubledigits);
    	break;
    }
   } 
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double num)  
{
  int count = 0;
  if (num==1) {
    return false;
  }
  for (int i=1; i<=Math.sqrt(num); i++) {
    if (num%i==0) {
      count++;
    }
  }
  if (count==1) {
    return true;
  } else {
    return false;
  }
}