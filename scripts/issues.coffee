# Description:
#   Commands related to issues in (public) GitHub repos.
#
# Commands:
#   hubot issues count <user_name>@<repo_name> - get the amount of issues in a GitHub repo.
#   hubot issues give <user_name>@<repo_name> - get a random issue from a GitHub repo.
#   iss(ue)#<user_name>/<repo_name>/<issue_number> - displays link, title and state of issue
#                                                  - omitting user_name defaults to Terasology as user
#                                                  - omitting both user_name and repo_name defaults to MovingBlocks/Terasology repo
#
# Author:
#   gkaretka (https://github.com/gkaretka)
#   andriii25 (https://github.com/andriii25)

max = 30
min = 0


module.exports = (robot) ->
  robot.respond /issues count (.*)@(.*)/i, (msg) ->
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
        msg.reply "There are #{issue_count} #{issue_translation}"

  robot.respond /issues give (.*)@(.*)/i, (msg) ->
    user = msg.match[1]
    repo = msg.match[2]
    msg.http("https://api.github.com/repos/#{user}/#{repo}/issues")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        issue_index = Math.floor(Math.random() * (max - min) + min)
        counter = 0
        for obj in data
          counter++
          if counter is issue_index
            msg.reply "What about #{obj.title}? Take a look at it here: #{obj.html_url} !"

  robot.hear /Iss(ue)?#(((\w+)\/)?(\w+)\/)?(\d+)/i, (msg) ->
    issueNo = msg.match[6]
    repositoryFullName = ""
    organizaton = "MovingBlocks"
    repository = "Terasology"
    if (msg.match[5]?)
      repository = msg.match[5]
      organizaton = "Terasology"
      if (msg.match[4]?)
        organizaton = msg.match[4]
    repositoryFullName = "#{organizaton}/#{repository}"
    robot.logger.info "Querying https://api.github.com/repos/#{repositoryFullName}/issues/#{issueNo}"
    robot.http("https://api.github.com/repos/#{repositoryFullName}/issues/#{issueNo}")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        if err
          robot.logger.error "Beep, bloop! #{err} when getting issue #{issueNo} at #{repositoryFullName}"
          return
        issue = JSON.parse body
        if issue.title? && issue.number? && issue.state? && issue.html_url?
          msg.send "Issue #{issue.number} @#{repositoryFullName} - #{issue.title} - #{issue.state} - #{issue.html_url}"
        else
          robot.logger.error "Repo #{repositoryFullName} not found, or undefined"

