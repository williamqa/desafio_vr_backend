require_relative '../../lib/text_remover'

Dado('uma string de entrada {string}') do |string|
    @input_string = string
end

Dado('os marcadores {string}') do |symbols_string|
    @symbols = symbols_string.scan(/./)
end

Então('a saída esperada é {string}') do |string|
    @result = TextRemover.remove_text_after_symbols(@input_string, @symbols)
    expect(@result).to eq(string)
end