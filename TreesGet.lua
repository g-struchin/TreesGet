local TreesGet = {}
TreesGet.ButtonDebugNow = Menu.AddKeyOption({"TreesGet"}, "Debug Now", Enum.ButtonCode.KEY_U)

function DebugNow()
    local tableTreesInRadius = Trees.InRadius(Entity.GetOrigin(Heroes.GetLocal()), 600, true)
    Log.Write("type TableTreesInRadius: "..type(tableTreesInRadius))
    for indexNumberTree, objectTree in pairs(tableTreesInRadius) do
        Log.Write("indexNumberTree: "..indexNumberTree.." objectTree: "..objectTree.." IndexTree: "..Entity.GetIndex(objectTree).." vector: "..Entity.GetOrigin(objectTree):__tostring())
        Log.Write("indexNumberTree: "..indexNumberTree)
        Log.Write("IndexTree: "..Entity.GetIndex(objectTree))
        Log.Write("objectTree: "..Trees.Get(Entity.GetIndex(objectTree))) --Trees.Get
    end
    return tableTreesInRadius
end

function TreesGet.OnGameStart()
end

function TreesGet.OnGameEnd()    
end

function TreesGet.OnUpdate()
    if Menu.IsKeyDownOnce(TreesGet.ButtonDebugNow) then
        tableTrees = DebugNow()
    end
end

return TreesGet