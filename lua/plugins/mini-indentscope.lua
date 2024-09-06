return {
  {
    "echasnovski/mini.indentscope",
    opts = {
      options = {
        try_as_border = true,
      },
      draw = {
        animation = require("mini.indentscope").gen_animation.linear({ duration = 1 }),
      },
    },
  },
}
