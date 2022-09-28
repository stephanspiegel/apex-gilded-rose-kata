public with sharing class Item {
    public String Name { get; set; }
    public Integer SellIn { get; set; }
    public Integer Quality { get; set; }

    public Item(String Name, Integer SellIn, Integer Quality){
        this.Name = Name;
        this.SellIn = SellIn;
        this.Quality = Quality;
    }

    public override String toString()
    {
        return this.Name + ', ' + this.SellIn + ', ' + this.Quality;
    }  
}
