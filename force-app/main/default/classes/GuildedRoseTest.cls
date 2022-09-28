@isTest
private class GuildedRoseTest {

    @isTest
    static void foo(){
        List<Item__c> items = new List<Item__c> { new Item__c ( Name = 'foo', SellIn__c = 0, Quality__c = 0 ) };
        GildedRose store = new GildedRose(Items);
        store.UpdateQuality();
        System.assertEquals('fixme', Items[0].Name);
    }

}
