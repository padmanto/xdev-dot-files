return {
  {
    'orfosys/nvim-soil',
    lazy = true,
    ft = 'plantuml',
    config = function()
      require('soil').setup {
        puml_jar = '/data/personal/plantuml-1.2024.3.jar',
        image = {
          darkmode = false, -- Enable or disable darkmode
          format = 'png', -- Choose between png or svg
          -- This is a default implementation of using nsxiv to open the resultant image
          -- Edit the string to use your preferred app to open the image
          -- Some examples:
          -- return "feh " .. img
          -- return "xdg-open " .. img
          execute_to_open = function(img)
            return 'nsxiv -b ' .. img
          end,
        },
      } -- If you want to change default configurations
    end,
  },
  -- Optional for puml syntax highlighting:
  { 'orfosys/nvim-nyctophilia' },
}
