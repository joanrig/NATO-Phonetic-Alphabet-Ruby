#from CodeWars/ Kata https://www.codewars.com/kata/nato-phonetic-alphabet-ruby/train/ruby
#Error at this point: Test Results:
#Expected: "One Two Tree", instead got: ["123"]


ALPHABET = %w(Alpha Bravo Charlie Delta Echo Foxtrot Golf Hotel India Juliet Kilo Lima Mike November Oscar Papa Quebec Romeo Sierra Tango Uniform Victor Whiskey XRay Yankee Zulu Zero One Two Tree Four Fife Six Seven Eight Niner)

def nato(message)#=> 123abc??
  array = message.split(" ")#=> [1, 2, 3, "a", "b", "c"]
  array.keep_if {|el| el =~ /[a-zA-Z0-9]/}
    
  num_words = ALPHABET.pop(10) 
  #%w(Zero One Two Tree Four Fife Six Seven Eight Niner)
  #array = [1, 2, 3, "a", "b", "c"]
  array.each_with_index do |el, index| 
    if el.to_i =~ /[0-9]/
      el = num_words[el] #ie 3 = num_words[3] = "Tree"
    end
    array
  end
end
            
#   ALPHABET.each do |word|
#     array.each do |el|
#       el = word if word[0] == el.upcase
#     end
#   end
#   array
# end
