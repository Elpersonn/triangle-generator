-- SIMPLE TRIANGLE GENERATOR
-- WRITTEN BY ELEPRSON 2021
math.randomseed(os.time())
local start = os.clock()
local file = io.open("triangle.txt", "r")
local rfile = file:read("*a")
file:close()
::generate::
local sa = math.random(1,10)
local sb = math.random(1,10)
local sc = math.random(1,10)
if sa + sb > sc and sa + sc > sb and sb + sc > sa then
    rfile = string.gsub(rfile, "%l", { a = sa, b = sb, c = sc })
    print("GENERATED TRIANGLE\n")
    print(rfile.."\nGENERATED IN: "..os.clock()-start)
else
    goto generate
end
