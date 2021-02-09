require 'pry'

def nyc_pigeon_organizer(data)
  #write your code here!
  data.each_with_object({}) do |(key, value), final_array|
    #binding.pry
    value.each do |inner_key, names|
      names.each do |name|
        binding.pry
        if !final_array[name]
          final_array[name] = {}
        end
        
      end
    end
    final_array
  end
  binding.pry
end
