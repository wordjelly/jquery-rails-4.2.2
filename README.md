# jquery-ujs
Jquery-Ujs modified to allow parameters to be passed to rails.submit -> handleRemote -> ajax:before, this is because currently jquery-ujs does not support extra params being passed in, for example in jquery we can do $(x).trigger("event",extra_params), these params dont currently get passed into jquery-ujs handlers, so this modification
