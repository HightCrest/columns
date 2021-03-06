local K = require("game.constants")
local LG = love.graphics

local pairs, ipairs = pairs, ipairs

local polysGlitter = {
-- spikes wn
  {1.2, 1.00, {4, 8, 2, 6, 4.5, 7.5}},
  {1.5, 0.70, {4.5, 7.5, 1.5, 3, 6, 6}},
  {1.5, 0.60, {6, 6, 3, 1.5, 7.5, 4.5}},
  {1.2, 1.00, {7.5, 4.5, 6, 2, 8, 4}},

---- spikes en
  {1.2, 1.00, {8, 4, 10, 2, 8.5, 4.5}},
  {1.5, 0.90, {8.5, 4.5, 13, 1.5, 10, 6}},
  {1.5, 0.80, {10, 6, 14.5, 3, 11.5, 7.5}},
  {1.2, 1.00, {11.5, 7.5, 14, 6, 12, 8}},

-- spikes es
  {1.2, 0.50, {12, 8, 14, 10, 11.5, 8.5}},
  {1.5, 0.50, {11.5, 8.5, 14.5, 13, 10, 10}},
  {1.5, 0.50, {10, 10, 13, 14.5, 8.5, 11.5}},
  {1.2, 0.50, {8.5, 11.5, 10, 14, 8, 12}},

---- spikes ws
  {1.2, 1, {8, 12, 6, 14, 7.5, 11.5}},
  {1.5, 1, {7.5, 11.5, 3, 14.5, 6, 10}},
  {1.5, 1, {6, 10, 1.5, 13, 4.5, 8.5}},
  {1.2, 1, {4.5, 8.5, 2, 10, 4, 8}},

-- small corners
  --{1.5, 1.00, {4.5, 7.5, 4.5, 8.5, 4, 8}},
  --{1.5, 1.00, {7.5, 4.5, 8.5, 4.5, 8, 4}},
  --{1.5, 1.00, {11.5, 7.5, 11.5, 8.5, 12, 8}},
  --{1.5, 1.00, {7.5, 11.5, 8.5, 11.5, 8, 12}},

-- center
  {0.4, 1.00, {6, 6, 10, 6, 8, 8}},
  {0.4, 0.50, {6, 10, 10, 10, 8, 8}},
}

local function glitter(r, g, b, alpha)
  for i, current in ipairs(polysGlitter) do
    intensity, alpha, poly = current[1], current[2], current[3]
    LG.setColor(r, g, b, intensity * alpha * K.GLITTER_LIGHT_STRENGTH)
    LG.polygon("fill", poly)
  end
end

return glitter
