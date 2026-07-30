% BuildingConstruction_Ecosystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(soft) <--
  [ or([ local,
         automated ]) ].
archive <-- [materialInventory2].
audit <-- [inventorize].
bam <-- [provide].
bamBOOM <-- [archive].
bim2 <-- [archive].
build <-- [initial].
build <-- [renovate].
buildingBOOM <-- [use].
demolish <-- [nonSelectiveDemolish].
demolish <-- [selectiveDemolish].
design <-- [newBuilding].
design <-- [redesign].
identifiedMaterials <-- [acquire].
inventorize <-- [materialInventory].
materialInventory <-- [selectiveDemolish].
materialInventory2 <-- [selectiveDemolish].
materials <-- [build].
materialsNew <-- [acquire].
nonIdentifiedMaterial <-- [sortMaterials].
nonSelectiveDemolish <-- [rubbish].
orderInitialOrReWork <-- [workOrder].
produceExtractFromEnvironment <-- [materialsNew].
provide <-- [materials].
rubbish <-- [bury].
selectiveDemolish <-- [nonIdentifiedMaterial, identifiedMaterials].
sortMaterials <-- [sortedMaterials].
sortedMaterials <-- [acquire].
