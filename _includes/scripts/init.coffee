console.log 'jq', $.fn.jquery

# Definitions
win = $ window
doc = $ document
html = $ 'html'

# Citations:
# Duplicate `[cite]` in empty `[title]`
$('[cite]:not([title]), [cite][title=""]').each -> $(@).attr 'title', $(@).attr 'cite'

# Popover
# Activate open links `a[data-popover='id']`
$('[data-popover]').on "click", (e) ->
  e.preventDefault()
  popover = $(e.target).attr 'data-popover'
  $("##{ popover }")[0].showPopover()
  return
# Activate popclose links
$('[data-popclose]').on 'click', ->
  $(@).parent('[popover]')[0].hidePopover()

@log = (string, classe = '', position = 'top') ->
  top = $("##{ position }").append "<div class='popover #{ classe }'>#{ string }</div>"
  return

