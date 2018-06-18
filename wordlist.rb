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
    index_list = list.index(word)
    index_list.nil? ? -1 : index_list
  end

  def to_s
    @alist.join('\n')
  end
end

arquivo = Wordlist.new('palavras.txt')
puts arquivo.word_search(arquivo.alist, 'todo')