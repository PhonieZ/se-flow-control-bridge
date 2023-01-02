--  Functions
function insert_elements(start_table,elements)--Like table.insert, but puts a table of stuff into the start_table given
  for key,value in ipairs(elements) do
    table.insert(start_table,value)
  end
end


insert_elements--  Technologies
(
  data.raw["technology"]["se-space-pipe"].effects,
  {
    {type="unlock-recipe",recipe="space-pipe-straight"},
    {type="unlock-recipe",recipe="space-pipe-t-junction"},
    {type="unlock-recipe",recipe="space-pipe-elbow"}
  }
)