--  Functions
function define_pipe_sprite(filename)
  sprite=
  {
    filename="__space-exploration-graphics__/graphics/entity/pipe/"..filename,
    priority="extra-high",
    width=128,
    height=128,
    scale=0.5
  }
  return sprite
end


--  Initialization

--  Straight Space Pipe
local space_pipe_straight=util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
space_pipe_straight.name="space-pipe-straight"
space_pipe_straight.icon="__se-flow-control-bridge__/graphics/icon/space-pipe-straight.png"
space_pipe_straight.selection_box={{-0.35,-0.5},{0.35,0.5}}
space_pipe_straight.minable={mining_time=0.1,result="se-space-pipe"}
space_pipe_straight.placeable_by={item="se-space-pipe",count=1}
space_pipe_straight.corpse="small-remnants"
space_pipe_straight.se_allow_in_space=true
space_pipe_straight.fluid_box.pipe_connections=
{
  {position={0,-1}},
  {position={0,1}}
}
space_pipe_straight.pictures.picture=
{
  north=define_pipe_sprite("hr-pipe-straight-vertical.png"),
  south=define_pipe_sprite("hr-pipe-straight-vertical.png"),
  east=define_pipe_sprite("hr-pipe-straight-horizontal.png"),
  west=define_pipe_sprite("hr-pipe-straight-horizontal.png")
}

--  T-Junction Space Pipe
local space_pipe_t_junction=util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
space_pipe_t_junction.name="space-pipe-t-junction"
space_pipe_t_junction.icon="__se-flow-control-bridge__/graphics/icon/space-pipe-t-junction.png"
space_pipe_t_junction.selection_box={{-0.5,-0.35},{0.5,0.5}}
space_pipe_t_junction.minable={mining_time=0.1,result="se-space-pipe"}
space_pipe_t_junction.placeable_by={item="se-space-pipe",count=1}
space_pipe_t_junction.corpse="small-remnants"
space_pipe_t_junction.se_allow_in_space=true
space_pipe_t_junction.fluid_box.pipe_connections=
{
  {position={1,0}},
  {position={0,1}},
  {position={-1,0}}
}
space_pipe_t_junction.pictures.picture=
{
  north=define_pipe_sprite("hr-pipe-t-down.png"), 
  east=define_pipe_sprite("hr-pipe-t-left.png"),
  south=define_pipe_sprite("hr-pipe-t-up.png"), 
  west=define_pipe_sprite("hr-pipe-t-right.png") 
}

--  Elbow Space Pipe
local space_pipe_elbow=util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
space_pipe_elbow.name="space-pipe-elbow"
space_pipe_elbow.icon="__se-flow-control-bridge__/graphics/icon/space-pipe-elbow.png"
space_pipe_elbow.selection_box={{-0.5,-0.35},{0.5,0.5}}
space_pipe_elbow.minable={mining_time=0.1,result="se-space-pipe"}
space_pipe_elbow.placeable_by={item="se-space-pipe",count=1}
space_pipe_elbow.corpse="small-remnants"
space_pipe_elbow.se_allow_in_space=true
space_pipe_elbow.fluid_box.pipe_connections=
{
  {position={1,0}},
  {position={0,1}}
}
space_pipe_elbow.pictures.picture=
{
  north=define_pipe_sprite("hr-pipe-corner-down-right.png"),
  east=define_pipe_sprite("hr-pipe-corner-down-left.png"),
  south=define_pipe_sprite("hr-pipe-corner-up-left.png"),
  west=define_pipe_sprite("hr-pipe-corner-up-right.png")
}


data:extend({--  Entities
  space_pipe_elbow,
  space_pipe_t_junction, 
  space_pipe_straight 
})