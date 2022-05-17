require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    (self.split (/[.?!]/)).filter {|string| string != ""}.size
  end
end


#p "This is a string! It has three sentences. Right?".count_sentences
#p 'This, well, is a sentence. This is too!! And so is this, I think? Woo...'.count_sentences