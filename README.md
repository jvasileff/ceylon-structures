[![Build Status](https://travis-ci.org/jvasileff/ceylon-structures.svg?branch=master)](https://travis-ci.org/jvasileff/ceylon-structures)
# Ceylon Structures
A Supplementary Collections Module for [Ceylon](http://ceylon-lang.org).

This module was inspired by and adapted from [Google
Guava](https://github.com/google/guava) under the Apache License Version 2.0.

Currently implemented types are:

* `LinkedListMultimap<Key, Item>`: a mutable `Collection<Key->Item>` and
  `Correspondence` from `Key` to `MutableList<Item>` that supports deterministic
  iteration order for both keys and items.

* `HashMultimap<Key, Item>`: a mutable `Collection<Key->Item>` and
  `Correspondence` from `Key` to `MutableSet<Item>` that does not store duplicate
  `key->item` entries.

### License

The content of this repository is released under the ASL v2.0 as provided in
the LICENSE file that accompanied this code.

By submitting a "pull request" or otherwise contributing to this repository,
you agree to license your contribution under the license mentioned above.
