require('pry')

class String
  define_method(:find_and_replace) do |find, replace|

    self.gsub!(find,replace)


  end
end
