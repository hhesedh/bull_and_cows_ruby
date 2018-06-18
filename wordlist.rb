# Classe Wordlist
class Wordlist
  attr_reader :alist

  def initialize(filename)
    @alist = File.open(filename).read.split("\n")
  end

  def check(word)
    @alist.grep(/#{word}/).empty? ? false : true
  end

  def word_search(list, word)
    list.index(word).nil? ? -1 : list.index(word)
  end

  def to_s
    @alist.join('\n')
  end
end
