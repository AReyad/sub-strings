# Sub-Strings

A tool that matches dictionary words appearing as substrings in a user's input, and counts how many times they appear.

## About

This project is part of the Ruby Programming lessons of [The Odin Project](https://www.theodinproject.com/lessons/ruby-sub-strings) curriculum.

## How it works

- Takes a predefined array `(dictionary)`
- Accepts user input
- Matches and counts dictionary words found as substrings in the input string
- Returns results as a hash with word counts
- Returns a message when no matches found.

## Examples

```ruby
substrings("Below", dictionary)
# => {"below" => 1, "low" => 1}

substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1}

substrings("Larry", dictionary)
# => "No matches found"
```
