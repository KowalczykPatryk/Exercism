class Lasagna
{
    // TODO: define the 'ExpectedMinutesInOven()' method
    public int ExpectedMinutesInOven() => 40;


    // TODO: define the 'RemainingMinutesInOven()' method
    public int RemainingMinutesInOven(int minutesIn) => 40 - minutesIn;


    // TODO: define the 'PreparationTimeInMinutes()' method
    public int PreparationTimeInMinutes(int layers) => 2 * layers;


    // TODO: define the 'ElapsedTimeInMinutes()' method
    public int ElapsedTimeInMinutes(int layers, int minutesIn) => 2 * layers + minutesIn;

}
