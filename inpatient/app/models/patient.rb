class Patient < ActiveRecord::Base
  #generate a randomized string of alphanumeric characters
  def randomize(length=5)
    raise "cannot create a string negative value" if length <= 0

    array_of_chars = ("A".."Z").to_a + ("0".."9").to_a
    random_string = ""
    1.upto(length) do
      random_string << array_of_chars[rand(array_of_chars.size-1)]
    end
    return random_string
  end

  def generate_admission_number
    admission_number = randomize
    self.admission_number =  admission_number[0..1]+"-"+ admission_number[2..-1]
  end
end
