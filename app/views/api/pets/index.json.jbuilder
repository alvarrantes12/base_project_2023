json.array! @pets do |pet| 
    json.id pet.id
    json.first_name pet.first_name
    json.breed pet.breed
    json.pedigree pet.pedigree
end