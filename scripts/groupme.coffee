TextMessage = require('hubot').TextMessage

module.exports = (robot) ->
	robot.router.post '/bot/message', (req, res) ->
		if(req.body.name !== 'Cowzilla') {
			robot.receive new TextMessage req.body.user_id, req.body.text
		}
