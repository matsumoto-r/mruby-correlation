
def create_array_from_ar(f)
  s = []
  File.open(f).each do |line|
    val = line.chomp
    s << val.to_f
  end
  s
end


p create_array_from_ar("./misc/ar.tsv.1").correlation_coefficient_with(create_array_from_ar("./misc/ar.tsv.2"))
#p create_array_from_ar("./misc/ar.tsv.1")
#p create_array_from_ar("./misc/ar.tsv.2")
