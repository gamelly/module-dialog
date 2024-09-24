local function init(std, game)
    game.dialogs = {
        std.dialog.create({
            style=std.dialog.style_msgbox,
            caption="Title",
            info="my awesome text",
            button1="Ok",
            button2="Cancel"
        }),
        std.dialog.create({
            style=std.dialog.style_msgbox,
            caption="Title 2",
            info="my awesome text",
            button1="Ok"
        }),
        std.dialog.create({
            style=std.dialog.style_list,
            caption="Title",
            info="item 1\nitem 2\nitem 3\nitem 4",
            button1="Ok",
            button2="Cancel"
        })
    }
    std.dialog.show(game.dialogs[1])
end

local function dialog(std, game)
    print(std.dialog.id)
    std.dialog.show(std.dialog.id + 1)
end

local function loop(std, game)
end

local function draw(std, game)
end

local function exit(std, game)
end

local P = {
    meta={
        title='Hello world',
        author='RodrigoDornelles',
        description='say hello to the world!',
        version='1.0.0'
    },
    config={
        require='dialog dialog.draw'
    },
    callbacks={
        init=init,
        loop=loop,
        draw=draw,
        exit=exit,
        dialog=dialog
    }
}

return P
