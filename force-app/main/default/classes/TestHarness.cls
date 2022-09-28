public with sharing class TestHarness {

    public static void Run()
    {
        System.debug('OMGHAI!');

        List<Item> Items = new List<Item>{
            new Item('+5 Dexterity Vest', 10, 20),
            new Item('Aged Brie', 2, 0),
            new Item('Elixir of the Mongoose', 5, 7),
            new Item('Sulfuras, Hand of Ragnaros', 0, 80),
            new Item('Sulfuras, Hand of Ragnaros', -1, 80),
            new Item('Backstage passes to a TAFKAL80ETC concert', 15, 20),
            new Item('Backstage passes to a TAFKAL80ETC concert', 10, 49),
            new Item('Backstage passes to a TAFKAL80ETC concert', 5, 49),
            // this conjured item does not work properly yet
            new Item ('Conjured Mana Cake', 3, 6)
        };

        GildedRose store = new GildedRose(Items);

        for (Integer i = 0; i < 31; i++)
        {
            System.debug('-------- day ' + i + ' --------');
            System.debug('name, sellIn, quality');
            for (Integer j = 0; j < Items.size(); j++)
            {
                System.debug(Items[j]);
            }
            System.debug('');
            store.UpdateQuality();
        }
    }
}
