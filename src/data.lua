--Imports
require("prototypes.entity.entities")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")


--  Extra Patches (Setting Dependent)
local pipe_junctions_list=
{   
    data.raw["storage-tank"]["pipe-straight"],
    data.raw["storage-tank"]["pipe-elbow"],
    data.raw["storage-tank"]["pipe-junction"],
    data.raw["storage-tank"]["space-pipe-straight"],
    data.raw["storage-tank"]["space-pipe-elbow"],
    data.raw["storage-tank"]["space-pipe-t-junction"]
}

if settings.startup["se-flow-bridge-is-pipe-arrows-disabled"].value then                                          --Hides Pipe Arrow If Setting Enabled (Defaults To True)
    for key,value in ipairs(pipe_junctions_list) do
        table.insert(value.fluid_box,hide_connection_info)
        value.fluid_box.hide_connection_info=true
    end
end

if settings.startup["flow-control-revert-to-normal-pipe"].value == false then                                     --Applies Flow Control Pipe Drop Setting To Space Pipe Variants
    data.raw["storage-tank"]["space-pipe-elbow"].minable.result="space-pipe-elbow"
    data.raw["storage-tank"]["space-pipe-t-junction"].minable.result="space-pipe-t-junction"
    data.raw["storage-tank"]["space-pipe-straight"].minable.result="space-pipe-straight"
end

for current_position=4,6 do
    pipe_junctions_list[current_position].fluid_box.base_area=settings.startup["se-space-pipe-capacity"].value/100--Applies Space Exploration Pipe Size Setting To Space Pipe Junctions
end