-- Server only stuff

-- When a player gets a kill, gives them 1 bolt
function GM:DoPlayerDeath(player, attacker, info)
    if attacker:IsPlayer() then
        attacker:GiveAmmo(1, "xbowbolt", true)
        attacker:GetActiveWeapon():EmitSound("Grenade.Blip", 50, 100, 0.7, CHAN_WEAPON)
    end
end
