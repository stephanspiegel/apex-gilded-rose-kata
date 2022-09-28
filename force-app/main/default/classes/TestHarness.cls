public with sharing class TestHarness {

    public static void Run()
    {
        System.debug('OMGHAI!');

        List<Item__c> Items = new List<Item__c>{
            new Item__c (Name = '+5 Dexterity Vest', SellIn__c = 10, Quality__c = 20),
            new Item__c (Name = 'Aged Brie', SellIn__c = 2, Quality__c = 0),
            new Item__c (Name = 'Elixir of the Mongoose', SellIn__c = 5, Quality__c = 7),
            new Item__c (Name = 'Sulfuras, Hand of Ragnaros', SellIn__c = 0, Quality__c = 80),
            new Item__c (Name = 'Sulfuras, Hand of Ragnaros', SellIn__c = -1, Quality__c = 80),
            new Item__c
            (
                Name = 'Backstage passes to a TAFKAL80ETC concert',
                SellIn__c = 15,
                Quality__c = 20
            ),
            new Item__c
            (
                Name = 'Backstage passes to a TAFKAL80ETC concert',
                SellIn__c = 10,
                Quality__c = 49
            ),
            new Item__c
            (
                Name = 'Backstage passes to a TAFKAL80ETC concert',
                SellIn__c = 5,
                Quality__c = 49
            ),
            // this conjured item does not work properly yet
            new Item__c (Name = 'Conjured Mana Cake', SellIn__c = 3, Quality__c = 6)
        };

        GildedRose store = new GildedRose(Items);

        for (Integer i = 0; i < 31; i++)
        {
            System.debug('-------- day ' + i + ' --------');
            System.debug('name, sellIn, quality');
            for (Integer j = 0; j < Items.size(); j++)
            {
                System.debug(printItem(Items[j]));
            }
            System.debug('');
            store.UpdateQuality();
        }
    }

    public static String printItem(Item__c item){
        return item.Name + ', ' + item.SellIn__c + ', ' + item.Quality__c;
    }
}
