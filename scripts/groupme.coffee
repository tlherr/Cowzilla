TextMessage = require('hubot').TextMessage

module.exports = (robot) ->
	robot.router.post '/bot/message', (req, res) ->
		console.log(req.body);
		robot.receive new TextMessage req.body.user_id, req.body.text
