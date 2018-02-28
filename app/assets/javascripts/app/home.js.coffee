# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready page:load",  ->

  # Store components
  _$aboutButton = $ "#nav .about-btn"
  _$about = $("#about").show()

  # Add events
  _$closeButton = $("#about .close-btn").click (event) ->
    closeAbout()

  _$aboutButton.click (event) ->
    if _$about.attr("data-open") is "true" then closeAbout()
    else openAbout()

  # Functions
  openAbout = (dur = 800)->
    # Update height
    current = _$about.height() + "px"
    aboutHeight = _$about.css("height", "auto").height() + "px"
    # Animate
    _$about.attr("data-open", "true")
    .stop()
    .css("height", current)
    .animate(
      height: aboutHeight
    ,
      duration: dur
      easing: "easeOutCubic"
      complete: ->
        _$about.css("height", "auto")
    )
    # Update location
    window.location.hash = "me"

  closeAbout = (dur = 800)->
    # Update height and animate
    _$about.attr("data-open", "false")
    .stop()
    .css("height", _$about.height() + "px")
    .animate(
      height: 0
    ,
      duration: dur
      easing:"easeOutCubic"
    )
    # Update location
    window.location.hash = ""

  if window.location.hash then openAbout(0)
  else closeAbout(0)
