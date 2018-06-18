# Classe Wordlist
class Wordlist
  def initialize(filename)
    @alist = File.open(filename).read.split("\n")
  end

  def check(word)
    if @alist.grep(/#{word}/).!empty?
      return TRUE
    end
    FALSE
  end

  def to_s
    @alist.join('\n')
  end
end

arquivo = Wordlist.new('palavras.txt')
puts arquivo.check("nano")
