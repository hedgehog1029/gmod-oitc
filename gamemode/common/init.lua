OITC = {}

GM.Name = "One in the Chamber"
GM.Author = "offbeatwitch"
GM.Email = "offbeatwitch@horsefucker.org"
GM.Website = "https://offbeatwit.ch"
VERSION = "0.1.0"

AddCSLuaFile("player.lua")

function GM:Initialize()
    print("One in the Chamber v" .. VERSION)
end

function GM:PlayerSpawn(ply)
    player_manager.SetPlayerClass(ply, "player_oitc")
    player_manager.OnPlayerSpawn(ply)

    hook.Run("PlayerLoadout", ply)
end

function GM:PlayerLoadout(ply)
    player_manager.RunClass(ply, "Loadout")
end

include("player.lua")
