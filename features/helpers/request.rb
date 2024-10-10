def remove_after_symbols(input_string, symbols)
    regex = Regexp.union(symbols.map { |symbol| Regexp.escape(symbol) })
    input_string.split(regex).first.strip
  end