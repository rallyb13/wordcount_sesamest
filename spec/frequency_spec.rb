require('rspec')
require('frequency')

describe('String#frequency') do
  it('will recognize there is a word in a string') do
    expect(("What the bleep?").frequency("the")).to(eq(1))
  end

  it('will recognize a partial word as the keyword') do
    expect(("But beds are so warm!").frequency("bed")).to(eq(1))
  end

  it('will recognize the word even if capitalized') do
    expect(("Yeah, Benjamin IS serious about this!").frequency("benjamin")).to(eq(1))
  end

  it('will count a word that appears multiple times') do
    expect(("Who's on first. What's on second. I-don't-know's on third.").frequency("on"))
      .to(eq(5))
  end

  it('will count a word even if it begins or ends the sentence') do
    expect(("Party Party Party it's a nonstop coding party").frequency("party"))
      .to(eq(4))
  end

  it('will count a word even if that word is entered in uppercase') do
    expect(("This little piggy went 'wee, wee, wee' all the way home.").frequency("WEE"))
      .to(eq(3))
  end

  it('will return 0 if word is not present') do
    expect(("Third base!").frequency("who")).to(eq(0))
  end

end
