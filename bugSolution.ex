```elixir
list = [1, 2, 3, 4, 5]

# Correct approach using Enum.filter
new_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(new_list)

#Alternative solution using Enum.reduce
new_list2 = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
IO.inspect(Enum.reverse(new_list2)) 
```