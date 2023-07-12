arr = [
    ["Jamie", "62 Baird's Way", "07522982169"], 
    ["Bob", "64 Zoo Lane", "09349201829"], 
    ["John", "1 Gotham", "0983875839"], 
    ["Gilbert", "House", "07628018274"]
]

arr.each do |item|
    puts(item[2])
end

arr.each do |item|
    arr.index(item) % 2 == 0? puts(item) : nil
end