# exercise 10

#if age is between 0 and 17 add age_group as kid

#if age is between 18-64 add age_group as adult

#otherwise age_group is senior

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
	case details["age"]
	when 0...18
		details["age_group"] = "kid"
	when 18...65
		details["age_group"] = "adult"
	else
		details["age_group"] = "senior"
	end
end

puts munsters	





