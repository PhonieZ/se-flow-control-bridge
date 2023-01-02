local pipe_subgroup="energy-pipe-distribution"

if settings.startup["flow-control-new-group"].value then--Matches Space Pipes Into Flow Control Subgroup
  pipe_subgroup="pipe-distribution"
end

data:extend({--  Items

  {--  Elbow Space Pipe
    name="space-pipe-elbow",
    icon="__se-flow-control-bridge__/graphics/icon/space-pipe-elbow.png",
    icon_size=64,
    place_result="space-pipe-elbow",
    stack_size=50,
    subgroup=pipe_subgroup,
    order="b[pipe]-a[pipe]g",
    type="item"
  },

  {--  Straight Space Pipe 
    name="space-pipe-straight",
    icon="__se-flow-control-bridge__/graphics/icon/space-pipe-straight.png",
    icon_size=64,
    place_result="space-pipe-straight",
    stack_size=50,
    subgroup=pipe_subgroup,
    order="b[pipe]-a[pipe]h",
    type="item"
  },

  {--  T-Junction Space Pipe
    name="space-pipe-t-junction",
    icon="__se-flow-control-bridge__/graphics/icon/space-pipe-t-junction.png",
    icon_size=64,
    place_result="space-pipe-t-junction",
    stack_size=50,
    subgroup=pipe_subgroup,
    order="b[pipe]-a[pipe]f",
    type="item"
  },
    
})
