return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
        mode = "buffers", -- "buffers" ou "tabs"
        style_preset = 1, -- 1 = default, 2 = minimal
        themable = true, 
        numbers = "none", -- "none", "ordinal", "buffer_id" ou "both"
        close_command = "bdelete! %d",       
        right_mouse_command = "bdelete! %d", 
        left_mouse_command = "buffer %d",    
        middle_mouse_command = nil,          
        indicator = {
            icon = '▎', 
            style = 'icon', -- 'icon', 'underline' ou 'none'
        },
        buffer_close_icon = '󰅖',
        modified_icon = '● ',
        close_icon = ' ',
        left_trunc_marker = ' ',
        right_trunc_marker = ' ',
        name_formatter = function(buf) 
            -- Lógica customizada pode ir aqui
        end,
        max_name_length = 18,
        max_prefix_length = 15, 
        truncate_names = true, 
        tab_size = 18,
        diagnostics = false, -- false, "nvim_lsp" ou "coc"
        diagnostics_update_in_insert = false, 
        diagnostics_update_on_event = true, 
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "("..count..")"
        end,
        custom_filter = function(buf_number, buf_numbers)
            -- Simplificado para retornar true por padrão (mostrar todos)
            return true
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left", -- "left", "center" ou "right"
                separator = true
            }
        },
        color_icons = true, 
        get_element_icon = function(element)
          local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
          return icon, hl
        end,
        show_buffer_icons = true, 
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true, 
        duplicates_across_groups = true, 
        persist_buffer_sort = true, 
        move_wraps_at_ends = false, 
        separator_style = "slant", -- "slant", "slope", "thick" ou "thin"
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        auto_toggle_bufferline = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        sort_by = 'insert_after_current', 
        pick = {
          alphabet = "abcdefghijklmopqrstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ1234567890",
        },
    }
  },
}
