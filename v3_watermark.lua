ui.add_check_box("Watermark")
ui.next_line()
local nickname = globals.get_username()
-- created by azazinc
--
local fontnew = draw.create_font("lucon", 14, 400, true, false, false)
local function paint()
if nickname == "azazinc" then
if ui.get_bool("Watermark") then
local screen_width = engine.get_screen_width()
local fps = tostring(globals.get_framecount())
local ping = tostring(globals.get_ping())
local curtime = globals.get_time()
local address = globals.get_server_address()
--
local text
if ping ~= "0" then
text = tostring("otc3 | " .. nickname .. " | " .. address .. " | " .. "delay: " .. ping .. " | 64tick | " .. curtime)
else
text = tostring("otc3 | " .. nickname .. " | " .. address .. " | " .. "delay: " .. ping .. " | 64tick | " .. curtime)
end
local width = draw.get_text_width(fontnew, text)
--
local bg_color = color.new(40, 40, 47, 150)
local paul1ne = color.new(255, 194, 102)

--
local x = screen_width - 10 - width - 4
local y = 10
local w = width + 5
--
--
draw.rect_filled(x, y + 2, w, 16, bg_color)
draw.text(fontnew, x + 2, y + 3, color.new(255, 255, 255), text)
draw.rect_filled(x, y, w, 2, paul1ne) --
end
end
end
lethality.callbacks("paint", paint)























