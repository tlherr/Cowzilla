# Description:
#   Sends users private messages in groupme
#
# Dependencies:
#   request
#
# Configuration:
#   None
#
# Commands:
#   hubot lets play <game>
#
# Author:
#   tlherr

var querystring = require('querystring');
var http = require('http');

module.exports = (robot) ->
  robot.respond /lets play (.*)/i, (msg) ->
  
    //Iterate over users
    request.post('https://api.groupme.com/v3direct_messages',{ json: { token: 'value', source_guid: 'from', recipient_id: 'to', text: 'Want to play' } }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body)
        }
      }
    );
    
