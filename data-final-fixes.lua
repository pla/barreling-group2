require("prototypes.item-groups")

for _, fluid in pairs(data.raw.fluid) do
  if data.raw.recipe["empty-" .. fluid.name .. "-barrel"] then
    data.raw.recipe["empty-" .. fluid.name .. "-barrel"]["itemgroup"] = "barreling"
    data.raw.recipe["empty-" .. fluid.name .. "-barrel"]["subgroup"] = "barreling"
    data.raw.item[fluid.name .. "-barrel"]["subgroup"] = "barreling"

    if data.raw.recipe["fill-" .. fluid.name .. "-barrel"] then
      data.raw.recipe["fill-" .. fluid.name .. "-barrel"]["itemgroup"] = "barreling"
      data.raw.recipe["fill-" .. fluid.name .. "-barrel"]["subgroup"] = "barreling"
    elseif data.raw.recipe[fluid.name .. "-barrel"] then
      data.raw.recipe[fluid.name .. "-barrel"]["itemgroup"] = "barreling"
      data.raw.recipe[fluid.name .. "-barrel"]["subgroup"] = "barreling"
    end
  end
  if data.raw.recipe["empty-" .. fluid.name .. "-pallet"] then
    data.raw.recipe["empty-" .. fluid.name .. "-pallet"]["itemgroup"] = "barreling"
    data.raw.recipe["empty-" .. fluid.name .. "-pallet"]["subgroup"] = "palletizing"
    data.raw.item[fluid.name .. "-pallet"]["subgroup"] = "palletizing"

    data.raw.recipe["fill-" .. fluid.name .. "-pallet"]["itemgroup"] = "barreling"
    data.raw.recipe["fill-" .. fluid.name .. "-pallet"]["subgroup"] = "palletizing"
  end
  if data.raw.recipe["empty-" .. fluid.name .. "-ibc"] then
    data.raw.recipe["empty-" .. fluid.name .. "-ibc"]["itemgroup"] = "barreling"
    data.raw.recipe["empty-" .. fluid.name .. "-ibc"]["subgroup"] = "toteing"
    data.raw.item[fluid.name .. "-ibc"]["subgroup"] = "toteing"

    data.raw.recipe["fill-" .. fluid.name .. "-ibc"]["itemgroup"] = "barreling"
    data.raw.recipe["fill-" .. fluid.name .. "-ibc"]["subgroup"] = "toteing"
  end
  if data.raw.recipe["empty-" .. fluid.name .. "-tank"] then
    data.raw.recipe["empty-" .. fluid.name .. "-tank"]["itemgroup"] = "barreling"
    data.raw.recipe["empty-" .. fluid.name .. "-tank"]["subgroup"] = "steel-containerization"
    data.raw.item[fluid.name .. "-tank"]["subgroup"] = "steel-containerization"

    data.raw.recipe["fill-" .. fluid.name .. "-tank"]["itemgroup"] = "barreling"
    data.raw.recipe["fill-" .. fluid.name .. "-tank"]["subgroup"] = "steel-containerization"
  end
end
