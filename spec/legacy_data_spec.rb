require('rspec')
require('legacy_data')

describe('legacy_data') do
  it('takes a hash with an array of values and converts it to a key/value pair') do
    legacy_data({ 1 => ['a']}).should(eq({'a' => 1}))
  end

  it('takes a hash with 2 pairs in an array and converts both pairs key/value pairs') do
    legacy_data({ 1 => ["a"], 2 => ["d"]}).should(eq({"a" => 1, "d" => 2}))
  end

  it('can deal with lots of elements') do
    legacy_data({ 1 => ["a"], 2 => ["d"], 3 => ["b"], 4 => ["f"] }).should(eq("a" => 1, "d" => 2, "b" => 3, "f" => 4))
  end

  it('can handle multiple value keys') do
    legacy_data({ 1 => ["a", "e", "i", "o"]}).should(eq({"a" => 1, "e" => 1, "i" => 1, "o" => 1}))
  end

  it('is finished') do
    legacy_data({ 1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2  => ["D", "G"],
  3  => ["B", "C", "M", "P"],
  4  => ["F", "H", "V", "W", "Y"],
  5  => ["K"],
  8  => ["J", "X"],
  10 => ["Q", "Z"]
}).should(eq({ "a" => 1, "b" => 3,  "c" => 3, "d" => 2, "e" => 1,
  "f" => 4, "g" => 2,  "h" => 4, "i" => 1, "j" => 8,
  "k" => 5, "l" => 1,  "m" => 3, "n" => 1, "o" => 1,
  "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1,
  "u" => 1, "v" => 4,  "w" => 4, "x" => 8, "y" => 4,
  "z" => 10
}))
  end
end
