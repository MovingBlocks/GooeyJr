# Author:
#   gkaretka

# Description:
#   See issues on chosen public repo

# Usage:
#   hubot issues count <user-name>@<repo-name>
#   hubot issues give <user-name>@<repo-name>

max = 30
min = 0

module.exports = (robot) ->
  # look-up number of issues
  robot.respond /issues count (.*)@(.*)/i, (msg) ->
    sender = msg.message.user.name
    user = msg.match[1]
    repo = msg.match[2]
    msg.http("https://api.github.com/repos/#{user}/#{repo}")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        issue_count = data.open_issues_count
        issue_translation = "issue"
        if (issue_count > 1)
          issue_translation = "#{issue_translation}s"
        msg.send "#{sender}: There are #{issue_count} #{issue_translation}"

  # picks random issue for you to solve ;)
  robot.respond /issues give (.*)@(.*)/i, (msg) ->
    sender = msg.message.user.name
    user = msg.match[1]
    repo = msg.match[2]
    msg.http("https://api.github.com/repos/#{user}/#{repo}/issues")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        issue_index = Math.random() * (max - min) + min
        counter = 0
        for obj in data:
          counter++
          if counter == issue_index
            msg.send "#{sender}: You can have a look at #{issue.title} here #{issue.html_url}"
            break
