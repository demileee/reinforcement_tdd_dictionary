class Dictionary

  def initialize
    @entries = {}
    @keywords = []
  end

  def entries
    @entries
  end

  def keywords
    return @keywords.sort
  end

  def add(word_def)
    if word_def.kind_of?(Hash)
      @entries[word_def.first[0]] = word_def.first[1]
      @keywords << word_def.first[0]
    elsif word_def.kind_of?(String)
      @entries[word_def] = nil
      @keywords << word_def
    end
  end

  def include?(word)
    true ? @keywords.include?(word) : false
  end

  def find(word)
    return @entries.select {|k, v| k.include?(word) }
  end

end
