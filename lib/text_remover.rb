module TextRemover
   def self.remove_text_after_symbols(input_string, symbols)
     symbols.each do |symbol|
       next if symbol == ','
       input_string = input_string.split(symbol)[0].strip if input_string.include?(symbol)
     end
     input_string
   end
end