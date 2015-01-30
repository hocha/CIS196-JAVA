# CIS196-JAVA
The assignment was to convert an existing Java code into ruby.
For this assignment, I took a java code about classes and objects and converted it.

I found a file saved on my computer titled PezDispener.java
The original  code is:

public class PezDispenser {    
    private int currentAmtCandy;
    private int capacity;
    private String name;

    // constructor
    // name - the name of the pez dispenser
    public PezDispenser(String name) {
        this.name = name;
        capacity = 10;
    }

    // getter for the name of the pez dispenser
    public String getName() { return name; }

    // getter for the amount of candy in the pez dispenser
    public int getCurrentAmtCandy() { return currentAmtCandy; }

    // completely load the Pez dispenser
    public void load() {
        this.currentAmtCandy = this.capacity;
    }

    // load n new candies into the pez dispenser
    // returns a boolean whether or not the amount was added to the pez dispenser
    public boolean load(int n) {
        if (n >= 1 && currentAmtCandy + n <= capacity) {
            currentAmtCandy += n;
            return true;
        }
        return false;
    }

    // dispense one candy
    // returns a boolean whether or not one candy was dispensed
    public boolean dispense() {
        if (currentAmtCandy > 0) {
            currentAmtCandy--;
            return true;
        }
        return false;
    }

    // Returns a string representing the pez dispenser
    public String toString() {
        return "Pez Dispenser " + name + " contains " + currentAmtCandy + " candies";
    }

    public static void main(String[] args) {
        PezDispenser buzz = new PezDispenser("Buzz");
        System.out.println(buzz); // automatically calls buzz.toString()
        
        System.out.println("Loading one candy...");
        buzz.load(1);
        System.out.println(buzz);
        
        System.out.println("Loading candy to capacity...");
        buzz.load();
        System.out.println(buzz);
        
        System.out.println("Loading one candy...");
        buzz.load(1);
        System.out.println(buzz);
        
        System.out.println("Dispensing one candy...");
        buzz.dispense();
        System.out.println(buzz);
    }
}

Just to summarize: 
This Java program set up 
  a PezDispensor class
  a constructor for it that would pass in a string to set the name
  and methods to 
    return the name
    return the current amount of candy
    fill the whole dispensor
    load a few candies and return whether it was successful
    and dispense a candy and return whether it was successful. 
Afterwards, in the main method, it 
  initialized a dispenser named buzz 
  had it add 1 candy and show the current count
  had it add another candy and show the current count
  and had it then dispense a candy and show the current count.
It had print statements for each of those steps. 


I started with building the class, based on what we had seen in task.rb.

I got a litle bit confused about the variables: name, capacity, and currentAmtCandy. It took me a bit of back and forth to 
decide where to make the variables (either @@ or @, class or instance) but I thought they made more sense as instance variables
because they should be distinct for each initialized pez dispenser.
I made sure to set up an attr_accessor line to work with the instance variables. 

I set up the constructor, with 10 as the constant capacity, and moved on to the methods. 
They were fairly easy to implement - they were similar to the ones created in task.rb, so I used that as a reference for 
returning the name and the current amount. Making the load function just meant setting the current amount = to the capacity.
The add function was structured very similarly to the original java - I was able to set up my if-else statements and have 
the function update the capacity as well as return the proper boolean. Same for the dispense method.
For to_string, I made sure the change the notation and add the proper #{} so that i could print the value of the variable 
instead of the variable name. 

After setting up the class, I started implementing the main. I initialized a dispenser named "buzz" and then called my methods
to load 1 candy and show how many, load 1 more candy and show how many, and dispense a candy and show how many.

Problems: 
I had an extra "," attr_accessor line - my code read 
  attr_accessor :currentAmtCandy,  :capacity, :name, 
    instead of 
  attr_accessor :currentAmtCandy,  :capacity, :name
This mistake was giving me TONS of problems. First, it complained that when I inititalized the Buzz dispenser, I was passing in 1
argument when I was supposed to be passing in 0. I temporarily got rid of that in order to finish checking the rest of the code,
and i recieved errors about the "+" being an undefined method. I tried debugging for 20 minutes before noticing the extra comma.


