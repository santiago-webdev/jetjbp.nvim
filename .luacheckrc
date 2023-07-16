stds.nvim = {
   globals = {
      vim = { fields = { 'g', 'opt' } },
      map = { fields = { 'function' } },
      bit = { fields = { 'band' } },
   },
   read_globals = {
      'vim',
      'map',
      'jit',
   },
}
std = 'lua51+nvim'

ignore = {
   '212/_.*', -- unused argument, for vars with "_" prefix
}
