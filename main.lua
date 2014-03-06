--This building was constructed for Prof. LeMaster's Poetics of Mobile Course
--Sara Levine
--I made this array of stars with help from thatssopanda.com
--It uses the for loop to randomly distribute tiny circles across the canvas.
display.setStatusBar(display.HiddenStatusBar)
thisThing = {}
numOfStars = 100
for i = 1, numOfStars do
	thisThing[i] = display.newCircle(0,0,2)
	thisThing[i]:setFillColor(255,255,255)
	thisThing[i].x=math.random(0,display.contentWidth)
	thisThing[i].y=math.random(0,display.contentHeight)
end
for j = 1, numOfStars do
		transition.blink(thisThing[j],{time=math.random(500,10000)})
	end


--I stole some code from Prof. LeMasters for these display variables.
--It's cool how the building can appear in random spots on the X-Axis.
local screenWidth = display.contentWidth
local screenHeight = display.contentHeight
local screenCenterX = display.contentCenterX
local screenCenterY = display.contentCenterY
local scraperHeight = screenHeight*0.9
local scraperWidth = scraperHeight*0.5
local scraperCenterX = scraperWidth*0.5
local scraperCenterY = scraperHeight*0.5
local function whatTheX(xRange,scraperModifier)
	local maxX = xRange - scraperModifier
	local xPosition = math.random(scraperModifier, maxX)
	return xPosition
end
local myRectangle = display.newRect(0,0,scraperWidth,scraperHeight)
myRectangle.x = whatTheX(screenWidth,scraperCenterX)
myRectangle.y = screenHeight - scraperCenterY
myRectangle:setFillColor(80/256,70/256,220/256)
--This is my mangled attempt at making some sort of table + for loop...thing.
--I'm glad I got this code to work, but I don't feel like it's quite finished. 
local yellowWindows = {}
local alpha = 9
local beta = 20
local count = alpha*beta
	for i = 1, alpha do
		--I'm not sure what this line does exactly, but when I put it in I stopped getting errors. I saw it on a forum post about using two dimensional arrays: http://forums.coronalabs.com/topic/13214-2d-arrays/
		if not yellowWindows[i] then yellowWindows[i]={}
		end
		for j = 1, beta do
			yellowWindows[i][j]=display.newRect((myRectangle.x-(scraperWidth*.5))+(22*i),(myRectangle.y-(scraperHeight*.5))+(40*j),8,15)
			yellowWindows[i][j]:setFillColor(255,255,0)
			end
			end
--I made a custom function that would change the windows' colors to black when they are turned off
--The function picks random windows on the grid to turn off	
local function windowsOff (windowCount)
	for m = 1, windowCount do
yellowWindows[math.random(1,9)][math.random(1,10)]:setFillColor(0,0,0)
end
end
local turnthemOff = windowsOff(count)


			

