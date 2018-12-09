# Description:
#   Commands related to issues in (public) GitHub repos.
#
# Commands:
#   hubot issues count <username>/<repo_name> - Returns the number of issues in <username>/<repo_name>
#   hubot issues give <username>/<repo_name> - Retrieves a random issue from a <username>/<repo_name>
#   #<username>/<repo_name>/<number> - Retrieves issue or PR #<number> from <username>/<repo_name>
#   #<repo_name>/<number> - Retrieves issue or PR #<number> from Terasology/<repo_name>
#   #<number> - Retrieves issue or PR #<number> from MovingBlocks/Terasology
#   <URL> - Retrieves issue or PR at <URL>.
# Author:
#   gkaretka (https://github.com/gkaretka)
#   andriii25 (https://github.com/andriii25)
#   IMACULGY (https://github.com/IMACULGY)

max = 30
min = 0


module.exports = (robot) ->
  robot.respond /issues count (.*)\/(.*)/i, (msg) ->
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

  robot.respond /issues give (.*)\/(.*)/i, (msg) ->
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

  robot.hear /#(?:(?:(\w+)\/)?(\w+)\/)?(\d+)/gi, (msg) ->
    num = 0
    while msg.match[num]?
      issueID = msg.match[num]
      pattern = /#(?:(?:(\w+)\/)?(\w+)\/)?(\d+)/i
      issueNo = issueID.match(pattern)[3]
      repositoryFullName = ""
      organizaton = "MovingBlocks"
      repository = "Terasology"
      if (issueID.match(pattern)[2]?)
        repository = issueID.match(pattern)[2]
        organizaton = "Terasology"
        if (issueID.match(pattern)[1]?)
          organizaton = issueID.match(pattern)[1]
      repositoryFullName = "#{organizaton}/#{repository}"
      num = num + 1
      robot.logger.info "Querying https://api.github.com/repos/#{repositoryFullName}/issues/#{issueNo}"
      robot.http("https://api.github.com/repos/#{repositoryFullName}/issues/#{issueNo}")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        if err
          robot.logger.error "Beep, bloop! #{err} when getting issue #{issueNo} at #{repositoryFullName}"
          return
        issue = JSON.parse body
        if issue.title? && issue.number? && issue.state? && issue.html_url?
          msg.send "\##{issue.number} @#{repositoryFullName} - #{issue.title} - #{issue.state} - #{issue.html_url}"
        else
          robot.logger.error "Repo #{repositoryFullName} not found, or undefined"

  robot.hear /https:\/\/github\.com\/(\w+)\/(\w+)\/(?:issues|pull)\/(\d+)/gi, (msg) ->
    num = 0
    while msg.match[num]?
      url = msg.match[num]
      pattern = /https:\/\/github\.com\/(\w+)\/(\w+)\/(?:issues|pull)\/(\d+)/i
      issueNo = url.match(pattern)[3]
      repositoryFullName = ""
      organizaton = url.match(pattern)[1]
      repository = url.match(pattern)[2]
      repositoryFullName = "#{organizaton}/#{repository}"
      num = num+1
      robot.logger.info "Querying https://api.github.com/repos/#{repositoryFullName}/issues/#{issueNo}"
      robot.http("https://api.github.com/repos/#{repositoryFullName}/issues/#{issueNo}")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        if err
          robot.logger.error "Sorry! #{err} when getting issue #{issueNo} at #{repositoryFullName}"
          return
        issue = JSON.parse body
        if issue.title? && issue.number? && issue.state? && issue.html_url?
          msg.send "\##{issue.number} @#{repositoryFullName} - #{issue.title} - #{issue.state} - <#{issue.html_url}>"
        else
          robot.logger.error "Repo #{repositoryFullName} not found, or undefined"
