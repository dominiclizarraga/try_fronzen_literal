ary = ["foo", "bar", "baz"]

p ary.map { it.upcase }

# => ["FOO", "BAR", "BAZ"]

# discussion: https://bugs.ruby-lang.org/issues/18980