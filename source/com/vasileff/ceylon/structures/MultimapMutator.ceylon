import ceylon.collection {
    MutableSet
}

shared
interface MultimapMutator<Key, in Item>
        satisfies Multimap<Key, Anything>
        given Key satisfies Object {

    shared actual formal
    MutableSet<Key> keys;

    shared formal
    void clear();

    shared formal
    Boolean put(Key key, Item item);

    shared default
    Boolean putEntry(Key -> Item entry)
        =>  put(entry.key, entry.item);

    shared default
    Boolean putEntries({<Key -> Item>*} entries) {
        variable value result = false;
        for (key -> item in entries) {
            result = put(key, item) || result;
        }
        return result;
    }

    shared default
    Boolean putMultiple(Key key, {Item*} items) {
        variable value result = false;
        for (item in items) {
            result = put(key, item) || result;
        }
        return result;
    }

    shared formal
    Boolean remove(Key key, Item item);

    shared formal
    Collection<Anything> removeAll(Key key);

    shared default
    Boolean removeEntry(Key -> Item entry)
        =>  remove(entry.key, entry.item);

    shared default
    Boolean removeEntries({<Key -> Item>*} entries) {
        variable value result = false;
        for (key->item in entries) {
            result = remove(key, item) || result;
        }
        return result;
    }

    shared formal
    Collection<Anything> replaceItems(Key key, {Item*} items);
}
