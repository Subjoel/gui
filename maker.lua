function ButtonClick()
    task.wait(1)
    game.CoreGui.notify:Destroy()
    --place your function for what needs to happen when they click the button below this
    
end
_G.Text = '' --your notification text inside the ''

loadstring(game.HttpGet(game, 'https://raw.githubusercontent.com/Subjoel/gui/main/notify.lua', true))
