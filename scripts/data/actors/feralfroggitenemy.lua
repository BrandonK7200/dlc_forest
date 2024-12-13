local actor, super = Class(Actor, "feralfroggitenemy")

function actor:init()
    super.init(self)

    self.name = "Feral Froggit"

    self.width = 43
    self.height = 50

    self.use_light_battler_sprite = true

    self.hitbox = {0, 25, 19, 14}

    self.color = {1, 0, 0}

    self.flip = nil

    self.path = "lightenemies/feralfroggit"
    self.default = ""

    self.voice = nil
    self.portrait_path = nil
    self.portrait_offset = nil

    self.can_blush = false

    self.talk_sprites = {}

    self.animations = {
        ["lightbattle_hurt"] = {"hurt", 1/8, false},
        ["lightbattle_spared"] = {"hurt", 1/8, false},
    }

    self.offsets = {
        ["hurt"]  = {0, 0},
    }

    self:addLightBattlerPart("head", {
        ["create_sprite"] = function()
            local sprite = Sprite(self.path.."/head", 21, 26)
            sprite:setOrigin(0.5, 1)
            --sprite.layer = 400
            sprite:play(2)
            return sprite
        end
    })

    self:addLightBattlerPart("body", {
        ["create_sprite"] = function()
            local sprite = Sprite(self.path.."/body", 21, 50)
            sprite:setOrigin(0.5, 1)
            --sprite.layer = 400
            return sprite
        end
    })
end

function actor:update()
    super.update(self)
end

return actor