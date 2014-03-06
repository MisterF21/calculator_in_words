def word_calculator(string)
  operator_hash = {"plus" => "+",
                   "minus" => "-", 
                   "divided" => "/", 
                    "times" => "*", 
                    "multiplied" => "*", 
                    "power?" => "**",
                    "power" => "**" }
  operator = ""

  string.split.each do |i|
    if operator_hash[i] != nil
     operator = operator_hash[i]
    end
  end

  
    new_array = string.split(/[^\d]+/)
    new_array.shift

    # new_array.map{|chr| chr.to_i}
    float_array = new_array.map{|f| f.to_f}
    final_array = float_array.map{|s| s.to_s}
    equation = final_array[0] + operator + final_array[1]
    eval(equation)
end
 
word_calculator("what is 5 plus 3?")

