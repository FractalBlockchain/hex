# hex

## Usage

```bash
irb(main):001:0> require "hex"
=> true
irb(main):002:0> Hex.encode("123")
=> "313233"
irb(main):003:0> Hex.decode("313233")
=> "123"
irb(main):004:0> Hex.decode("")
=> ""
irb(main):005:0> Hex.decode("Z")
Hex::EncodingError (Hex::EncodingError)
```

## Testing

```bash
➜  hex rake
Run options: --seed 23696

# Running:

.....

Finished in 0.001272s, 3930.8175 runs/s, 3930.8175 assertions/s.
5 runs, 5 assertions, 0 failures, 0 errors, 0 skips
```

## Linting

```bash
➜  hex bundle exec rubocop
Inspecting 4 files
....

4 files inspected, no offenses detected
```
