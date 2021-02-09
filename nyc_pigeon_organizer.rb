# transform hash into a new hash
# use .each_with_object to transform hash into new empty hash
# use .each for the hash value to find inner_key or detailed values
# use .each to find the names in the array
# check to see if name exists as a key in the new hash
# if name is not a key, create new key with an empty hash value
# check to see if the description/key exists as a value in the new hash
# if the key is not a value in the the new hash, assign key value to empty array
# check if inner_key exists in the new hash value array
# if value is not in array value
# push value, convert "key".to_s per examples

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_key, names|
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key]
          final_array[name][key] = []
        end
        final_array[name][key].push(inner_key.to_s)
      end
    end
  end
end
