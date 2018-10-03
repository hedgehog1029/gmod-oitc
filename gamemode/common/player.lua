DEFINE_BASECLASS("player_default")

local PLAYER = {}

PLAYER.WalkSpeed = 400
PLAYER.RunSpeed = 600
PLAYER.StartHealth = 100

function PLAYER:Loadout()
    self.Player:StripWeapons()
    self.Player:StripAmmo()

    self.Player:Give("weapon_crossbow")
    self.Player:Give("weapon_crowbar")

    self.Player:SetAmmo(0, "xbowbolt")
end

function PLAYER:OnTakeDamage(info)
    if info:IsDamageType(DMG_CLUB) then  -- DMG_CLUB is for crowbar damage
        info:SetDamage(5)
    elseif info:IsDamageType(DMG_NEVERGIB) then  -- DMG_NEVERGIB is used for crossbows
        info:SetDamage(100)
    end
end

player_manager.RegisterClass("player_oitc", PLAYER, "player_default")
