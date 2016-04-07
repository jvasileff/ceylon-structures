shared
interface SetMultimap<Key, out Item>
        satisfies Multimap<Key, Item>
                & Correspondence<Key, Set<Item>>
        given Key satisfies Object
        given Item satisfies Object {

    shared actual formal
    Set<Key> keys;

    shared formal
    Set<Key->Item> entries;

    shared actual formal
    Map<Key, Set<Item>> asMap;

    shared actual formal
    SetMultimap<Key, Item> clone();
}
