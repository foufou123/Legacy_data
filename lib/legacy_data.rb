def legacy_data(hash)
  hash_result = {}

  hash.each do |key, letters| 
    letters.each do |n|
      hash_result[n.downcase] = key
    end
  end

return hash_result

end


