# Description:
#   Some inside jokes
#
# Dependencies:
#   none
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   tlherr

module.exports = (robot) ->

  robot.hear /^Jom/i, (msg) ->
    msg.reply "Fuckin Jom"
    
  robot.hear /^California/i, (msg) ->
    msg.reply "start a society somewhere practical"
