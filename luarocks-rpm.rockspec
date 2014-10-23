package = "luarocks-rpm"
local VER = "0.0.1"
local REV = "1"
version = VER.."-"..REV

description = {
    summary = "Tool for generating RPM spec files from LuaRocks rockspec specifications",
    detailed = [[
    ]],
    license = "MIT",
    homepage = "https://github.com/michel-slm/luarocks-rpm",
    maintainer = "Michel Alexandre Salim"
}

dependencies = {
    "lua >= 5.1",
    "lua_cliargs >= 2.0",
}

source = {
    url = "https://api.github.com/repos/michel-slm/luarocks-rpm/tarball/v"..VER
}

build = {
    type = "builtin",
    modules = {
        luarocks_rpm = "src/luarocks_rpm.lua"
    },
    install = {
        bin = { "bin/luarocks-rpm"}
    }
}