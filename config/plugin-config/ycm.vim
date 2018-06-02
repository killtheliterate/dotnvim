let g:ycm_allow_changing_updatetime = 0

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers["typescript"] = ["."]
