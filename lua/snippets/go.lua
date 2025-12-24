local ls = require("luasnip")
local tn = ls.text_node
local i = ls.insert_node

return {
    ls.snippet(
        "iferr",
        {
            tn("if err != nil {"),
            i(1),
            tn("}")
        }
    )
}
