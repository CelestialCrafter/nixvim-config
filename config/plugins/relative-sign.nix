{
  extraConfigLua = ''
    local lines = 18
    local halved = lines / 2

    for i = halved * -1, halved + 1 do
    	vim.fn.sign_define('RelativeLineSign' .. i, {
    		text = math.abs(i),
    		texthl = 'LineNr',
    	})
    end

    local function update_signcol()
    	for i = halved * -1, halved do
    		local absolute = vim.fn.line('.') + i
    		local overMaxLines = absolute > vim.fn.line('$')
    		local id = i + halved + 1

    		vim.fn.sign_unplace('RelativeLineGroup', { buffer = vim.api.nvim_get_current_buf(), id = id })
    		if absolute > 0 and not overMaxLines then
    			vim.fn.sign_place(id, 'RelativeLineGroup', 'RelativeLineSign' .. i, vim.api.nvim_get_current_buf(), { lnum = absolute, priority = 1 })
    		end
    	end
    end

    vim.schedule(update_signcol)
    vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, { callback = update_signcol })
  '';
}
