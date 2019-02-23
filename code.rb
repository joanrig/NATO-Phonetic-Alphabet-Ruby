#from CodeWars/ Kata https://www.codewars.com/kata/nato-phonetic-alphabet-ruby/train/ruby
#Error at this point: Test Results: Expected: "One Two Tree", instead got: []



ALPHABET = %w(Alpha Bravo Charlie Delta Echo Foxtrot Golf Hotel India Juliet Kilo Lima Mike November Oscar Papa Quebec Romeo Sierra Tango Uniform Victor Whiskey XRay Yankee Zulu Zero One Two Tree Four Fife Six Seven Eight Niner)

def nato(message)#=> 123abc??
  array = message.chars#=> [1, 2, 3, "a", "b", "c"]
  answer = []
  
  nato_letters = ALPHABET[0..25]
  nato_numbers = ALPHABET[26..36]
    
  array.each_with_index do |char|
    
    if char.match(/\d/)
      answer<< nato_numbers[char]
    
    elsif nato_letters.include?(char)
      answer<< nato_letters.find {|word| word[0] = char.upcase}
    end
  end      
  answer
end
            
