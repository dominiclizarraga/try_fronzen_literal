# Ruby 3.4.1 Frozen Strings Demo

This repository demonstrates the new string freezing behavior introduced in Ruby 3.4.1, showing how string mutations are handled both with and without the `frozen_string_literal` pragma.

## Setup

1. Ensure you have rbenv installed and both Ruby versions available:
```bash
rbenv install 3.3.6
rbenv install 3.4.1
```

2. Repository structure:
```
try_frozen_literal/
├── version_3.3.6/
│   └── string_mutation.rb
└── version_3.4.1/
    ├── string_mutation.rb
    ├── string_mutation_with_frozen.rb
    └── string_mutation_without_frozen.rb
```

## Running the Examples

### Basic String Mutation Demo (3.4.1)

```bash
cd version_3.4.1
ruby string_mutation.rb
```
This shows the default behavior.

### With Deprecation Warnings (3.4.1)

```bash
ruby -W:deprecated string_mutation.rb
```
This shows warnings about future string freezing.

### Object ID Tracking Demos (3.4.1)

Without frozen strings:
```bash
ruby string_mutation_without_frozen.rb
```

With frozen strings:
```bash
ruby string_mutation_with_frozen.rb
```

### Compare with Ruby 3.3.6

```bash
cd ../version_3.3.6
rbenv local 3.3.6
ruby string_mutation.rb
```

## Key Differences to Observe

1. **Object IDs**
   - Without frozen strings: Modified strings keep the same object_id
   - With frozen strings: Any modification creates a new string with a new object_id

2. **Warning Behavior**
   - 3.3.6: No warnings about string mutations
   - 3.4.1: Shows deprecation warnings with `-W:deprecated` flag

3. **Error Behavior**
   - Without `frozen_string_literal: true`: Mutations work
   - With `frozen_string_literal: true`: Mutations raise FrozenError

## MAIN TAKEAWAYS

1. Ruby 3.3.6: "You can modify strings unless you explicitly say not to with the comment"
2. Ruby 3.4.1: "You can still modify strings, but we're warning you that soon you won't be able to"
3. Future Ruby: "All strings will be frozen by default, no comment needed!"

## Common Operations Demonstrated

- Direct string mutation with `<<`
- String transformation with `upcase!` vs `upcase`
- String concatenation with `+=`
- String duplication with `dup`

Each file demonstrates these operations differently, showing how to work with strings both in the current Ruby style and in the future immutable style.

## Future-Proof Code Tips

1. Use `dup` when you need a mutable copy of a string
2. Prefer non-mutating methods (`upcase` vs `upcase!`)
3. Create new strings instead of modifying existing ones
4. Use string concatenation with `+` instead of `<<` for combining strings
