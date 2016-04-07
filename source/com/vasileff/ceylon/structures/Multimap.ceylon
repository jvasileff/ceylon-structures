import com.vasileff.ceylon.structures.internal {
    eq
}
shared
interface Multimap<Key, out Item>
        satisfies Collection<Key->Item>
                & Correspondence<Key, Collection<Item>>
        given Key satisfies Object {

    shared formal
    Map<Key, {Item*}> asMap;

    shared actual default
    Boolean contains(Object entry)
        =>  if (is Object->Anything entry)
            then (asMap[entry.key]?.any((i) => eq(i, entry.item)) else false)
            else false;

    shared actual formal
    Boolean defines(Key key);

    shared default
    Boolean containsItem(Object item) => items.contains(item);

    shared actual formal
    Collection<Item> get(Key key);

    shared actual default
    Boolean empty => size == 0;

    // Must be distinct to support Correspondence.getAll()
    shared actual formal
    Set<Key> keys;

    //shared formal
    //Multiset<Key> keyMultiset;

    shared formal
    Collection<Item> items;

    shared actual formal
    Iterator<Key->Item> iterator();

    shared actual formal
    Integer size;

    shared actual default
    Boolean equals(Object that)
        =>  if (is Multimap<out Anything, Anything> that)
            then asMap.equals(that.asMap)
            else false;

    shared actual default
    Integer hash => asMap.hash;
}
