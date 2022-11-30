require("bufferline").setup{
    options = {
        mode = "buffers",
        numbers = "ordinal",
        indicator = {
            style = 'none',
        },
        diagnostics = "nvim_lsp",
        name_formatter = function(buf)
            return buf.name;
        end,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "("..count..")";
        end,
        separator_style = "thick",
    },
}
