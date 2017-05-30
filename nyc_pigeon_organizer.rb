def nyc_pigeon_organizer(data)
  names_array = []
  hash = Hash.new
  data.each do |key1, value1|
    value1.each do |key2, value2|
      value2.each do |element|
        names_array << element
      end
    end
  end
  names_array.uniq!
  names_array.each do |name|
    hash[name] = {}
      data.each do |key1, value1|
        hash[name][key1] = []
        value1.each do |key2, value2|
          value2.each do |element|
            if element == name
              hash[name][key1] << key2.to_s
            end
          end
        end
      end
  end
  return hash
end
