public with sharing class GildedRose {

    List<Item__c> Items;
    public GildedRose(List<Item__c> items)
    {
        this.Items = items;
    }

    public void UpdateQuality()
    {
        for (Integer i = 0; i < Items.size(); i++)
        {
            if (Items[i].Name != 'Aged Brie' && Items[i].Name != 'Backstage passes to a TAFKAL80ETC concert')
            {
                if (Items[i].Quality__c > 0)
                {
                    if (Items[i].Name != 'Sulfuras, Hand of Ragnaros')
                    {
                        Items[i].Quality__c = Items[i].Quality__c - 1;
                    }
                }
            }
            else
            {
                if (Items[i].Quality__c < 50)
                {
                    Items[i].Quality__c = Items[i].Quality__c + 1;

                    if (Items[i].Name == 'Backstage passes to a TAFKAL80ETC concert')
                    {
                        if (Items[i].SellIn__c < 11)
                        {
                            if (Items[i].Quality__c < 50)
                            {
                                Items[i].Quality__c = Items[i].Quality__c + 1;
                            }
                        }

                        if (Items[i].SellIn__c < 6)
                        {
                            if (Items[i].Quality__c < 50)
                            {
                                Items[i].Quality__c = Items[i].Quality__c + 1;
                            }
                        }
                    }
                }
            }

            if (Items[i].Name != 'Sulfuras, Hand of Ragnaros')
            {
                Items[i].SellIn__c = Items[i].SellIn__c - 1;
            }

            if (Items[i].SellIn__c < 0)
            {
                if (Items[i].Name != 'Aged Brie')
                {
                    if (Items[i].Name != 'Backstage passes to a TAFKAL80ETC concert')
                    {
                        if (Items[i].Quality__c > 0)
                        {
                            if (Items[i].Name != 'Sulfuras, Hand of Ragnaros')
                            {
                                Items[i].Quality__c = Items[i].Quality__c - 1;
                            }
                        }
                    }
                    else
                    {
                        Items[i].Quality__c = Items[i].Quality__c - Items[i].Quality__c;
                    }
                }
                else
                {
                    if (Items[i].Quality__c < 50)
                    {
                        Items[i].Quality__c = Items[i].Quality__c + 1;
                    }
                }
            }
        }
    }
}
