shared
interface ListMultimap<Key, out Item>
        satisfies Multimap<Key, Item>
                & Correspondence<Key, List<Item>>
        given Key satisfies Object {

    shared actual formal
    Set<Key> keys;

    shared actual formal
    Map<Key, List<Item>> asMap;

    shared actual formal
    ListMultimap<Key, Item> clone();
}
