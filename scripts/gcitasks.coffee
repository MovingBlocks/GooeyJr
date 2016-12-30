# Description
#   Gives the user a Google Code-In task and a link to it.
#
# Commands:
#   "nameOfBot" with "gci" and "task" following
#   Example: GooeyJr, what gci task should I do?
#
# Author:
#   Vishal (https://github.com/TwoTau)

# Formatted like [nameOfTask, taskId, [taskType1, (taskType2), (taskType3)...]]
taskList = [
	["Develop a simple interface screen", 5960030113234944, ["Code", "User Interface"]],
	["Add a new cooking utensil to the Cooking module", 5663809842708480, ["Code"]],
	["Introduce yourself to the Terasology community!", 5645661592616960, ["Outreach/Research"]],
	["Write a proposal for a new UI widget", 5142329912459264, ["Code", "User Interface", "Outreach/Research"]],
	["Create a building template using StructureTemplates", 5112862332682240, ["Code", "Outreach/Research"]],
	["Write a high-level description for an existing module", 4872225358348288, ["Code", "Documentation/Training"]],
	["Set up a local workspace and run Terasology from source", 4787385392955392, ["Code"]],
	["Add an equipment piece with stat boosts", 5286734262697984, ["Code"]],
	["Describe a new feature you want added to a module in your own words", 5660225793163264, ["Code", "Documentation/Training"]],
	["Find and document an undocumented piece of code in the engine", 4657117413769216, ["Code", "Documentation/Training"]],
	["Develop a new world generator", 5632789944729600, ["Code", "Outreach/Research"]],
	['Implement a "world gen plugin" that places assets from another module into an existing world', 5945344904921088, ["Code"]],
	["Describe a new module in your own words", 5669863699775488, ["Code", "Documentation/Training"]],
	["Add a basic equipment piece", 5893488856006656, ["Code"]],
	["Add a food item to the Cooking module", 5102414935883776, ["Code"]],
	["Enhance your own world generator with distinctive features", 5818905842941952, ["Code"]],
	["Implement art assets for Light & Shadow a second time", 6735119060566016, ["Outreach/Research"]],
	["Introduce a friend to running Terasology from source and adding a new piece of content", 6202395140816896, ["Documentation/Training", "Outreach/Research"]],
	["Improve the unit test suite of the Terasology Launcher", 5733086725668864, ["Code", "Quality Assurance"]],
	["Implement art assets for Light & Shadow", 5652653262503936, ["Outreach/Research"]],
	["Set up a workspace for GooeyJr and create a silly script", 5155579249033216, ["Code", "Outreach/Research"]],
	["Detect and fix non-internationalized strings", 5650012931358720, ["Code", "User Interface", "Quality Assurance"]],
	["Research Java AWT whitelist", 5158346013278208, ["Outreach/Research"]],
	["Develop an interactive command for the gradle build system", 5180477442883584, ["Code"]],
	["Find and fix some Checkstyle issues", 6730308596531200, ["Code", "Quality Assurance", "Outreach/Research"]],
	["Audit Terasology's user interface on smaller resolutions", 5752827737538560, ["User Interface", "Quality Assurance"]],
	["Research free software/tools and how to use them for Terasology", 5107815320387584, ["Documentation/Training", "Outreach/Research"]],
	["Improve module metadata files", 6207519819038720, ["Documentation/Training"]],
	["Execute Terasology's test suite, then break some tests!", 4874503570063360, ["Quality Assurance"]],
	["Design a test plan for the Smithing module", 5739306610065408, ["Documentation/Training", "Quality Assurance"]],
	["Create a new Terasology Launcher Design", 5189858288992256, ["User Interface", "Outreach/Research"]],
	["Add information proxy settings to the Launcher wiki", 5769655788503040, ["Documentation/Training"]],
	["Design a test plan for the Cities modules", 5105120329072640, ["Documentation/Training", "Quality Assurance"]],
	["Design a test plan for the Terasology engine", 5176203514216448, ["Documentation/Training", "Quality Assurance"]],
	["Design a test plan for the WorkstationCrafting module", 6249958759989248, ["Documentation/Training", "Quality Assurance"]],
	["Write some unit tests for ZoomableLayout", 5748759329767424, ["Code", "User Interface", "Quality Assurance"]],
	["Design a test plan for the BlockDetector module", 6216732892987392, ["Documentation/Training", "Quality Assurance"]],
	["Write some unit tests for RowLayout", 5635596135432192, ["Code", "User Interface", "Quality Assurance"]]
]

module.exports = (robot) ->
   robot.respond /(.*)gci(.*)task(.*)/i, (msg) ->
      task = msg.random taskList
      taskTypes = task[2].slice(0)
      taskTypes[taskTypes.length-1] = "and " + taskTypes[taskTypes.length-1] if taskTypes.length > 2
      taskTypes = taskTypes.join(if taskTypes.length > 2 then ', ' else ' and ')
      msg.send 'You can try the "' + task[0] + '" task at https://codein.withgoogle.com/tasks/' + task[1] + ' if you like ' + taskTypes + '.'