class String
  define_method(:frequency) do |keyword|
  bookended = "!;".concat(self).concat(";!")
  lowcase=bookended.downcase()
  word_out_array = lowcase.split(keyword.downcase())
  word_out_array.length().-(1)

  end
end
