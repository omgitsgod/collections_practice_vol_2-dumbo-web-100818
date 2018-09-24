# your code goes here
def begins_with_r(arr)
arr.all? do |x|
  x[0] == "r"
end
end

def contain_a(arr)
  yar = []
  arr.each do |x|
    if x.include? "a"
      yar << x
    end
  end
  yar
end

def first_wa(arr)
  arr.find do |x|
    x[0..1] == "wa"
  end
end

def remove_non_strings(arr)
  yar = []
  arr.each do |x|
    if x.is_a? String
    yar << x
  end
end
  yar
end

def count_elements(arr)

    arr.uniq.each do |x|
      count = 0
        arr.each do |i|
          if i == x
          count += 1
        end
      end
        x[:count] = count
      end
end

def merge_data(k, v)
k.each do |i|
  v.each do |x|
    i.merge!(x[i[:first_name]])
  end
end
end

def find_cool(yar)
yar.select do |i|
  if i.has_value?("cool")
    i
  end
end
end

def organize_schools(yar)
  locs = {}
  yar.each do |k, v|
    if (locs[v[:location]] == nil)
      locs[v[:location]] = [k]
    else
     locs[v[:location]] << k
    end
  end
  locs
end
