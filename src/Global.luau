local _G
local Gobject=script:WaitForChild('_G Settings')
local Gobj=require(Gobject)
local t0
t0={
SwitchAxes=function(objs,axis)
	local axis=t0.stringLib_f.ToString(axis):upper()
	local angles=Vector3.FromAxis(Enum.Axis[axis])*math.rad(90)
	
	local axes={'X','Y','Z'}
	local swappies={}
	for i,g in pairs(axes) do
		if g~=axis then
			swappies[#swappies+1]=i
		end
	end
	t0.tableLib_f.SwapTableIndicies(axes,unpack(swappies))
	
	for i,g in pairs(t0.FilterByProperty(t0.tableLib_f.ToTable(objs))) do
		local size=Vector3.new(g.Size[axes[1]],g.Size[axes[2]],g.Size[axes[3]])
		local cf=g.CFrame*CFrame.Angles(angles.X,angles.Y,angles.Z)
		g.Size=size
		g.CFrame=cf
	end
end;
BindToPlayerActions={'Deprecated',function(actionName,f,touch,printt,...)--Credit to Le Doge!
	return function()
		game.ContextActionService:BindAction(actionName,function(_,__,key)--Credit to Le Doge!
			if printt then--Credit to Le Doge!
				print(key.KeyCode)--Credit to Le Doge!
			end--Credit to Le Doge!
			
			if key.KeyCode==Enum.KeyCode.Space then--Credit to Le Doge!
				f(Enum.PlayerActions.CharacterJump)--Credit to Le Doge!
				
			elseif key.KeyCode==Enum.KeyCode.D or key.KeyCode==Enum.KeyCode.Right then--Credit to Le Doge!
				f(Enum.PlayerActions.CharacterRight)--Credit to Le Doge!
				
			elseif key.KeyCode==Enum.KeyCode.A or key.KeyCode==Enum.KeyCode.Left then--Credit to Le Doge!
				f(Enum.PlayerActions.CharacterLeft)--Credit to Le Doge!
				
			elseif key.KeyCode==Enum.KeyCode.W or key.KeyCode==Enum.KeyCode.Up then--Credit to Le Doge!
				f(Enum.PlayerActions.CharacterForward)--Credit to Le Doge!
				
			elseif key.KeyCode==Enum.KeyCode.S or key.KeyCode==Enum.KeyCode.Down then--Credit to Le Doge!
				f(Enum.PlayerActions.CharacterBackward)--Credit to Le Doge!
				
			end--Credit to Le Doge!
		end,touch,Enum.UserInputType.Keyboard)
	end--Credit to Le Doge!
end};
ChatColoursList={
	BrickColor.new("Bright red"),
	BrickColor.new("Bright blue"),
	BrickColor.new("Earth green"),
	BrickColor.new("Bright violet"),
	BrickColor.new("Bright orange"),
	BrickColor.new("Bright yellow"),
	BrickColor.new("Light reddish violet"),
	BrickColor.new("Brick yellow"),
};
GetPlayerChatColourFromName=function(Name)
	if _G:Type(Name)=='Player' then
		Name=Name.Name
	end
	
	local Length=#Name
	local Value=0
	for Index=1,Length do
		local CharacterValue=string.byte(string.sub(Name, Index, Index))
		local ReverseIndex=Length-Index+1
		if Length%2==1 then
			ReverseIndex=ReverseIndex-1
		end
		if ReverseIndex%4>=2 then
			CharacterValue=-CharacterValue
		end
		Value=Value+CharacterValue
	end
	
	return _G.ChatColoursList[Value%8+1]
end;
Tween=function(...)
	_G:TweenAsync(...)
	wait(select(3,...))
	return
end;
TweenAsync=function(obj,to,time,prop,eDir,eSty)
	local time=time or 1
	local prop=prop or 'Position'
	if _G:HasProperty(obj,prop) then
		local tweens=_G:Tweentable(_G:FirstProperty(obj,prop),to,eDir,eSty,time*60)
		local count=0
		
		local start=tick()
		local signal
		signal=game["Run Service"].RenderStepped:connect(function()
			count=count+1
			local total=tick()-start
			
			local index=math.floor(total*60)
			if tweens[index] then
				_G:Set(obj,prop,tweens[index])
			elseif total>time then
				_G:Set(obj,prop,to)
				signal:disconnect()
			end
		end)
	else
		error('NEIN NEIN NEIN PROPERTIE IN LE !')
	end
end;
Tweentable=function(o1,o2,...)
	local tweenObjs={}
	for tweenI,tween in pairs(_G:TweenNumbers(0,1,...)) do
		tweenObjs[tweenI]=_G:Lerp(o1,o2,tween)
	end
	return tweenObjs
end;
TweenNumbers=function(...)
	local args=_G:Arguments({...},{{'start',{'number'}},{'endin',{'number'}},
		{'eDir',Enum.EasingDirection.Out,1},{'eSty',Enum.EasingStyle.Quad,1},{'steps',10,2}})
	local enumTables={
		Quad=2;
		Quart=4;
		Quint=5;
		Linear=1;
		Tri=3;
		Hex=6;
		Hept=7;
		Oct=8;
		Sine=function(frac)
			return math.sin(frac*math.pi)
		end;
		Back=function(frac,arg)
			local arg=arg or 13
			return _G:Transform(frac,0,.5,-arg/100,.5)
		end;
	}
	
	local func
	local eStyClass=_G:Type(args.eSty)
	local eStyType=eStyClass:gsub(':(.+)$','')
	local eStyArg=select(3,eStyClass:find(':(.+)$'))
	
	if eStyType=='function' then
		func=args.eSty
	elseif eStyType=='number' then
		func=function(n)
			return n^args.eSty
		end
	elseif _G:Type(args.eSty)=='EasingStyle' or Enum.EasingStyle[args.eSty] then
		local enumValue=enumTables[_G:EnumToString(args.eSty)]
		local enumType=_G:Type(enumValue)
		if enumType=='number' then
			func=function(n)
				return n^enumValue
			end
		elseif enumType=='function' then
			func=enumValue
		end
	end
	
	local tweenTable={0}
	local eDir=_G:EnumToString(args.eDir)
	local steps=args.steps
	if eDir=='In' then
		for i=1,steps do
			local frac=i/steps
			tweenTable[#tweenTable+1]=func(frac,eStyArg)
		end
	elseif eDir=='Out' then
		for i=steps-1,0,-1 do
			local frac=i/steps
			tweenTable[#tweenTable+1]=1-func(frac,eStyArg)
		end
	else
		local half1Thresh=math.floor((steps-1)/2)/steps
		local half2Thresh=math.ceil((steps+1)/2)/steps
		for i=1,steps do
			local frac=i/steps
			if frac<.5 then
				tweenTable[#tweenTable+1]=1-func(_G:Transform(2*frac,0,half1Thresh,0,.5),eStyArg)/2
			elseif frac>.5 then
				tweenTable[#tweenTable+1]=func(2*(1-_G:Transform(frac,half2Thresh,1,.5,1)),eStyArg)/2
			else
				tweenTable[#tweenTable+1]=.5
			end
		end
	end
	
	return _G:Cast(tweenTable,function(g) return _G:Transform(g,args.start,args.endin) end)
end;
PagesToTable=function(pages)
	local currentPageNumber=0
	local ret={}
	while true do
		local data=pages:GetCurrentPage()--Assigning 'data' variable to the current page of Pages object
		local page={}
		for _,pair in ipairs(data) do--Iterates through all key value pairs in 
			page[pair.key]=pair.value
		end
		ret[currentPageNumber]=page
		
		if pages.IsFinished then--Checks if last page has been reached
			break
		end
		
		pages:AdvanceToNextPageAsync()--Iterates to next page
		currentPageNumber=currentPageNumber+1
	end
end;
MultiplyUDim2=function(n,u)
	return UDim2.new(n*u.X.Scale,n*u.X.Offset,n*u.Y.Scale,n*u.Y.Offset)
end;
ConvertCurrency=function(...)
	local args=_G:CastArguments({...},{{'amount',1,{'number'}},{'from','USD',{'upper3'},2},{'to','USD',{'upper3'},1}})
	local link='http://finance.yahoo.com/d/quotes.csv?e=.csv&f=sl1d1t1&s='..(args.from)..(args.to)..'=X'
	local rate=select(3,game.HttpService:GetAsync(link):find((args.from)..(args.to)..'=X",([%d%.]+)'))
	return args.amount*rate
end;
CastArguments=function(args,casts)--local args G:CastArguments({...}, {table of arguments}). Used at beginning of method, when arguments are set to ...
	
	local isTypeTable=function(t)
		if type(t)~='table' then
			return false
		end
		
		for i,g in pairs(t) do
			if not(type(g)=='string' and type(i)=='number') then
				if not(i==1 and type(g)=='number') then
					return false
				end
			end
		end
		
		return type(t[1])=='number' and 'defaultType' or 'type'
	end
	
	for castI,cast in pairs(casts) do
		local cast=_G:Table(cast)
		local newCast={types={}}
		
		--Accounts for possibilities
		local indicies={}
		if #cast==5 then
			indicies={'name','default','types','rank','nullable'}
			
		elseif #cast==4 then
			--http://www.twitch.tv/windowsblue
			if isTypeTable(cast[3]) then
				indicies={'name','default','types','rank'}
			end
			
		elseif #cast==3 then
			if isTypeTable(cast[3]) then
				indicies={'name','default','types'}
			elseif isTypeTable(cast[2]) then
				indicies={'name','types','default'}
			elseif type(cast[3])=='boolean' then
				indicies={'name','default','nullable'}
			elseif type(cast[3])=='number' then
				indicies={'name','default','rank'}
			end
			
		elseif #cast==2 then
			--https://www.discord.gg/0XrdGOr2ZGUDunH3
			if isTypeTable(cast[2]) then
				indicies={'name','types'}
			else
				indicies={'name','default'}
			end
			
		elseif #cast==1 then
			indicies={'name'}
		end
		
		for i,g in pairs(indicies) do
			newCast[g]=cast[g:lower()] or cast[i]
		end
		
		if isTypeTable(newCast.types)=='defaultType' then--Used to convert a typeTable with a leading number and set default
			newCast.types={unpack(newCast.types,2)}
			newCast.default=newCast.default or newCast.types[1]
		end
		
		if not newCast.rank then
			newCast.rank=newCast.default and 1 or 0
		end
		
		--[[
		for i,g in pairs(newCast) do
			print(i..'\t'..tostring(g))
		end
		print()
		]]
		
--		if isCastTable(cast) then--If it is a valid
--			if isTypeTable(cast[2])=='defaultType' then
--				casts[castI]={cast[1],args[castI],0}
--			else
--				cast[3]=cast[3] or 1
--			end
--		else
--			casts[castI]={cast,args[castI],0}
--		end
		
		casts[castI]=newCast
	end
	
	--Make table of indicies that connects args to casts
	local castGroups={}
	local level=-1
	local highest=0
	for castI,cast in pairs(casts) do
		if cast.rank>highest then
			highest=cast.rank
		end
	end
	repeat
		level=level+1
		castGroups={
			_G:FilterByFunction(casts,function(cast,castI) return cast.rank<=level end);--Set by args, then defaults
		}
		if level>highest then
			error('You got the wrong amount of arguments man.')
		end
	until #castGroups[1]==#args
	
	local errorIfIncorrect=function(cast,arg)
		if isTypeTable(cast.types) then
			for castTypeI,castType in pairs(cast.types) do
				local argType=_G:Type(arg)
				local castType=string.lower(castType)
				
				local strings={
					'upper',
					'lower',
					'string',
				}
				if _G:ValueInTable(strings,select(3,argType:find('^(%l+)'))) then
					
					local baseCastType=select(3,castType:find('^(%l+)'))
					local len={0,_G.MaxValue}--Checks if the length is in bounds!
					local index=0
					
					for num in string.gmatch(castType,'(%d+)') do
						index=index+1
						len[index]=tonumber(num)
					end
					
					len[2]=len[2] or len[1]
					if #arg>len[2] then
						error('Your string is too long; max length is '..len[2]..', but yours is '..#arg)
					elseif #arg<len[1] then
						error('Your string is too short; min length is '..len[1]..', but yours is '..#arg)
					end
					
					if baseCastType~='string' then
						return string[baseCastType](arg)
					end
				
				elseif argType~=castType then
					error('Le argument \''..cast.name..'\' no is good type! '..
					'It\'s a '..argType..' when it should be a '..castType..'.')
				end
			end
		end
		return arg
	end
	
	local argTable={}
	for castI,cast in pairs(castGroups[1]) do
		local arg=args[castI]
		argTable[cast.name]=errorIfIncorrect(cast,(_G:NotNil(cast.nullable) and not arg) and cast.default or arg)
	end
	for castI,cast in pairs(castGroups[2]) do
		argTable[cast.name]=errorIfIncorrect(cast,cast.default)
	end
	
--	for argI in pairs(args) do
--		castI=castI+1
--		local index=type(args[argI])=='string' and args[argI] or args[argI][1]
--		local default=type(args[argI])=='table' and args[argI][2]
--		if default and numDefaults>0 then
--			castI=castI-1
--			numDefaults=numDefaults-1
--			argTable[index]=default
--		else
--			if type(args[argI])=='table' and type(args[argI][2])=='table' then
--				for argTypeI,argType in pairs(args[argI][2]) do
--					if _G:Type(cast[castI])~=argType then
--						error('Le argument \''..args[argI][1]..'\' no is good type! '..
--							'It\'s a '..tostring(_G:Type(cast[castI]))..' when it should be a '..tostring(argType)..'.')
--					end
--				end
--			end
--			argTable[index]=cast[castI]
--		end
--	end
	
	return argTable
end;
AccentControlCharacterList={
	acute=2;
	grave=3;
	cedilla=4;
	breve=5;
	macron=6;
	ring=7;
	diaeresis=8;
	upsidedownquestionmark=Vector2.new(9,2);
	upsidedownexclamationmark=Vector2.new(9,3);
	tilde=11;
};
AccentPropertyList={
	[2]={
		Position=UDim2.new(.3,0,.27,0);
		Size=UDim2.new(.4,0,0,0);
		Rotation=-10;
	};
	[3]={
		Position=UDim2.new(.3,0,.27,0);
		Size=UDim2.new(.4,0,0,0);
		Rotation=10;
	};
	[4]={
		Position=UDim2.new(.28,0,.73,0);
		Size=UDim2.new(.5,0,.3,0);
		Rotation=-165;
		Text='c';
		Font='SourceSansLight';
	};
	[5]={
		Position=UDim2.new(.4,0,.2,0);
		Size=UDim2.new(.4,0,.2,0);
		Rotation=90;
		Text=')';
		Font='SourceSansBold';
	};
	[6]={
		Position=UDim2.new(.3,0,.27,0);
		Size=UDim2.new(.4,0,0,0);
	};
	[7]={
		Position=UDim2.new(.4,0,.2,0);
		Size=UDim2.new(.4,0,.2,0);
		Rotation=90;
		Text='o';
		Font='SourceSansLight';
	};
	[8]={
		Position=UDim2.new(0,0,-.05,0);
		Size=UDim2.new(1,0,.5,0);
		Text='..';
		Font='SourceSansLight';
	};
	[9.2]={
		Position=UDim2.new(0,0,.25,0);
		Size=UDim2.new(1,0,1,0);
		Text='?';
		Rotation=180;
		TextXAlignment='Left';
	};
	[9.3]={
		Position=UDim2.new(0,0,.25,0);
		Size=UDim2.new(1,0,1,0);
		Text='!';
		Rotation=180;
		TextXAlignment='Left';
	};
	[11]={
		Position=UDim2.new(-.1,0,0,0);
		Size=UDim2.new(1,0,.5,0);
		Text='~';
		Font='SourceSansBold';
	};
};
AccentGUIText={'deprecated',function(gui,text,colour,...)--Text uses control characters, each indicating which accent to put.
	local oldAccents=gui:findFirstChild('AccentFrame')
	if oldAccents then
		oldAccents:destroy()
	end
	
	local text=(text or gui.Text)
	:gsub('[��]',{['�']='\9\2',['�']='\9\3'})
	:gsub('{(%w+)}',function(index) return string.char(_G.AccentCharTable[index]) end)
	
	local colour=colour or gui.TextColor3
	local size=tonumber(({gui.FontSize.Name:gsub('^Size','')})[1])
	
	if gui.TextScaled then
		error('Le TextScaled is on! We cannot tell how big le text is! Turn that property off!')
	elseif gui.TextWrapped then
		error('Le TextWrapped is on! We cannot tell how fast text raps! Turn that property off!')
	end
	
	gui.Text=text
	local frame=_G:GUILetters(gui,{BackgroundTransparency=1},...)
	
	if colour~=gui.TextColor3 then
		frame.ZIndex=gui.ZIndex+1
	end
	
	local letterTable={}
	local index=0
	for char in string.gmatch(text,'.') do
		index=index+1
		
		local charFrame=frame:findFirstChild('Frame'..index,true)
		local accentStr=({text:sub(index):find((index==1 and '^%C?' or '^%C')..'([\2-\9\11]*)')})[3] or ''
		local accents={}
		for accent in string.gmatch(accentStr,'%c') do
			accents[#accents+1]=accent
		end
		
		-------------
		for accentI,accent in pairs(accents) do
			if accents[accentI-1]~='\9' then
				
				local Type=accents[accentI]=='\9' and accents[accentI]:byte()+accents[accentI+1]:byte()/10 or ({accent:byte()})[1]
				local props=_G.AccentPropTable[Type]
				local parent=accents[accentI]=='\9' and frame:findFirstChild('Frame'..index+1,true) or charFrame
				local accentFrame=Instance.new(props.Text and 'TextBox' or 'Frame',parent)
				accentFrame.ZIndex=frame.ZIndex
				
				accentFrame[(props.Text and 'Text' or 'Border')..'Color3']=colour
				if props.Text then
					accentFrame.BackgroundTransparency=1
					accentFrame.TextScaled=true
					accentFrame.Font=gui.Font
				end
				
				for propI,prop in pairs(props) do
					accentFrame[propI]=prop
				end
				
				if char:lower()=='i' and accentFrame.Size==UDim2.new(.3,0,.27,0) then
					if char=='i' then
						accentFrame.Position=UDim2.new(.1,0,.28,0)
						accentFrame.Size=UDim2.new(1,-6,0,0)
						accentFrame.BorderSizePixel=3/96*size
						accentFrame.ZIndex=accentFrame.ZIndex+1
					else
						accentFrame.Position=UDim2.new(.1,0,.25,0)
						accentFrame.Size=UDim2.new(1,-10,0,0)
					end
				end
				
				if props.Position.Y.Scale<=.5 and char~=char:lower() then
					accentFrame.Position=accentFrame.Position-UDim2.new(0,0,.13,0)
				end
			end
		end
		-------------
		
		letterTable[#letterTable+1]={char=char,frame=charFrame,accents=accents}
	end
	
	frame.Name='AccentFrame'
	frame.Parent=gui
end};
CreateFramesForGUILetters=function(gui,props,ordered)
	
	if gui.TextScaled then
		error('Le TextScaled is on! We cannot tell how big le text is! Turn that property off!')
	elseif gui.TextWrapped then
		error('Le TextWrapped is on! We cannot tell how fast text raps! Turn that property off!')
	end
	
	local bigContainer=Instance.new('Frame')
	bigContainer.Visible=false
	bigContainer.BackgroundTransparency=1
	local marker=0
	local index=0
	local iter=0
	local size=tonumber(({gui.FontSize.Name:gsub('^Size','')})[1])
	local longestLine=0
	
	local char
	while index<#gui.Text do
		local container=Instance.new('Frame',bigContainer)
		container.BackgroundTransparency=1
		
		repeat
			index=index+1
			char=gui.Text:sub(index,index)
			
			if char=='\n' then
				break
			elseif not char:find('^%c$') or char=='\9' then
				
				local letterFrame=gui:clone()
				letterFrame:ClearAllChildren()
				letterFrame.Parent=game.Workspace
				letterFrame.Text=char
				local textBounds=letterFrame.TextBounds
				
				local frame=Instance.new('Frame',container)
				frame.Position=_G:V2U2(marker,0)
				frame.Size=_G:V2U2(textBounds.X,size)
				frame.Name='Frame'..index
				
				if type(props)=='table' then
					_G:EditObject(frame,props)
				end
				
				marker=marker+textBounds.X
				letterFrame:destroy()
			end
		until index>=#gui.Text
		
		container.Size=_G:V2U2(marker,size)
		_G:AlignGUI(container,gui.TextXAlignment.Name)
		container.Position=UDim2.new(container.Position.X.Scale,container.Position.X.Offset,0,iter*size)
		
		if longestLine<marker then
			longestLine=marker
		end
		
		marker=0
		iter=iter+1
		container.Name='Line'..iter
	end
	
	if not _G:NotNil(ordered) then
		for frameI,frame in pairs(_G:Descendants(bigContainer)) do
			if frame.Name:find('^Frame') then
				frame.Parent=bigContainer
			end
		end
		
		for frameI,frame in pairs(_G:Descendants(bigContainer)) do
			if not frame.Name:find('^Frame') then
				frame:destroy()
			end
		end
	end
	
	bigContainer.Size=_G:V2U2(longestLine,iter*size)
	spawn(function()
		while not bigContainer.Parent do
			wait()
		end
		
		bigContainer.Visible=true
		_G:AlignGUI(bigContainer,gui.TextXAlignment.Name..gui.TextYAlignment.Name)
	end)
	
	return bigContainer
end;
AlignGUI=function(gui,corner)
	if not corner then
		_G:CentreGUI(gui)
	else
		local cornerv2=_G.cornerStrs[corner:lower()]
		_G:PositionGUI(gui,UDim2.new(cornerv2.X,0,cornerv2.Y,0),corner)
	end
end;
GetCharacterFromPlayer=function(player)
	
	local character=player.Character
	if not character or not character.Parent then
		return player.CharacterAdded:wait()
	end
	return character
end;
CornerStrsList={
	top=Vector2.new(.5,0);
	centertop=Vector2.new(.5,0);--DARN STATESIANS!
	
	lefttop=Vector2.new(0,0);
	left=Vector2.new(0,.5);
	leftcenter=Vector2.new(0,.5);--DARN STATESIANS!
	leftbottom=Vector2.new(0,1);
	
	centre=Vector2.new(.5,.5);
	center=Vector2.new(.5,.5);--DARN STATESIANS!
	centercenter=Vector2.new(.5,.5);--DARN STATESIANS!
	
	righttop=Vector2.new(1,0);
	right=Vector2.new(1,.5);
	rightcenter=Vector2.new(1,.5);--DARN STATESIANS!
	rightbottom=Vector2.new(1,1);
	
	bottom=Vector2.new(.5,1);
	centerbottom=Vector2.new(.5,1);--DARN STATESIANS!
};
PositionGUI=function(gui,pos,corner,scale)
	local corner=corner or 'centre'
	local maus=game.Players.LocalPlayer and game.Players.LocalPlayer:GetMouse() or nil
	local scale=maus and (
		(scale==true and Vector2.new(.5,.5)) or
		(_G:Type(scale)=='Vector2' and scale) or
		(_G:Type(scale)=='UDim2' and Vector2.new(scale.X.Scale,scale.Y.Scale))) or
		Vector2.new()
	
	local cornerV2=gui.AbsoluteSize*_G.cornerStrs[corner:lower()]
	local guiPos=pos-_G:V2U2(cornerV2)+(
		
		(gui.Parent:IsA('GuiObject') and
		UDim2.new(scale.X,-scale.X*gui.Parent.AbsoluteSize.X,scale.X,-scale.Y*gui.Parent.AbsoluteSize.Y)) or
		
		(maus and
		UDim2.new(scale.X,-scale.X*maus.ViewSizeX,scale.X,-scale.Y*maus.ViewSizeY)) or
		
		UDim2.new(scale.X,-scale.X*gui.Parent.CanvasSize.X,scale.X,-scale.Y*gui.Parent.CanvasSize.Y))
	gui.Position=guiPos
end;
GetGUIPosition=function(gui,corner)
	local corner=corner or 'centre'
	local cornerV2=gui.AbsoluteSize*_G.cornerStrs[corner:lower()]
	local guiPos=gui.Position+_G:V2U2(cornerV2)
	
	return guiPos
end;
ChangeObjectProperties=function(obj,props)
	if type(props)=='table' then
		for propI,prop in pairs(props) do
			if not pcall(function() obj[propI]=prop end) then
				print(propI..' is not a valid!!!')
			end
		end
	end
	return obj
end;
CreateGUIBetweenVector3s=function(v1,v2,camera,...)
	local camera=camera or game.Workspace.CurrentCamera
	return _G:CreateGUIBetweenV2s(Vector2.new(camera:WorldToScreenPoint(v1)),Vector2.new(camera:WorldToScreenPoint(v2)),...)
end;
CreateGUIBetweenVector2s=function(v1,v2,width,props)
	
	local width=width or 7
	local between=v1:lerp(v2,.5)
	local dist=(v2-v1).magnitude
	local guiPos=between-Vector2.new(width,dist)/2
	local rot=math.deg(math.atan(-(v2-v1).X/(v2-v1).Y))
	
	local gui=Instance.new('Frame')
	gui.Position=_G:V2toUDim2(guiPos)
	gui.Size=UDim2.new(0,width,0,dist)
	gui.Rotation=rot
	_G:EditObj(gui,props)
	
	return gui
end;
Vector2ToUDim2=function(v1,v2)
	local v=(v2 and _G:Type(v1)~='Vector2') and Vector2.new(v1,v2) or v1
	return UDim2.new(0,v.X,0,v.Y)
end;
ConvertToBoolean=function(bool)
	return not not bool
end;
CloneCharacter=function(ch)
	local model=Instance.new('Model',ch.Parent)
	model.Name=ch.Name
	for i,g in pairs(ch:children()) do
		if not ch:findFirstChild('Humanoid') or (g.Name=='Health' or g.Name=='Sound') then
			g:clone().Parent=model
		end
	end
	return model
end;
IsInObject=function(obj,box)
	local rel=box.CFrame:toObjectSpace(obj.CFrame)
	
	return math.abs(rel.p.X)<=box.Size.X/2 and math.abs(rel.p.Y)<=box.Size.Y/2 and math.abs(rel.p.Z)<=box.Size.Z/2
end;
CreateRegion3=function(...)
	local args={...}
	if #args==2 then
		args={args[1].X,args[1].Y,args[1].Z,args[2].X,args[2].Y,args[2].Z}
	end
	
	local v1=Vector3.new(math.min(args[1],args[4]),math.min(args[2],args[5]),math.min(args[3],args[6]))
	local v2=Vector3.new(math.max(args[1],args[4]),math.max(args[2],args[5]),math.max(args[3],args[6]))
	
	return Region3.new(v1,v2)
end;
GetTimeZones=function()
	local t={}
	for str in string.gmatch(game.HttpService:GetAsync('http://time.is/time_zones')
		:gsub(':(%d+)',function(mins) return tostring(mins/60):gsub('^0','') end),'UTC([%-%+][%d%.]+)') do
		t[#t+1]=str*60*60
	end
	return t
end;
GetValidSpawnLs=function(pl)
	local validSpawns=_G:FilterByFunction(_G:Filter(nil,nil,'SpawnLocation'),function(spawn,index)
		local isValid=(spawn.TeamColor==pl.TeamColor or spawn.Neutral) and spawn.Enabled
		return isValid
	end)
end;
ChangeCharacterAppearance=function(ch,id)
	local app=type(id)=='number' and game.Players:GetCharacterAppearanceAsync(id) or id
	
	while game.Players:playerFromCharacter(ch) and not game.Players:playerFromCharacter(ch):HasAppearanceLoaded() do
		wait()
	end
	
	for partI,part in pairs(ch:children()) do
		if not(part:isA('BasePart') or part:isA('Humanoid') or part:isA('LuaSourceContainer')) then
			part:destroy()
		end
	end
	
	if app:findFirstChild('face') then
		if ch.Head:findFirstChild('face') then
			ch.Head:findFirstChild('face'):destroy()
		end
		app.face.Parent=ch.Head
	end
	
	if ch.Torso:findFirstChild('roblox') then
		ch.Torso:findFirstChild('roblox'):destroy()
	end
	if app:findFirstChild('roblox') then
		app.roblox.Parent=ch.Torso
	end
	
	if app:findFirstChild('Mesh') then
		if ch.Head:findFirstChild('Mesh') then
			ch.Head:findFirstChild('Mesh'):destroy()
		end
		app.Mesh.Parent=ch.Head
	end
	
	for partI,part in pairs(app:children()) do
		part.Parent=ch
	end
end;
Vector3ToVector2=function(v3,axis)
	
	local axis=Enum.Axis[_G:EnumToString(string.upper(axis or 'Y'))]
	local axes={v3.x,v3.y,v3.z}
	table.remove(axes,_G:IndexOfValue(Enum.Axis:GetEnumItems(),axis))
	
	return Vector2.new(unpack(axes))
end;
Vector2ToVector3=function(v2,axis)
	
	local axis=Enum.Axis[_G:EnumToString(string.upper(axis or 'Y'))]
	local axes={v2.x,v2.y}
	table.insert(axes,_G:IndexOfValue(Enum.Axis:GetEnumItems(),axis),0)
	
	return Vector3.new(unpack(axes))
end;
CentreGUI=function(GUI)
	
	local ps=GUI.Size
	GUI.Position=UDim2.new((1-ps.X.Scale)/2,-ps.X.Offset/2,(1-ps.Y.Scale)/2,-ps.Y.Offset/2)
	
end;
GetGreyscaleColour=function(...)
	
	local gr=_G:GreyscaleNumber(...)
	return Color3.new(gr,gr,gr)
	
end;
GetGreyscaleNumber=function(colour,r,g,b)
	return colour.r*(r or .299)+colour.g*(g or .587)+colour.b*(b or .114)
end;
GetPartsOfObject=function(obj,class)
	
	local class=class or 'BasePart'
	if obj.Parent:isA(class) then
		return {obj.Parent}
	elseif obj:isA(class) then
		return {obj}
	else
		return _G:Filter(_G:Descendants(obj),'ClassName',class)
	end
	
end;
OnPlayerTouched=function(obj)
	local signal=LoadLibrary('RBXUtility').CreateSignal()
	
	obj.Touched:connect(function(hit)
		if _G:FirstChild(hit.Parent,'Humanoid','ClassName') then
			local char=hit.Parent
			signal:fire(char,game.Players:playerFromCharacter(char))
		end
	end)
	
	return signal
end;
FindFirstDescendant=function(obj,search,prop,recursive)
	if not search then
		return _G:FirstChild(game.Workspace,obj)
	end
	
	local obj=obj or game.Workspace
	return _G:Filter(recursive==false and obj:children() or _G:Descendants(obj),prop or 'Name',search)[1]
end;
IDTemplate='http://www.roblox.com/asset/?id=';
CreateChild=function(obj,name,class)
	
	local class=class or name
	local new=_G:Filter(obj:children(),'Name',name,'ClassName',class)[1] or Instance.new(class,obj)
	new.Name=name
	return new
	
end;
SetProperty=function(obj,prop,value)
	
	if type(obj)=='table' then
		for i,g in pairs(obj) do
			t0.SetProperty(g,prop,value)
		end
	elseif type(prop)=='table' then
		for i,g in pairs(prop) do
			t0.SetProperty(obj,g,value)
		end
	end
	
	local old=_G:HasProperty(obj,prop)
	if type(obj)=='userdata' and obj:isA('Model') and prop=='CFrame' then
		obj:SetPrimaryPartCFrame(value)
	elseif old then
		obj[prop]=value
	end
	return old,obj
	
end;
Equals=function(t1,t2,val,printt)
	
	if _G:Type(t1)==_G:Type(t2) then
		if type(t1)=='table' and type(t2)=='table' then
			for i,g in pairs(t1) do
				if t1[i]~=t2[i] then
					if printt then
						print(tostring(i)..'\t'..tostring(g))
					end
					return false
				end
			end
			
			for i,g in pairs(t2) do
				if t1[i]~=t2[i] then
					if printt then
						print(tostring(i)..'\t'..tostring(g))
					end
					return false
				end
			end
			
			return true
		elseif type(t1)=='number' and type(t2)=='number' then
			return math.abs(t2-t1)<(val or .01)
		elseif _G:Type(t1)=='Vector3' and _G:Type(t2)=='Vector3' then
			return _G:Equals(t1.X,t2.X,val,printt) and _G:Equals(t1.Y,t2.Y,val,printt) and _G:Equals(t1.Z,t2.Z,val,printt)
		elseif _G:Type(t1)=='Vector2' and _G:Type(t2)=='Vector2' then
			 return _G:Equals(t1.X,t2.X,val,printt) and _G:Equals(t1.Y,t2.Y,val,printt)
		end
	end
	return t1==t2
end;
FadeIn=function(...)
	return _G:FadeSound(({...})[1],({...})[2],'play')
end;
FadeOut=function(...)
	return _G:FadeSound(({...})[1],({...})[2],'pause')
end;
FadeSound=function(sound,duration,action)
	
	local action=action and string.lower(action) or nil
	local action=(action=='pause' or action=='stop' or action=='play') and action or (sound.IsPlaying and 'pause' or 'play')
	
	local duration=duration or 1
	local volume=sound.Volume
	local steps=math.floor(volume*10)
	local eachDuration=duration/steps
	
	if action=='pause' or action=='stop' then
		for i=steps-1,0,-1 do
			sound.Volume=i/10
			wait(eachDuration)
		end
		
		if action=='pause' then
			sound:pause()
		else
			sound:stop()
		end
	else
		sound.Volume=0
		sound:play()
		
		for i=0,steps-1,1 do
			sound.Volume=i/10
			wait(eachDuration)
		end
	end
	
	sound.Volume=volume
end;
TweenColor3=function(object,colour,time,prop,async)
	
	_G:Asyncronise(function(object,colour,time,prop,async)
		local time=time or 3
		local colour=colour or Color3.new()
		local prop=prop or 'BackgroundColor3'
		
		local difference={
			Red=colour.r-object[prop].r,
			Green=colour.g-object[prop].g,
			Blue=colour.b-object[prop].b
		}
		
		local max=math.ceil(time/wait())
		for i=1,max do
			object[prop]=Color3.new(
				object[prop].r+difference.Red/(time/max),
				object[prop].g+difference.Green/(time/max),
				object[prop].b+difference.Blue/(time/max)
			)
			wait()
		end
	end,async,object,colour,time,prop,async)
	
end;
Asyncronise=function(f,v,...)
	
	local v=v~=nil and v or true
	local args={...}
	
	if v then
		spawn(function()
			f(unpack(args))
		end)
	else
		f(unpack(args))
	end
	
end;
ConvertFunctionsToCoroutines=function(functions)
	
	local coroutines=(function()
		local t={}
		for i,g in pairs(functions) do
			spawn(function()
				while wait() do
					if not t[i] or coroutine.status(t[i])=='dead' then
						t[i]=coroutine.create(g)
					end
				end
				print(t[i])
			end)
		end
		return t
	end)()
	
	local functions=(function()
		local t={}
		for i,g in pairs(coroutines) do
			print(i)
			t[i]={}
			for i2,g2 in pairs(coroutine) do
				t[i][i2]=function(...)
					return {coroutine[i2](g,...)}
				end
			end
		end
		return t
	end)()
	
	return functions
end;
ConnectEvents=function(...)
	local args={...}
	
	if type(args[1])=='function' then
		f=args[1]
		
	elseif type(args[#args])=='function' then
		f=args[#args]
	end
	
	for i,g in pairs(args) do
		if type(g)~='function' then
			g:connect(f)
		end
	end
end;
Select=function(part,colour)--Robonix
	local f=_G:Filter(part:children(),'ClassName','SelectionBox')[1]
	if not f then
		local ob=Instance.new('SelectionBox',part)
		ob.Adornee=part
		ob.Color=BrickColor.new(colour)
		return ob
	end
end;
ForceField=function(part)--Robonix
	local f=_G:Filter(part:children(),'ClassName','ForceField')[1]
	if not f then
		local ob=Instance.new('ForceField',part)
		ob.Parent=part
		return ob
	end
end;
Glow=function(part,time)--Robonix
	local s=0
	for x=1,time do
		for i=1,10 do
			part.Reflectance=s
			s=s+0.1
			wait(0.1)
		end
		for i=1,10 do
			part.Reflectance=s
			s=s-0.1
			wait(0.1)
		end
	end
end;
Disappear=function(part,time)--Robonix
	local s=0
	for x=1,time do
		for i=1,10 do
			part.Transparency=s
			s=s+0.1
			wait(0.1)
		end
		for i=1,10 do
			part.Transparency=s
			s=s-0.1
			wait(0.1)
		end
	end
end;
CreateTemplate=function(obj1,times,f)
	
	local p=obj1.Parent
	local obj2=obj1:clone()
	obj1:destroy()
	if f then
		local t={}
		if type(times)=='number' then
			for i=1,times do
				local obj3=obj2:clone()
				obj3.Parent=p
				t[i]=obj3
				f(i-1,obj3)
			end
		elseif type(times)=='table' then
			local num=0
			for i,g in pairs(times) do
				num=num+1
				local obj3=obj2:clone()
				obj3.Parent=p
				t[i]=obj3
				f(i,obj3,g,num)
			end
		end
		return t
	end
	
	return obj2
end;
GetEventValid=function(e,w,f1,f2)
	
	local w=w or 1
	local active=0
	local bool
	e:connect(function(...)
		if active==0 then
			f1(...)--First to do event
			bool=false
		else
			bool=true
		end
		active=active+1
		if type(w)=='number' then
			wait(w)
		elseif not pcall(function()
			w:wait()
		end) then
			error('There isz NO wait argument! (2nd argumannette)')
		end
		active=active-1
		if active==0 then
			if f2 then
				f2(...)--Final to do event
			end
			bool=false
		else
			bool=true
		end
	end)
	
	return bool,active
end;
stringLib_f=(function()
	local t={
		Replace=string.gsub;
		Substring=string.sub;
		Repeat=string.rep;
		Matches=string.gmatch;

		SplitString=function(s,d)
			local t={}
			for i in string.gmatch(s:gsub(d,'\1'),'([^\1]+)') do
					t[#t+1]=i
			end
			return t
		end;

		StringToEnum=function(s,enum)
			return _G:Type(s)==enum and s or type(s)=='string' and Enum[enum][s]
		end;
		
		EnumToString=function(enum)
			return string.find(tostring(enum),'^Enum') and ({string.find(tostring(enum),'%.?([^%.]+)$')})[3] or tostring(enum)
		end;
		ToString=function(...)
			return t0.stringLib_f.EnumToString(...);
		end;
		
		PadLeft=function(n,a,pad)
			
			if tonumber(a) then
				local s=string.rep(pad or ' ',a-#tostring(n))
				return s..n
			end
			
		end;
		PadRight=function(n,a,pad)--�This returns a string with leading freakin... ZEROES!
			
			if tonumber(a) then
				local s=string.rep(pad or ' ',a-#tostring(n))
				return n..s
			end
			
		end;
		PadCentre=function(n,a,pad,alignRight)--�This returns a string with leading freakin... ZEROES!
			
			if tonumber(a) then
				local less=string.rep(pad or ' ',math.floor((a-#tostring(n))/2))
				local more=string.rep(pad or ' ',math.ceil((a-#tostring(n))/2))
				return alignRight and more..n..less or less..n..more
			end
			
		end;
		PadString=function(n,a,dir,pad)
			
			if string.lower(dir)=='left' then
				return _G:PadLeft(n,a,pad)
			elseif string.lower(dir)=='right' then
				return _G:PadRight(n,a,pad)
			end
			return _G:PadCentre(n,a,pad)
			
		end;
	}
	for i,g in pairs(string) do
		t[i]=g
	end
	return t
end)();
tableLib_f=(function()
	local t={
		
		ConvertToWritable=function(t,inOneLine)
			if type(t)=='table' then
				local s='{'
				local c=0
				for i,g in pairs(t) do
					c=c+1
					s=s
					..(c>1 and ',' or '')
					..(inOneLine and (c>1 and ' ' or '') or '\n\t')
					..((tonumber(i) and i>0) and '' or '['.._G:Writable(i)..'] = ')
					.._G:Writable(g)
				end
				
				return s..(inOneLine and '' or '\n')..'}'
			elseif type(t)=='string' then
				return '"'..t..'"'
			end
			return t
		end;
		SingleEntry=function(...)
			return _G:FilterByFunction(...)[1]
		end;
		FilterByFunction=function(objs,func)
			
			if not objs or not func then
				return _G:FilterByFunction(_G:Descendants(),objs or func)
			end
			
			local t={}
			local notT={}
			for i,g in pairs(_G:Table(objs)) do
				if func(g,i) then
					t[#t+1]=g
				else
					notT[#notT+1]=g
				end
			end
			
			return t,notT
		end;
		GetAppended=function(t,...)
			local stuff=#{...}==1 and ({...})[1] or {...}
			for i,g in pairs(stuff) do
				t[i]=g
			end
		end;
		GetLength=function(t)
			return type(t)=='table' and #_G:Array(t) or #tostring(t)
		end;
		GetTakenFromTable=function(t)--Makes a system used to reserving indicies.
			local taken={}
			return{
				reserve=function(isRandom)
					if #_G:Array(t)==#_G:Array(taken) then--If the list is full!
						return
					end
					
					local i
					if isRandom==true then
						local random=select(2,_G:RandomFromTable(t))
						repeat
							i=select(2,random())
						until not taken[i]
						
					elseif not isRandom then
						for i2,g in pairs(t) do
							if not taken[i2] then
								i=i2
								break
							end
						end
						
					elseif not taken[isRandom] then
						i=isRandom
					end
					
					taken[i]=os.time()--THE TIME IS 2016-05-07T06:57Z!!!!!
					return i
				end;
				release=function(index)
					taken[index]=nil
				end;
				taken=taken;
				isAvailable=function()
					for i,g in pairs(t) do
						if not taken[i] then
							return true
						end
					end
					return false
				end;
			}
		end;
		
		AnyEntry=function(t,f)
			for i,g in pairs(t) do
				if f(g,i) then
					return true
				end
			end
			return false
		end;
		AllEntries=function(t,f)
			for i,g in pairs(t) do
				if not f(g,i) then
					return false
				end
			end
			return true
		end;
		CountEntries=function(t,f)
			local count=0
			for i,g in pairs(t) do
				if not f(g,i) then
					count=count+1
				end
			end
			return count
		end;
		
		DoConnectionsBetweenTables=function(t1,t2,func)
			local returns={}
			for i,g1 in pairs(t1) do
				for i,g2 in pairs(t2) do
					local result=func(g1,g2)
					if result then
						table.insert(returns,result)
					end
				end
			end
			
			if #returns>0 then
				return returns
			end
		end;
		--Differences: Top does connections between entries in 2 tables. Bottom does connections of entries of the table.
		DoTableConnections=function(tabl,func)--Quadtagon, Pentagon, Hexagon, Heptagon, IDKagon
			
			local returns={}
			local count=0
			for i,g in pairs(tabl) do
				for i=i+1,#tabl do
					count=count+1
					local result=func(g,tabl[i],count)
					if result then
						table.insert(returns,result)
					end
				end
			end
			
			if #returns>0 then
				return returns
			end
			
		end;
		CombineTables=function(...)--Almost as much 'anticipated'
			
			local t={}
			for i,g in pairs({...}) do
				for i2,g2 in pairs(_G:Table(g)) do
					t[i2]=g2
				end
			end
			return t
			
		end;
		ToArray=function(t)--NAO IN ARRAI MOED
			
			local t=type(t)=='table' and t or {t}
			local T={}
			for i,g in pairs(t) do
				table.insert(T,g)
			end
			return T
			
		end;
		GetInAlphabeticalOrder=function(caps,reverse,p)--This alphabetises your tables.
			--�It's to die for!
			return function(A,B)
				local v=false
				local a=A
				local b=B
				if type(A)=='instance' then
					a=A.Name
				end
				if type(B)=='instance' then
					b=B.Name
				end
				if caps==false and type(a)=='string' and type(b)=='string' then
					a=string.upper(a)
					b=string.upper(B)
				end
				if reverse==true then
					local aa=a
					local bb=b
					a=bb
					b=aa
				end
				if type(a)=='string' and type(b)=='string' then
					for i=1,math.min(#a,#b) do
						if string.byte(string.sub(a,i,i))<string.byte(string.sub(b,i,i)) then
							v=true
							if p==true then
								print(a..' '..b)
							end
							break
						elseif string.byte(string.sub(a,i,i))>string.byte(string.sub(b,i,i)) then
							break
						end
					end
				end
				return v
			end
		end;
		ToTable=function(...)
			return type(...)~='table' and {...} or ({...})[1]
		end;
		CastTable=function(t,f,copies)
			
			if _G:NotNil(copies) then
				t=_G:Copy(t)
			end
			for i,g in pairs(t) do
				t[i]=f(g,i)
			end
			
			return t
		end;
		ClearTable=function(t)
			for i,g in pairs(t) do
				t[i]=nil
			end
		end;
		SwapTableIndicies=function(t,i1,i2,copies)
			
			if copies then
				t=_G:Copy(t)
			end
			
			local temp=t[i2]
			t[i2]=t[i1]
			t[i1]=temp
			
			return t
		end;
		SortTable=function(t,f,copies,quick)
			
			if _G:NotNil(copies) then
				t=_G:Copy(t)
			end
			local sorted=table.sort(t,_G:NotNil(quick) and function(a,b) return f(a)<f(b) end or f)
			
			return t,sorted
		end;
		CopyTable=function(t)
			local ret={}
			for i,g in pairs(t) do
				ret[i]=g
			end
			return ret
		end;
		TrimTable=function(t,copies)
			local orig=_G:Copy(t)
			if _G:NotNil(copies) then
				t={}
			else
				_G:Clear(t)
			end
			
			local index=0
			repeat
				index=index+1
			until orig[index]
			repeat
				t[#t+1]=orig[index]
				index=index+1
			until not orig[index]
			
			return t
		end;
		GetRandomFromTable=function(t)--Value of random index, function to find random, then random index to lead to first returned!
			
			local indicies={}
			for i,g in pairs(t) do
				indicies[#indicies+1]=i
			end
			
			local random=_G:Random(#indicies>0 and #indicies or 1)
			local randValue=random()
			return t[indicies[randValue]],function()
				local index=indicies[random()]
				return t[index],index
			end,indicies[randValue]
			
		end;
		IsValueInTable=function(...)
			
			local args={...}
			return ({pcall(function() return assert(_G:IndexOfValueInTable(unpack(args))) end)})[1]
			
		end;
		GetIndexOfValueInTable=function(t,val)
			
			for i,g in pairs(t) do
				if type(val)=='function' and val() or g==val then
					return i
				end
			end
			
		end;
	}
	for i,g in pairs(table) do
		t[i]=g
	end
	return t
end)();
math_f=(function()
	local t={
		e=2.71828;
		MinValue=-2147483648;
		MaxValue=2147483647;
		
		sec=function(...) return 1/math.cos(...) end;
		csc=function(...) return 1/math.sin(...) end;
		cot=function(...) return 1/math.tan(...) end;
		
		ShiftLeft=function(n,b)
			return _G.ShiftRight(n,-b)
		end;
		ShiftRight=function(n,b)
			return math.floor(n/2^math.floor(b))
		end;
		
		GetGapValue=function(size,num,gap)
			return (size-gap*(num+1))/num
		end;
		RomanNumeralList={
			{'M',1000};
			{'D',500};
			{'C',100};
			{'L',50};
			{'X',10};
			{'V',5};
			{'I',1};
		};
		ToArabicNumerals=function(s,l)
			local num=0
			local s=s:upper()
			local list=_G.RomanNumeralList
			if l then
				list=_G:Cast(list,function(g,i)
					return {l[8-i] or g[1],g[2]}
				end,true)
			end
			
			for numerI,numer in pairs(list) do
				local l,n=unpack(numer)
				if numerI<#list-1 then
					local N=n-_G:Magnitude(n-1)
					local L=list[_G:RoundTo0(numerI+1)+1][1]..numer[1]
					s=s:gsub(L,function() num=num+N return '' end)
				end
			end
			
			for numerI,numer in pairs(list) do
				local l,n=unpack(numer)
				s=s:gsub(l,function() num=num+n return '' end)
			end
			return tonumber(s..num) or num
		end;
		ToRomanNumerals=function(num,l)
			local input=math.floor(math.abs(num))
			local s=''
			local list=_G.RomanNumeralList
			if l then
				list=_G:Cast(list,function(g,i)
					return {l[8-i] or g[1],g[2]}
				end,true)
			end
			
			for numerI,numer in pairs(list) do
				local l,n=unpack(numer)
				while input>=n do
					s=s..l
					input=input-n
				end
				
				if numerI<#list-1 then
					local N=n-_G:Magnitude(n-1)
					local L=list[_G:RoundTo0(numerI+1)+1][1]..numer[1]
					while input>=N do
						s=s..L
						input=input-N
					end
				end
				
			end
			return math.floor(math.abs(num))~=0 and (num<0 and '-' or '')..s or 'O';
		end;
		
		GetTotal=function(...)
			local stuff=_G:Array(_G:Table(...))
			local total=0
			for i,g in pairs(stuff) do
				total=total+g
			end
			return total
		end;
		GetArithmeticAverage=function(...)
			local stuff=_G:Array(_G:Table(...))
			return _G:GetTotal(stuff)/#stuff
		end;
		GetStandardDeviation=function(...)
			local stuff=_G:Array(_G:Table(...))
			local avg=_G:Average(stuff)
			local total=0
			for i,g in pairs(stuff) do
				total=total+(avg-g)^2
			end
			return math.sqrt(total/#stuff)
		end;
		GetSampleDeviation=function(...)
			local stuff=_G:Array(_G:Table(...))
			local avg=_G:Average(stuff)
			local total=0
			for i,g in pairs(stuff) do
				total=total+(avg-g)^2
			end
			return math.sqrt(total/(#stuff-1))
		end;
		GetGeometricAverage=function(...)
			local stuff=_G:Array(_G:Table(...))
			local total=1
			for i,g in pairs(stuff) do
				total=total*g
			end
			return total^(1/#stuff)
		end;
		
		GetCombinations=function(a,b)
			if _G:IsPositiveInt(a) and _G:IsPositiveIntOr0(b) and b<=a then
				local n=_G:Permutations(a,b)
				for c=b,1,-1 do
					n=n/c
				end
				return n
			end
		end;
		GetPermutations=function(a,b)
			if _G:IsPositiveInt(a) and _G:IsPositiveIntOr0(b) and b<=a then
				local n=1
				for c=a,a-b+1,-1 do
					n=n*c
				end
				return n
			end
		end;
		CopySign=function(magn,sign)
			return _G:Sign(sign)*math.abs(magn)
		end;
		scalb=function(d,scale)
			return d*2^scale
		end;
		GetHypotenuse=function(a,b)
			return math.sqrt(a^2+b^2)
		end;
		GetMagnitude=function(n)
			return 10^math.floor(math.log10(n))
		end;
		GetTransformed=function(...)
			local args=_G:Arguments({...},{{'n',{'number'}},{'l1',0,{'number'},1},{'h1',1,{'number'},1},{'l2',{'number'}},{'h2',{'number'}}})
			return (args.n-args.l1)/(args.h1-args.l1)*(args.h2-args.l2)+args.l2
		end;
		GetInBase=function(s,to,from)--Does SUPER BASEY STUFF! The stuff so advanced.
			
			local e=true
			if to>1 then
				if type(s)=='string' or type(s)=='number' then
					from=from or 10
					if from>0 then
						local fixedBases=tostring(s):gsub('%((%d+)%)',function(num) return tonumber(num)<10 and num or string.char(num+55) end)
						s=0
						local len=#fixedBases
						local digNum=len
						for dig in string.gmatch(fixedBases,'.') do
							local dig=tonumber(dig) or string.byte(dig)-55
							digNum=digNum-1
							s=s+dig*from^digNum
						end
					else
						e=false
					end
				end
				
				if e then
					local b=''
					local i=0
					repeat
						if math.floor(s/to^i)-math.floor(s/to^i/to)*to<10 then
							b=math.floor(s/to^i)-math.floor(s/to^i/to)*to..b
						elseif math.floor(s/to^i)-math.floor(s/to^i/to)*to<36 then
							b=string.char(math.floor(s/to^i)-math.floor(s/to^i/to)*to+55)..b
						else
							b='('..math.floor(s/to^i)-math.floor(s/to^i/to)*to..')'..b
						end
						i=i+1
					until math.floor(s/to^i)==0
					return b
				end
			end
			
		end;
		ForceSign=function(n)
			return (_G:Sign(n)~=-1 and '+' or '')..n
		end;
		
		IsPositive=function(n)
			return type(n)~='number' and false or n>0
		end;
		IsPositiveInteger=function(n,...)
			return type(n)~='number' and false or _G:IsPositive(n) and _G:Int(n,...)
		end;
		IsPositiveOrZero=function(n)
			return type(n)~='number' and false or n>=0
		end;
		IsPositiveIntegerOrZero=function(n,...)
			return type(n)~='number' and false or _G:IsPositiveOr0(n) and _G:Int(n,...)
		end;
		
		IsNegative=function(n)
			return type(n)~='number' and false or n<0
		end;
		IsNegativeInteger=function(n,...)
			return type(n)~='number' and false or _G:IsNegative(n) and _G:Int(n,...)
		end;
		IsNegativeOrZero=function(n)
			return type(n)~='number' and false or n<=0
		end;
		IsNegativeIntegerOrZero=function(n,...)
			return type(n)~='number' and false or _G:IsNegativeOr0(n) and _G:Int(n,...)
		end;
		
		IsInteger=function(n,...)
			return type(n)~='number' and false or _G:Int(n,...)==n
		end;
		GetInteger=function(n)
			return _G:RoundTo0(n,1)
		end;
		GetRoundedToZero=function(n,round)
			local round=round or 1
			local sign=_G:Sign(n)
			return math.floor(n*sign/round)*sign*round
		end;
		GetRoundedFromZero=function(n,round)
			local round=round or 1
			local sign=_G:Sign(n)
			return math.ceil(n*sign/round)*sign*round
		end;
		GetLogarithm=function(n,base)
			return math.log(n)/math.log(base)
		end;
		GetPingPong=function(n,start,endin)
			if endin then
				return _G:PingPong(n,endin-start)+start
			end
			
			local signEndin=_G:Sign(start)--Sorry for the confusion!
			local endin=math.abs(start)
			local n=math.abs(n)
			local going=n;
			local switches=n%endin
			
			while going>=endin do
				switches=endin-switches
				going=going-endin
			end
			
			return signEndin*(switches)
		end;
		GetDecimalPart=function(n)
			return tonumber(select(3,tostring(n):find('(%.%d+)'))) or 0
		end;
		GetRepeating=function(n,start,endin)
			return not endin and (function()
				local reg=(n-1)%start+1
				return reg<=start and reg or reg-start
			end)() or _G:Repeating(n-(start-1),endin-(start-1))+(start-1)
		end;
		GetSignFromBoolean=function(bool)
			return bool and 1 or -1
		end;
		GetSign=function(n)
			return n~=0 and n/math.abs(n) or 0
		end;
		GetRounded=function(n,roundTo,abs)
			
			local sign=_G:Sign(n)
			local roundTo=roundTo or 1
			if abs then
				return sign*math.floor(math.abs(n/roundTo)+.5)*roundTo
			else
				return math.floor(n/roundTo+.5)*roundTo
			end
			
		end;
		GetCircleArea=function(r)
			a=r*r
			return math.pi*a
		end;
		GetCylinderArea=function(r,h)
			a=r*r 
			b=math.pi*a
			return b*h
		end;
		GetDegreeCount=function(x)
			a=x-2
			b=a*180
			return b/x
		end;
		GetFactorial=function(num)
			local n=0
			for c=1,num do
				n=n==0 and 1 or n*c
			end
			return n
			
			--[[
			local f
			f=function(num)
				if type(num)~='number' or num%1~=0 then
					error('Horrible argument to global \'factorial\' (integer expected got '..type(num)..')!',0) end
				if num<1 then
					return 1
				else
					return(num*(f(num-1)))
				end
			end
			
			return f(num)
			]]
		end;
		fdiv=function(x,y)
			
			local rem=math.fmod(x,y)
			local num,dec=math.modf(x/y)
			
			return num,rem
		end;
		GetGreatestCommonDivisor=function(a,b)
			
			while b~=0 do
				local t=b
				b=a%b
				a=t
			end
			
			return a
		end;
		GetLeastCommonMultiple=function(a,b)
			
			local num1=0
			local num2=0
			if a>b then
				num1=a
				num2=b
			else
				num1=b
				num2=a
			end
			for i=1,num2 do
				if (num1*i)%num2==0 then
					return i*num1
				end
			end
			error('DIE, '..a..' and '..b..'!',0)
			
		end;
		GetClamped=function(n,min,max)
			
			local ends={min or -math.huge,max or math.huge}
			local min,max=math.min(unpack(ends)),math.max(unpack(ends))
			return math.max(math.min(n,max),min)
			
		end;
		IsClamped=function(n,min,max)
			return _G:clamp(n,min,max)==n
			
		end;
		GetTransformedRandom=function(...)
			return _G:Transform(math.random(),...)
		end;
		GetRandom=function(...)--For makng random variables that don't repeat
			local args={...}
			
			if type(args[1])=='table' then
				return _G:RandomFromTable(...)
			end
			
			local rands={}
			local next=function(prevs)
				local prevs=prevs and math.max(1,prevs) or 1
				local var
				local times=0
				
				repeat
					var=math.random(unpack(args))
					times=times+1
				until times==42 or (function()
					for i=#rands,#rands-prevs+1,-1 do
						if rands[i]==var then
							return false
						end
					end
					return true
				end)()
				
				rands[#rands+1]=var
				return var
			end
			
			return next,rands
		end;
	}
	for i,g in pairs(math) do
		t[i]=g
	end
	return t
end)();
logic_f={
	
	NotNil=function(v) return v~=nil and v or true end;
	AND=function(a,b) return a and b end;--SciTE
	DOESNTIMPLY=function(a,b) return not b and a end;--SciTE
	A=function(a,b) return a end;--SciTE
	IMPLIEDBY=function(a,b) return not a and b end;--SciTE
	B=function(a,b) return b end;--SciTE
	xor=function(a,b) return (a or b) and not (a and b) end;--SciTE
	OR=function(a,b) return a or b end;--SciTE
	nor=function(a,b) return not a and not b end;--SciTE
	xnor=function(a,b) return a and b or not a and not b end;--SciTE
	IMPLIEDBY=function(a,b) return a or not b end;--SciTE
	IMPLIES=function(a,b) return b or not a end;--SciTE
	nand=function(a,b) return not (a and b) end;--SciTE
	num=function(min,max,v)
		local min=min or 1
		local max=max or _G.MaxValue
		local v=v~=nil and v or true
		
		return function(...)
			local num=0
			for i,g in pairs({...}) do
				if g==v then
					num=num+1
				end
			end
			return _G:IsClamped(num,min,max)
		end
	end;
	
};
DoConvert=function(object,toType)
	
	local function getWritablePropSet(class)
		local propSet={}
		for _,propData in pairs(_G.ConvertClasses[class].PropertyMap) do
			if not propData.Writeonly and not propData.Readonly and (not propData.Security or propData.Security=='PluginSecurity') then
				propSet[propData.PropertyName]=propData.PropertyType
			end
		end
		if _G.ConvertClasses[class].BaseClassName then
			for prop,ty in pairs(getWritablePropSet(_G.ConvertClasses[class].BaseClassName)) do
				propSet[prop]=ty
			end
		end
		return propSet
	end
	
	local sourcePropSet=getWritablePropSet(object.ClassName)
	local targetPropSet=getWritablePropSet(toType)
	
	local newObject=Instance.new(toType)
	for prop,ty in pairs(sourcePropSet) do
		if prop~='Parent' and targetPropSet[prop] and targetPropSet[prop]==ty then
			newObject[prop]=object[prop]
		end
	end
	
	for _,ch in pairs(object:GetChildren()) do
		ch.Parent=newObject
	end
	
	local oldParent=object.Parent
	object:Destroy()
	newObject.Parent=oldParent
	
	return newObject
end;
ConvertToEquilateralTriangle=function(part,side,thickness,delete)
	
	local delete=delete~=nil and delete or true
	if part.ClassName=='WedgePart' then
		local m=Instance.new('Model',part.Parent)
		part.CFrame=part.CFrame*CFrame.new(0,0,-side/4)
		if part.FormFactor~='Custom' then
			warn('I thought you remembered to change FormFactor first, here you go n00b')
		end
		part.FormFactor='Custom'
		part.Size=Vector3.new(thickness,(side^2-(side/2)^2)^.5,side/2)
		local c=part:Clone()
		c.CFrame=c.CFrame*CFrame.Angles(0,math.pi,0)*CFrame.new(0,0,-side/2)
		c.Parent=part.Parent
		if delete==true then
			script:Destroy()
		end
	else error('Must be a wedge, GO MAKE IT A WEDGE YOURSELF')
	end
end;
PlaceCommas=function(num,separator,decimal,p)
	
	local sign=_G:Sign(num)
	local num=tostring(num):gsub('^%-','')
	local separator=separator==true and '.' or separator or ','
	local decimal=decimal or (separator=='.' and ',') or '.'
	local p=p or 3
	local int=_G:Int(num)
	local templInt=string.gsub(string.reverse(string.gsub(string.reverse(tostring(int)),'('..string.rep('%d',p)..')','%1'..'\12')),'^'..'\12','')
	local intPart=string.gsub(templInt,'\12',separator)
	local decimalPart=tostring(num):find('%.') and string.gsub(num,'%d+%.',decimal) or ''
	
	return tonumber(num)==0 and '0' or (sign==-1 and '-' or '')..intPart..decimalPart
end;
FindObjectFromFullName=function(str,part)
	local part=part or game
	
	local str=string.gsub(str,'^game','')
	local str=string.gsub(str,'%["([%w ]+)"%]','%.%1')
	local str=str..'.'
	
	if string.find(str,'^script') then
		part=script
	elseif string.find(str,'^game') then
		part=game
	end
	
	for i in string.gmatch(str..'.','([%w ]+)%.') do
		local next=_G:GetProperty(part,i)
		if next then---
			part=next--
		else
			return
		end
	end
	
	return part
end;
FindFirstProperty=function(obj,p)
	local t={pcall(function() return obj[p] end)}
	
	local e=t[1] and t[2] or nil
	pcall(function()
		if obj:isA('Model') and p=='CFrame' then
			e=obj:GetPrimaryPartCFrame()
		end
	end)
	return e
end;
FixRotation=function(x,y,z)
	if not y and not z then
		x,y,z=x:toEulerAnglesXYZ()
	end
	
	if math.abs(x)>math.pi and math.abs(z)>math.pi then
		x=math.pi+x
		y=math.pi-y
		z=math.pi+z
	end
	
	return x,y,z
end;
MultiplyCFrame=function(cf,by)
	if by<0 then
		return _G:MultiplyCFrame(cf,-by):inverse()
	end
	
	local by=by or 1
	local pos=cf.p
	local rot={_G:FixAngles(cf:toEulerAnglesXYZ())}
	
	local newpos=pos*by
	local newrot={}
	
	for i,g in pairs(rot) do
		newrot[i]=g*by
	end
	
	return CFrame.new(newpos)*CFrame.Angles(unpack(newrot))
end;
LerpNumber=function(n1,n2,a)
	return (n1*(1-a))+(n2*a)
end;
LerpObjects=function(obj1,obj2,alpha)
	
	local typ=_G:Type(obj1)
	if typ==_G:Type(obj2) then
		if typ=='Color3' then
			return _G:LerpColour(obj1,obj2,alpha)
			
		elseif typ:find('^Vector') or typ=='CFrame' then
			return obj1:lerp(obj2,alpha)
			
		elseif typ=='UDim2' then
			return UDim2.new(
				_G:LerpNum(obj1.X.Scale,obj2.X.Scale,alpha),
				_G:LerpNum(obj1.X.Offset,obj2.X.Offset,alpha),
				_G:LerpNum(obj1.Y.Scale,obj2.Y.Scale,alpha),
				_G:LerpNum(obj1.Y.Offset,obj2.Y.Offset,alpha)
			)
		elseif typ=='number' then
			return _G:LerpNum(obj1,obj2,alpha)
			
		end
		error('Not a vaid type man!')
	elseif typ:find('Sequence$') then
		local kp=obj1.Keypoint
		return _G:Lerp(kp[1],kp[#kp],obj2)
	elseif typ:find('Range$') then
		return _G:Lerp(obj1.Min,obj1.Max,obj2)
	end
	error('MAKE LES SAME TYPE !!!')
	
end;
GetType=function(obj)
	local evidence={
		['BrickColor']={
			'Name';
			'Number';
			'r';'g';'b';
		};
		['Color3']={
			'r';'g';'b';
		};
		['Vector3']={
			'x';'y';'z';
			'unit';
			'magnitude';
		};
		['Vector2']={
			'x';'y';
			'unit';
			'magnitude';
		};
		['CFrame']={
			'x';'y';'z';
			'p';'lookVector';
		};
		['ColorSequence/NumberSequence']={
			'Keypoints';
		};
		['NumberRange']={
			'Min';
			'Max';
		};
		['UDim2']={
			X={'Scale','Offset'};
			Y={'Scale','Offset'};
		}
	}
	local enumtype=({string.find(tostring(obj),'Enum%.([^%.]+)')})[3]
	
	if type(obj)~='userdata' then
		return type(obj)
	elseif pcall(function() local _=obj['ClassName'] end) then
		return obj.ClassName
	elseif enumtype then
		return enumtype
	else
		for typeI,type in pairs(evidence) do
			local count=0
			local max=0
			
			for propI,prop in pairs(type) do
				if _G:HasProperty(obj,prop) then
					count=count+1
					max=max+1
				elseif _G:HasProperty(obj,propI) then
					for subI,sub in pairs(prop) do
						if _G:HasProperty(obj[propI],sub) then
							count=count+1
						end
						max=max+1
					end
				else
					max=max+1
				end
			end
			
			if count==max then
				return typeI
			end
		end
		return 'userdata'
	end
end;
GetSideCFrame=function(part,side)
	return part.CFrame*CFrame.new(Vector3.FromNormalId(Enum.NormalId[_G:EnumToString(side)])*part.Size/2)
end;
RemoveAxis=function(v3,...)

	local ret	
	local axis=({...})[1]
		axis=axis and string.upper(_G:EnumToString(axis)) or 'Y'
	local direction=Vector3.FromAxis(Enum.Axis[axis])
	ret=v3*(Vector3.new(1,1,1)-direction)
	
	return #{...}==1 and ret or _G:RemoveAxis(ret,select(2,...))
end;
LerpColour=function(start_color,end_color,alpha)--TechTeam911
	
	local start=start_color
	local endme=end_color
	local startvec=_G:Color3toVector3(start)
	local endvec=_G:Color3toVector3(endme)
	return _G:Vector3toColor3(startvec:lerp(endvec,alpha or .5))
	
end;
ToUnix=function(day,month,year,hour,minute,second)--���Made by Snej1!!!
	local hour=hour or 0
	local minute=minute or 0
	local second=second or 0
	
	local is_leap_year=function(y)
		if y%100==0 then
			return y%400==0
		else
			return y%4==0
		end
	end
	
	local stamp=0
	for i=(year-1),1970,-1 do
		stamp=stamp+((is_leap_year(i) and 366 or 365)*86400)
	end
	
	local c_month_days={
		31;
		(is_leap_year(year) and 29 or 28);
		31;
		30;
		31;
		30;
		31;
		31;
		30;
		31;
		30;
		31;
	}
	
	for i=(month-1),1,-1 do
		stamp=stamp+(c_month_days[i]*86400)
	end
	
	stamp=stamp+((day-1)*86400)
	stamp=stamp+(hour*3600)
	stamp=stamp+(minute*60)
	stamp=stamp+second
	return stamp
end;
FocusCamera=function(part,cam)
	
	local cam=cam or game.workspace.CurrentCamera
	local orig=cam.CoordinateFrame
	cam.CoordinateFrame=CFrame.new((part.CFrame*CFrame.new(0,0,10)).p,part.Position)
	
	local lookat=function(X,Y)
		return cam:ScreenPointToRay(X or cam.ViewportSize.X/2,Y or cam.ViewportSize.Y/2).Direction
	end
	
	local relative=cam.CoordinateFrame:toObjectSpace(CFrame.new(cam.CoordinateFrame.p+10*lookat(0,0)))
	local X,Y,Z=relative:components()
	
	local disX,disY=Z/X*(part.Size.X/2),-Z/Y*(part.Size.Y/2)
	local dis=-math.max(disX,disY)
	
	cam.CoordinateFrame=orig
	cam.Focus=part.CFrame
	return CFrame.new((part.CFrame*CFrame.new(0,0,dis)).p,part.CFrame.p),part.CFrame
	
end;
GetBoundingBox=function(model,rot,accuracy)--Well, sometimes you gotta turn off accuracy.
	
	local parts=_G:Filter(_G:Combine(_G:Descendants(model),{model}))
	local rot=rot-rot.p or CFrame.new()
	local accuracy=accuracy==nil and #parts<=200 or accuracy
	local axes={
		x={};
		y={};
		z={};
	}
	local rotaxes={
		x={};
		y={};
		z={};
	}
	local num=0
	local makeaxis=function(cframe,abscframe)
		for i,g in pairs(axes) do
			table.insert(g,cframe[i])
			table.sort(g)
		end
		
		local abscframe=abscframe or cframe
		for i,g in pairs(rotaxes) do
			table.insert(g,abscframe[i])
			table.sort(g)
		end
		num=num+1
	end
	
	for i,g in pairs(parts) do
		if accuracy then
			for X=-.5,.5 do
				for Y=-.5,.5 do
					for Z=-.5,.5 do
						local cframe=rot:toObjectSpace(g.CFrame*
							CFrame.new(g.Size.X*X,g.Size.Y*Y,g.Size.Z*Z))
						makeaxis(cframe,g.CFrame*
							CFrame.new(g.Size.X*X,g.Size.Y*Y,g.Size.Z*Z))
					end
				end
			end
		else
			local cframe=rot:toObjectSpace(g.CFrame)
			makeaxis(cframe,g.CFrame)
		end
	end
	
	
	local part=_G:Part()
	part.Size=Vector3.new(
		axes.x[num]-axes.x[1],
		axes.y[num]-axes.y[1],
		axes.z[num]-axes.z[1])
	part.CFrame=rot*CFrame.new(
		(rotaxes.x[num]+rotaxes.x[1])/2,
		(rotaxes.y[num]+rotaxes.y[1])/2,
		(rotaxes.z[num]+rotaxes.z[1])/2)
	return part
	
end;
AdminsList={
	
['IMightBeLying']=68465808;
['Rbadam']=32345429;
['Adamintygum']=48453004;
['androidtest']=57705391;
['RobloxFrenchie']=58491921;
['JacksSmirkingRevenge']=29341155;
['Mandaari']=60629145;
['vaiobot']=6729993;
['Goddessnoob']=9804369;
['Thr33pakShak3r']=67906358;
['effward']=41101356;
['Blockhaak']=29667843;
['Drewbda']=26076267;
['triptych999']=65171466;
['Tone']=264635;
['fasterbuilder19']=59257875;
['Zeuxcg']=30068452;
['concol2']=53627251;
['ReeseMcBlox']=56449;
['Jeditkacheff']=7210880;
['ChiefJustus']=35187797;
['Ellissar']=21964644;
['geekndestroy']=63971416;
['Noob007']=111627;
['Limon']=482238;
['hawkington']=39861325;
['Tabemono']=32580099;
['BrightEyes']=504316;
['Monsterinc3D']=35825637;
['IsolatedEvent']=55311255;
['CountOnConnor']=48988254;
['Scubasomething']=357346;
['OnlyTwentyCharacters']=28969907;
['LordRugdumph']=17707636;
['bellavour']=26714811;
['david.baszucki']=24941;
['ibanez2189']=13057592;
['ConvexHero']=66766775;
['Sorcus']=13268404;
['DeeAna00']=26065068;
['TheLorekt']=4108667;
['MSE6']=605367;
['CorgiParade']=28350010;
['Varia']=1636196;
['4runningwolves']=27861308;
['pulmoesflor']=26699190;
['Olive71']=9733258;
['groundcontroll2']=2284059;
['GuruKrish']=28080592;
['Countvelcro']=28137935;
['IltaLumi']=25964666;
['juanjuan23']=31221099;
['OstrichSized']=13965343;
['jackintheblox']=541489;
['SlingshotJunkie']=38324232;
['gordonrox24']=146569;
['sharpnine']=61666252;
['Motornerve']=25540124;
['watchmedogood']=29044576;
['jmargh']=49626068;
['JayKorean']=57352126;
['Foyle']=25682044;
['MajorTom4321']=1113299;
['supernovacaine']=30598693;
['FFJosh']=1311;
['Sickenedmonkey']=23603273;
['Doughtless']=28568151;
['KBUX']=8298697;
['totallynothere']=39871898;
['ErzaStar']=57708043;
['Keith']=22;
['Chro']=2430782;
['SolarCrane']=29373363;
['GloriousSalt']=29116915;
['UristMcSparks']=6783205;
['ITOlaurEN']=62155769;
['Malcomso']=24162607;
['HeySeptember']=66692187;
['Stickmasterluke']=80254;
['chefdeletat']=66093461;
['windlight13']=62968051;
['Stravant']=80119;
['imaginationsensation']=61890000;
['Matt Dusek']=916;
['CrimmsonGhost']=4550725;
['Mcrtest']=59737068;
['Seranok']=5600283;
['maxvee']=48656806;
['Coatp0cketninja']=48656806;
['Screenme']=35231885;
['b1tsh1ft']=55958416;
['ConvexRumbler']=51763936;
['mpliner476']=59638684;
['Totbl']=44231609;
['Aquabot8']=16906083;
['grossinger']=23984372;
['Merely']=13416513;
['CDakkar']=27416429;
['logitek00']=46526337;
['Siekiera']=21969613;
['Robloxkidsaccount']=39488230;
['flotsamthespork']=60425210;
['Soggoth']=16732061;
['Phil']=33904052;
['OrcaSparkles']=39882028;
['skullgoblin']=62060462;
['RickROSStheB0SS']=29044708;
['ArgonPirate']=15782010;
['NobleDragon']=6949935;
['Squidcod']=41256555;
['Raeglyn']=16150324;
['Xerolayne']=24419770;
['Robloxsai']=20396599;
['Briarroze']=55579189;
['hawkeyebandit']=21641566;
['DapperBuffalo']=39871292;
['Vukota']=48725400;
['swiftstone']=60880618;
['Gemlocker']=8736269;
['Tarabyte']=17199995;
['Timobius']=6983145;
['Tobotrobot']=20048521;
['Foster008']=1644345;
['Twberg']=33067469;
['DarthVaden']=57741156;
['Khanovich']=51164101;
['oLEFTo']=61380399;
['CodeWriter']=39876101;
['VladTheFirst']=23598967;
['Phaedre']=39299049;
['gorroth']=39855185;
['jynj1984']=61004766;
['RoboYZ']=10261020;
['ZodiacZak']=44564747;

};
CompareAdminsWithUserID=function(p,printt)--oh why
	
	local I=0
	local II=0
	for i2,g2 in pairs(_G.Admins) do
		if g2+0<p.userId then
			I=I+1
		end
		II=II+1
	end
	if printt then
		print('\n'..(I/II*100)..'% of Roblox admins are Age Kings,\n'..
		(100-(I/II*100))..'% of them are under '..p.Name..'\'s Age control')
	end
	return I/II,II/I
	
end;
CurseWordsList={--Exclusively from http://www.noswearing.com/dictionary, just that I used HttpService

'anus';
'arse';
'arsehole';
'ass';
'assbag';
'assbandit';
'assbanger'; 
'assbite';
'assclown';
'asscock';
'asscracker';
'asses';
'assface';
'assfuck';
'assfucker';
'assgoblin';
'asshat';
'asshead';
'asshole';
'asshopper';
'assjacker';
'asslick';
'asslicker';
'assmonkey';
'assmunch';
'assmuncher';
'assnigger';
'asspirate';
'assshit';
'assshole';
'asssucker';
'asswad';
'asswipe';
'axwound';
'bampot';
'bastard';
'beaner';
'bitch';
'bitchass';
'bitches';
'bitchtits';
'bitchy';
'blowjob';
'bollocks';
'bollox';
'boner';
'brotherfucker';
'bullshit';
'bumblefuck';
'buttfucka';
'buttfucker';
'carpetmuncher';
'chesticle';
'chinc';
'chink';
'choad';
'chode';
'clit';
'clitface';
'clitfuck';
'clusterfuck';
'cock';
'cockass';
'cockbite';
'cockburger';
'cockface';
'cockfucker';
'cockhead';
'cockjockey';
'cockknoker';
'cockmaster';
'cockmongler';
'cockmongruel';
'cockmonkey';
'cockmuncher';
'cocknose';
'cocknugget';
'cockshit';
'cocksmith';
'cocksmoke';
'cocksmoker';
'cocksniffer';
'cocksucker';
'cockwaffle';
'coochie';
'coochy';
'coon';
'cooter';
'cracker';
'cum';
'cumbubble';
'cumdumpster';
'cumguzzler';
'cumjockey';
'cumslut';
'cumtart';
'cunnie';
'cunnilingus';
'cunt';
'cuntass';
'cuntface';
'cunthole';
'cuntlicker';
'cuntrag';
'cuntslut';
'dago';
'damn';
'deggo';
'dick';
'dickbag';
'dickbeaters';
'dickface';
'dickfuck';
'dickfucker';
'dickhead';
'dickhole';
'dickjuice';
'dickmilk';
'dickmonger';
'dicks';
'dickslap';
'dicksucker';
'dicksucking';
'dicktickler';
'dickwad';
'dickweasel';
'dickweed';
'dickwod';
'dike';
'dildo';
'dipshit';
'doochbag';
'dookie';
'douche';
'douchebag';
'douchewaffle';
'dumass';
'dumbass';
'dumbfuck';
'dumbshit';
'dumshit';
'dyke';
'fag';
'fagbag';
'fagfucker';
'faggit';
'faggot';
'faggotcock';
'fagtard';
'fatass';
'fellatio';
'feltch';
'flamer';
'fuck';
'fuckass';
'fuckbag';
'fuckboy';
'fuckbrain';
'fuckbutt';
'fuckbutter';
'fucked';
'fucker';
'fuckersucker';
'fuckface';
'fuckhead';
'fuckhole';
'fuckin';
'fucking';
'fucknut';
'fucknutt';
'fuckoff';
'fucks';
'fuckstick';
'fucktard';
'fucktart';
'fuckup';
'fuckwad';
'fuckwit';
'fuckwitt';
'fudgepacker';
'gay';
'gayass';
'gaybob';
'gaydo';
'gayfuck';
'gayfuckist';
'gaylord';
'gaytard';
'gaywad';
'goddamn';
'goddamnit';
'gooch';
'gook';
'gringo';
'guido';
'handjob';
'heeb';
'hell';
'ho';
'hoe';
'homo';
'homodumbshit';
'honkey';
'humping';
'jackass';
'jagoff';
'jap';
'jerkass';
'jigaboo';
'jizz';
'junglebunny';
'kike';
'kooch';
'kootch';
'kraut';
'kunt';
'kyke';
'lameass';
'lardass';
'lesbian';
'lesbo';
'lezzie';
'mcfagget';
'mick';
'minge';
'mothafucka';
'motherfucker';
'motherfucking';
'muff';
'muffdiver';
'munging';
'negro';
'nigaboo';
'nigga';
'nigger';
'niggers';
'niglet';
'nutsack';
'paki';
'panooch';
'pecker';
'peckerhead';
'penis';
'penisbanger';
'penisfucker';
'penispuffer';
'piss';
'pissed';
'pissflaps';
'polesmoker';
'pollock';
'poon';
'poonani';
'poonany';
'poontang';
'porchmonkey';
'prick';
'punanny';
'punta';
'pussies';
'pussy';
'pussylicking';
'puto';
'queef';
'queer';
'queerbait';
'queerhole';
'renob';
'rimjob';
'ruski';
'sandnigger';
'schlong';
'scrote';
'shit';
'shitass';
'shitbag';
'shitbagger';
'shitbrains';
'shitbreath';
'shitcanned';
'shitcunt';
'shitdick';
'shitface';
'shitfaced';
'shithead';
'shithole';
'shithouse';
'shitspitter';
'shitstain';
'shitter';
'shittiest';
'shitting';
'shitty';
'shiz';
'shiznit';
'skank';
'skeet';
'skullfuck';
'slut';
'slutbag';
'smeg';
'snatch';
'spic';
'spick';
'splooge';
'spook';
'suckass';
'tard';
'testicle';
'thundercunt';
'tit';
'titfuck';
'tits';
'tittyfuck';
'twat';
'twatlips';
'twats';
'twatwaffle';
'unclefucker';
'vag';
'vagina';
'vajayjay';
'vjayjay';
'wank';
'wankjob';
'wetback';
'whore';
'whorebag';
'whoreface';
'wop';

};
FilterCurseWords=function(s,p)
	
	local s=s--Censored
	local S=s--Cases
	local curses=false
	local t={}
	
	for i,g in pairs(_G.cursewords) do
		table.insert(t,g)
		table.insert(t,({string.gsub(g,'ing$','in')})[1])
		table.insert(t,({string.gsub(g,'ing$','in\'')})[1])
		table.insert(t,({string.gsub(g,'$','s')})[1])
		table.insert(t,({string.gsub(g,'$','ing')})[1])
		table.insert(t,({string.gsub(g,'$','in')})[1])
	end
	
	for i,g in pairs(t) do
		if p then
			print(g)
		end
		if string.find(string.lower(s),g..'(%A?)') then
			curses=true
		end
		s=string.gsub(string.lower(s),'(%A?)'..g..'(%A?)',
			'%1'..(string.sub(g,1,1))..
			(string.rep('*',#g-1))..'%2')
	end
	
	local I=0
	local total=''
	
	for i in string.gmatch(S,'.') do
		I=I+1
		if i==string.upper(i) then
			total=total..string.upper(string.sub(s,I,I))
		else
			total=total..string.lower(string.sub(s,I,I))
		end
	end
	
	return total,curses
	
end;
GetArea=function(part)
	if #_G:Filter(part:getChildren(),nil,'BevelMesh')>0 then--Has a mesh
		
		local meshes=_G:Filter(part:getChildren(),nil,'BevelMesh')
		local mesh=meshes[#meshes]
		
		if mesh:IsA('CylinderMesh') then
			return (math.min(
				mesh.Scale.X*part.Size.X,
				mesh.Scale.Z*part.Size.Z)
				/2)^2*math.pi*mesh.Scale.Y*part.Size.Y
		elseif mesh:IsA('BlockMesh') then
			return mesh.Scale.X*part.Size.X*mesh.Scale.Z*part.Size.Z*mesh.Scale.Y*part.Size.Y
		end
		
	elseif part:IsA('WedgePart') and--Is a WedgePart, has no mesh
		#_G:Filter(part:getChildren(),nil,'DataModelMesh')==0 then
		
		return part.Size.X*part.Size.Y*part.Size.Z/2
		
	elseif part:IsA('CornerWedgePart') and--Is a CornerWedgePart, has no mesh
		#_G:Filter(part:getChildren(),nil,'DataModelMesh')==0 then
		
		return part.Size.X*part.Size.Z*part.Size.Y/6--fixed
		
	else
		return part.Size.X*part.Size.Y*part.Size.Z
	end
end;
ColoursList={--Yummy bracket, wait, I'm the one being eaten

AliceBlue=Color3.new(240/255,248/255,1);
AntiqueWhite=Color3.new(250/255,235/255,215/255);
Aqua=Color3.new(0,1,1);
Aquamarine=Color3.new(127/255,1,212/255);
Azure=Color3.new(240/255,1,1);
Background=Color3.new(204/255,204/255,204/255);
Beige=Color3.new(245/255,245/255,220/255);
Bisque=Color3.new(1,228/255,196/255);
Black=Color3.new();
BlanchedAlmond=Color3.new(1,235/255,205/255);
Blue=Color3.new(0,0,1);
BlueViolet=Color3.new(138/255,43/255,226/255);
Brown=Color3.new(165/255,42/255,42/255);
BurlyWood=Color3.new(222/255,184/255,135/255);
CadetBlue=Color3.new(95/255,158/255,160/255);
Chartreuse=Color3.new(127/255,1,0);
Chocolate=Color3.new(210/255,105/255,30/255);
Coral=Color3.new(1,127/255,80/255);
CornflowerBlue=Color3.new(100/255,149/255,237/255);
Cornsilk=Color3.new(1,248/255,220/255);
Crimson=Color3.new(220/255,20/255,60/255);
Cyan=Color3.new(0,1,1);
Windows8=Color3.new(0,188/255,242/255);
Windows10=Color3.new(0,120/255,215/255);
DarkBlue=Color3.new(0,0,139/255);
DarkCyan=Color3.new(0,139/255,139/255);
DarkGoldenrod=Color3.new(184/255,134/255,11/255);
DarkGray=Color3.new(169/255,169/255,169/255);
DarkGreen=Color3.new(0,100/255,0);
DarkKhaki=Color3.new(189/255,183/255,107/255);
DarkMagenta=Color3.new(139/255,0,139/255);
DarkOliveGreen=Color3.new(85/255,107/255,47/255);
DarkOrange=Color3.new(1,140/255,0);
DarkOrchid=Color3.new(153/255,50/255,204/255);
DarkRed=Color3.new(139/255,0,0);
DarkSalmon=Color3.new(233/255,150/255,122/255);
DarkSeaGreen=Color3.new(143/255,188/255,139/255);
DarkSlateBlue=Color3.new(72/255,61/255,139/255);
DarkSlateGray=Color3.new(47/255,79/255,79/255);
DarkTurquoise=Color3.new(0,206/255,209/255);
DarkViolet=Color3.new(148/255,0,211/255);
DeepPink=Color3.new(1,20/255,147/255);
DeepSkyBlue=Color3.new(0,191/255,1);
DimGray=Color3.new(105/255,105/255,105/255);
DodgerBlue=Color3.new(30/255,144/255,1);
Firebrick=Color3.new(178/255,34/255,34/255);
FloralWhite=Color3.new(1,250/255,240/255);
ForestGreen=Color3.new(34/255,139/255,34/255);
Fuchsia=Color3.new(1,0,1);
Gainsboro=Color3.new(220/255,220/255,220/255);
GhostWhite=Color3.new(248/255,248/255,1);
Gold=Color3.new(1,215/255,0);
Goldenrod=Color3.new(218/255,165/255,32/255);
Gray=Color3.new(128/255,128/255,128/255);
Green=Color3.new(0,128/255,0);
GreenYellow=Color3.new(173/255,1,47/255);
Honeydew=Color3.new(240/255,1,240/255);
HotPink=Color3.new(1,105/255,180/255);
IndianRed=Color3.new(205/255,92/255,92/255);
Indigo=Color3.new(75/255,0,130/255);
Ivory=Color3.new(1,1,240/255);
Khaki=Color3.new(240/255,230/255,140/255);
Lavender=Color3.new(230/255,230/255,250/255);
LavenderBlush=Color3.new(1,240/255,245/255);
LawnGreen=Color3.new(124/255,252/255,0);
LemonChiffon=Color3.new(1,250/255,205/255);
LightBlue=Color3.new(173/255,216/255,230/255);
LightCoral=Color3.new(240/255,128/255,128/255);
LightCyan=Color3.new(224/255,1,1);
LightGoldenrodYellow=Color3.new(250/255,250/255,210/255);
LightGray=Color3.new(211/255,211/255,211/255);
LightGreen=Color3.new(144/255,238/255,144/255);
LightPink=Color3.new(1,182/255,193/255);
LightSalmon=Color3.new(1,160/255,122/255);
LightSeaGreen=Color3.new(32/255,178/255,170/255);
LightSkyBlue=Color3.new(135/255,206/255,250/255);
LightSlateGray=Color3.new(119/255,136/255,153/255);
LightSteelBlue=Color3.new(176/255,196/255,222/255);
LightYellow=Color3.new(1,1,224/255);
Lime=Color3.new(0,1,0);
LimeGreen=Color3.new(50/255,205/255,50/255);
Linen=Color3.new(250/255,240/255,230/255);
Magenta=Color3.new(1,0,1);
Maroon=Color3.new(128/255,0,0);
MediumAquamarine=Color3.new(102/255,205/255,170/255);
MediumBlue=Color3.new(0,0,205/255);
MediumOrchid=Color3.new(186/255,85/255,211/255);
MediumPurple=Color3.new(147/255,112/255,219/255);
MediumSeaGreen=Color3.new(60/255,179/255,113/255);
MediumSlateBlue=Color3.new(123/255,104/255,238/255);
MediumSpringGreen=Color3.new(0,250/255,154/255);
MediumTurquoise=Color3.new(72/255,209/255,204/255);
MediumVioletRed=Color3.new(199/255,21/255,133/255);
MidnightBlue=Color3.new(25/255,25/255,112/255);
MintCream=Color3.new(245/255,1,250/255);
MistyRose=Color3.new(1,228/255,225/255);
Moccasin=Color3.new(1,228/255,181/255);
NavajoWhite=Color3.new(1,222/255,173/255);
Navy=Color3.new(0,0,128/255);
OldLace=Color3.new(253/255,245/255,230/255);
Olive=Color3.new(128/255,128/255,0);
OliveDrab=Color3.new(107/255,142/255,35/255);
Orange=Color3.new(1,165/255,0);
OrangeRed=Color3.new(1,69/255,0);
Orchid=Color3.new(218/255,112/255,214/255);
PaleGoldenrod=Color3.new(238/255,232/255,170/255);
PaleGreen=Color3.new(152/255,251/255,152/255);
PaleTurquoise=Color3.new(175/255,238/255,238/255);
PaleVioletRed=Color3.new(219/255,112/255,147/255);
PapayaWhip=Color3.new(1,239/255,213/255);
PeachPuff=Color3.new(1,218/255,185/255);
Peru=Color3.new(205/255,133/255,63/255);
Pink=Color3.new(1,192/255,203/255);
Plum=Color3.new(221/255,160/255,221/255);
PowderBlue=Color3.new(176/255,224/255,230/255);
Purple=Color3.new(128/255,0,128/255);
Red=Color3.new(1,0,0);
RosyBrown=Color3.new(188/255,143/255,143/255);
RoyalBlue=Color3.new(65/255,105/255,225/255);
SaddleBrown=Color3.new(139/255,69/255,19/255);
Salmon=Color3.new(250/255,128/255,114/255);
SandyBrown=Color3.new(244/255,164/255,96/255);
SeaGreen=Color3.new(46/255,139/255,87/255);
SeaShell=Color3.new(1,245/255,238/255);
Sienna=Color3.new(160/255,82/255,45/255);
Silver=Color3.new(192/255,192/255,192/255);
SkyBlue=Color3.new(135/255,206/255,235/255);
SlateBlue=Color3.new(106/255,90/255,205/255);
SlateGray=Color3.new(112/255,128/255,144/255);
Snow=Color3.new(1,250/255,250/255);
SpringGreen=Color3.new(0,1,127/255);
SteelBlue=Color3.new(70/255,130/255,180/255);
Tan=Color3.new(210/255,180/255,140/255);
Teal=Color3.new(0,128/255,128/255);
Thistle=Color3.new(216/255,191/255,216/255);
Tomato=Color3.new(1,99/255,71/255);
Turquoise=Color3.new(64/255,224/255,208/255);
Violet=Color3.new(238/255,130/255,238/255);
Wheat=Color3.new(245/255,222/255,179/255);
White=Color3.new(1,1,1);
WhiteSmoke=Color3.new(245/255,245/255,245/255);
Yellow=Color3.new(1,1,0);
YellowGreen=Color3.new(154/255,205/255,50/255);

};
RemoveDuplicates=function(t,keep)--Oh, do I have to, converts to an array, if you mind!
	local keep=keep~=false
	
	local new={}
	local ofeach={}
	for i,g in pairs(t) do
		ofeach[g]=ofeach[g] and ofeach[g]+1 or 1
	end
	
	for i,g in pairs(ofeach) do
		if keep or g==1 then
			table.insert(new,i)
		end
	end
	
	return new
end;
RoundToNearestColour=function(colour)--BrickColor, �Ya jealous?
	
	local colours={}
	for i,g in pairs(_G.Colours) do
		colours[i]={i,g,(_G:Color3toVector3(g)-_G:Color3toVector3(colour)).Magnitude}
	end

	local colours=_G:ToArray(colours)
	table.sort(colours,function(a,b)
		if a[3]<b[3] then
			return true
		end
	end)
	return unpack(_G:ToArray(colours)[1],1,2)
	
end;
Color3ToVector3=function(colour)--I <3 Magintude
	return Vector3.new(colour.r,colour.g,colour.b)
end;
Vector3ToColor3=function(colour)--I h8 Magnitude
	return Color3.new(colour.x,colour.y,colour.z)
end;
WaitForChildHierarchy=function(start,...)
	
	if not start:IsA('Instance') then return end
	local currentObj=start
	for i,g in pairs{...} do
		if type(g)=='string' then
			currentObj=currentObj:WaitForChild(g)
		end
	end
	return currentObj
	
end;
GetSkyHue=function(_G)--MOAR CLONET PLZZ
	
	local TIME=game.Lighting:GetMinutesAfterMidnight()
	local TIMES={0,300,330,360,390,1050,1080,1100,1440};
	local C3,V3=Color3.new,Vector3.new
	local COLORS={C3(0,0,0),
		C3(0,0,0),
		C3(.2,.15,.01),
		C3(.2,.15,.01),
		C3(1,1,1),
		C3(1,1,1),
		C3(.4,.2,.05),
		C3(0,0,0),
		C3(0,0,0)};
	local P0,P1=1,#TIMES
	for k,v in pairs(TIMES) do
		if v>TIMES[P0] and v<TIME then P0=math.max(1,k) end
		if v<TIMES[P1] and v>TIME then P1=math.min(#TIMES,k) end
	end
	local START,END=TIMES[P0],TIMES[P1]
	if START==END or P0==P1 then
		return Color3.new()
	end
	local A=math.max(0,math.min(1,(TIME-START)/(END-START)))
	local S,E=COLORS[P0],COLORS[P1]
	local CL=V3(S.r,S.g,S.b):lerp(V3(E.r,E.g,E.b),A)
	return Color3.new(CL.X,CL.Y,CL.Z)
	
end;
SetEventCycle=function(...)
	
	local funcs={...}
	local mode=-1
	local next=function(...)
		mode=(mode+1)%#funcs
		return funcs[mode+1](...)
	end
	return next
	
end;
RGBToHSL={'Deprecated',function(R,G,B)--scripterzack
	
	local Min,Max=math.min(R,G,B),math.max(R,G,B)
	local dMax=Max-Min
	local H,S,L=0,0,(Max+Min)/2
	if dMax~=0 then
		
		if L<0.5 then
			S=dMax/(Max+Min)
		else
			S=dMax/(2-Max-Min)
		end
		
		local dR=(((Max-R)/6)+(dMax/2))/dMax
		local dG=(((Max-G)/6)+(dMax/2))/dMax
		local dB=(((Max-B)/6)+(dMax/2))/dMax
		
		if R==Max then
			H=dB-dG
		elseif G==Max then
			H=(1/3)+dR-dB
		elseif B==Max then
			H=(2/3)+dG-dR
		end
		
		if H<0 then
			H=H+1
		end
		if H>1 then
			H=H-1
		end
	end
	return H,S,L
	
end};
HUEToRGB={'Deprecated',function(v1,v2,vH)--scripterzack
	
	if vH<0 or vH>1 then
		vH=vH-math.floor(vH)
	end
	
	if 6*vH<1 then
		return v1+(v2-v1)*6*vH
	end
	
	if 2*vH<1 then
		return v2
	end
	
	if 3*vH<2 then
		return v1+(v2-v1)*((2/3)-vH)*6
	end
	
	return v1
end};
HSLToRGB={'Deprecated',function(H,S,L)--uses HUEToRGB also. scripterzack
	
	local R,G,B
	if S==0 then
		return L,L,L
		
	else
		local v2=L<0.5 and L*(1+S) or (L+S)-(S*L)
		local v1=2*L-v2
		
		return _G:HUEToRGB(v1,v2,H+1/3),
		_G:HUEtoRGB(v1,v2,H),
		_G:HUEtoRGB(v1,v2,H-1/3)
	end
	
end};
InvertColour=function(colour)--Changes a Color3 to a 3roloC by inversimosisomisrevni
	return Color3.new(1-colour.r,1-colour.g,1-colour.b)
end;
FilterByProperty=function(obj,prop,n,...)--Much 'anticipated'
	
	if #{...}>0 then
		return _G:Filter(_G:Filter(obj,...),prop,n)
	end
	
	local t={}
	local prop=prop or 'ClassName'
	local n=n or 'BasePart'
	local obj=obj or _G:Descendants()
	local obj=type(obj)~='table' and _G:Descendants(obj) or obj
	
	for i,g in pairs(obj) do
		if (prop=='ClassName' and g:IsA(n)) or _G:Equals(_G:EnumToString(_G:GetProperty(g,prop)),n) or _G:Equals(_G:GetProperty(g,prop),n) then
			table.insert(t,g)
		end
	end
	return t
	
end;
GetGUICollisionState=function(group1,group2)--GUI MADNESS
	
	local parts={}
	local groups={}
	local group1=type(group1)~='table' and {group1} or group1
	local group2=type(group2)~='table' and {group2} or group2
	for i,g in pairs({group1,group2}) do
		
		print(i)
		groups[i]={}
		for i2,g2 in pairs(_G:Filter(g,'ClassName','GuiObject')) do
			
			local part=_G:CreatePart(game.Workspace)
			part.CFrame=CFrame.new(
				g2.AbsolutePosition.X+g2.AbsoluteSize.X/2,
				g2.AbsolutePosition.Y+g2.AbsoluteSize.Y/2,
			0)*CFrame.Angles(0,0,math.rad(g2.Rotation))
			part.FormFactor=Enum.FormFactor.Custom
			part.Size=Vector3.new(g2.AbsoluteSize.X,g2.AbsoluteSize.Y,0)
			part.Transparency=1
			part.CanCollide=false
			
			table.insert(groups[i],part)
		end
	end
	
	local result=_G:Collides(groups[1],groups[2])
	for i,g in pairs(_G:Combine(groups[1],groups[2])) do
		g:Destroy()
	end
	return result
	
end;
GetCollisionState=function(group1,group2)--CFrame MADNESS
	
	local g1=group1 and _G:FilterByProperty(group1)
	local g2=group2 and _G:FilterByProperty(group2)
	
	if g2 then
		return (function()--Putting a thread in a function makes collapsing the fold more compact.
			local collide=false
			local collisions=_G:DoConnectionsBetweenTables(g1,g2,function(part1,part2)
				
				local cornersX={}--axes
				for i=1,2,.5 do--axes
					table.insert(cornersX,part1.CFrame*CFrame.new((i-1.5)*part1.Size.X,0,0))--axes
				end--axes
				
				local cornersY={}--axes
				for i,g in pairs(cornersX) do--axes
					for i=1,2,.5 do--axes
						table.insert(cornersY,g*CFrame.new(0,(i-1.5)*part1.Size.Y,0))--axes
					end--axes
				end--axes
				
				local cornersZ={}--axes
				for i,g in pairs(cornersY) do--axes
					for i=1,2,.5 do--axes
						table.insert(cornersZ,g*CFrame.new(0,0,(i-1.5)*part1.Size.Z))--axes
					end--axes
				end--�We completed Mt Axis!
				
				local corners=cornersZ
				collides=false
				parts={}
				
				local i=0
				_G:DoTableConnections(corners,function(a,b)
					i=i+1
					local part,location=game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(a.p,b.p),
					_G:Combine(parts,{part1,part2}))
					if part and (a.p-location).Magnitude<(a.p-b.p).Magnitude then
						collides=true
					end
				end)
				
				return collides
			end)
			
			for i,g in pairs(_G:Table(collisions)) do
				if g then
					collide=true
				end
			end
			return collide
		end)()--There was gonna be a detector on which parts do collide, but proven too difficult.
		--Whoever can make one for me will get ?R$10000.
	end
end;
IsInSpotLight=function(spotLight,position)--Credit to CloneTrooper1019, a friend of mine.
	
	local cone=math.rad(spotLight.Angle)
	local part=_G:GetNearestParent(spotLight,'BasePart','ClassName')
	local direction=CFrame.new(part.Position,
		(part.CFrame*CFrame.new(Vector3.FromNormalId(spotLight.Face))).p)
	local space=direction:pointToObjectSpace(position)
	local unit=space.unit
	return (unit.Z<0) and (unit.X>(cone/-2) and unit.X<(cone/2)) and
	(space.magnitude<=spotLight.Range)
	
end;
TweenCFrame=function(part,to,direction,type,time)--She became 13.
	
	local from=part:IsA('BasePart') and part.CFrame or part:GetPrimaryPartCFrame()
	local done=false
	
	local x=Instance.new('Frame',game.StarterGui)
	local y=Instance.new('Frame',game.StarterGui)
	local z=Instance.new('Frame',game.StarterGui)
	
	local R00=Instance.new('Frame',game.StarterGui)
	local R01=Instance.new('Frame',game.StarterGui)
	local R02=Instance.new('Frame',game.StarterGui)
	local R10=Instance.new('Frame',game.StarterGui)
	local R11=Instance.new('Frame',game.StarterGui)
	local R12=Instance.new('Frame',game.StarterGui)
	local R20=Instance.new('Frame',game.StarterGui)
	local R21=Instance.new('Frame',game.StarterGui)
	local R22=Instance.new('Frame',game.StarterGui)
	
	x.Position=UDim2.new(select(1,from:components()),0,0,0)
	y.Position=UDim2.new(select(2,from:components()),0,0,0)
	z.Position=UDim2.new(select(3,from:components()),0,0,0)
	
	R00.Position=UDim2.new(select(4,from:components()),0,0,0)
	R01.Position=UDim2.new(select(5,from:components()),0,0,0)
	R02.Position=UDim2.new(select(6,from:components()),0,0,0)
	R10.Position=UDim2.new(select(7,from:components()),0,0,0)
	R11.Position=UDim2.new(select(8,from:components()),0,0,0)
	R12.Position=UDim2.new(select(9,from:components()),0,0,0)
	R20.Position=UDim2.new(select(10,from:components()),0,0,0)
	R21.Position=UDim2.new(select(11,from:components()),0,0,0)
	R22.Position=UDim2.new(select(12,from:components()),0,0,0)
	
	x:TweenPosition(UDim2.new(select(1,to:components()),0,0),direction,type,time)
	y:TweenPosition(UDim2.new(select(2,to:components()),0,0,0),direction,type,time)
	z:TweenPosition(UDim2.new(select(3,to:components()),0,0,0),direction,type,time)
	
	R00:TweenPosition(UDim2.new(select(4,to:components()),0,0),direction,type,time)
	R01:TweenPosition(UDim2.new(select(5,to:components()),0,0),direction,type,time)
	R02:TweenPosition(UDim2.new(select(6,to:components()),0,0),direction,type,time)
	R10:TweenPosition(UDim2.new(select(7,to:components()),0,0),direction,type,time)
	R11:TweenPosition(UDim2.new(select(8,to:components()),0,0),direction,type,time)
	R12:TweenPosition(UDim2.new(select(9,to:components()),0,0),direction,type,time)
	R20:TweenPosition(UDim2.new(select(10,to:components()),0,0),direction,type,time)
	R21:TweenPosition(UDim2.new(select(11,to:components()),0,0),direction,type,time)
	R22:TweenPosition(UDim2.new(select(12,to:components()),0,0),direction,type,time)
	
	coroutine.resume(coroutine.create(function()
		wait(time or 1)
		done=true
	end))
	
	while not done do
		if part:IsA('BasePart') then
			part.CFrame=
			CFrame.new(
				x.Position.X.Scale,
				y.Position.X.Scale,
				z.Position.X.Scale,
				
				R00.Position.X.Scale,
				R01.Position.X.Scale,
				R02.Position.X.Scale,
				R10.Position.X.Scale,
				R11.Position.X.Scale,
				R12.Position.X.Scale,
				R20.Position.X.Scale,
				R21.Position.X.Scale,
				R22.Position.X.Scale
			)
		else
			part:SetPrimaryPartCFrame(CFrame.new(
				x.Position.X.Scale,
				y.Position.X.Scale,
				z.Position.X.Scale,
				
				R00.Position.X.Scale,
				R01.Position.X.Scale,
				R02.Position.X.Scale,
				R10.Position.X.Scale,
				R11.Position.X.Scale,
				R12.Position.X.Scale,
				R20.Position.X.Scale,
				R21.Position.X.Scale,
				R22.Position.X.Scale
			))
		end
		wait()
	end
	
	x:Destroy()
	y:Destroy()
	z:Destroy()
	
	R00:Destroy()
	R01:Destroy()
	R02:Destroy()
	R10:Destroy()
	R11:Destroy()
	R12:Destroy()
	R20:Destroy()
	R21:Destroy()
	R22:Destroy()
	
end;
SetClicks=function(detector,click,hover,leave)--Clickin' AWAY
	
	local on=nil
	local click=type(click)=='function' and {click} or click
	local mode=1
	
	detector.MouseHoverEnter:connect(function(p)
		on=p
	end)
	detector.MouseHoverLeave:connect(function()
		on=nil
	end)
	detector.MouseClick:connect(function(p)
		mode=mode<#click and mode+1 or 1
		click[mode](p)
	end)
	
	while true do
		while not on do
			wait()
		end
		hover(on)
		local player=on
		while on do
			wait()
		end
		leave(player)
	end
	
end;
CreatePart=function(parent,props)--Makes something without your permission...
	
	local part=Instance.new('Part')
	part.Anchored=true
	part.FormFactor='Custom'
	part.TopSurface=Enum.SurfaceType.Smooth
	part.BottomSurface=Enum.SurfaceType.Smooth
	part.Size=Vector3.new(1,1,1)
	part.Parent=parent
	
	if type(props)=='table' then
		for i,g in pairs(props) do
			part[i]=g
		end
	end
	
	return part
end;
CreateCircleAroundPart=function(part,radius,height,width,sides)--Makes a radius'd circle
	
	local sides=sides or 24
	local pos=part.CFrame
	
	local group=Instance.new('Model')
	for i=1,sides do
		local partpart=part:Clone()
		partpart.FormFactor='Custom'
		partpart.Anchored=true
		
		partpart.Size=Vector3.new(2*radius*math.sin(math.pi/sides),height,width)
		partpart.CFrame=pos*
		CFrame.Angles(0,(i+.5)*2*math.pi/sides,0)*
		CFrame.new(0,0,radius*math.cos(math.pi/sides)-width/2)
			
		partpart.Parent=group
	end
	return group,part
	
end;
GetOrdinal=function(num)--1st, 2nd, 3rd, �WAT DA HAEK!
	
	local endings={'st','nd','rd','th'}
	local ord=num
	
	if string.sub(tostring(num),-1)+0<5 and string.sub(tostring(num),-1)+0>0 and
		(num>20 or num<10) and num==math.floor(num) then
		ord=ord..endings[string.sub(tostring(num),-1)+0]
	else
		ord=ord..'th'
	end
	return ord
	
end;
GetLetterGroupsBetweenMarks=function(s,begmark,endmark,Print)--Does letter classes and such
	
	local location={1,1}
	local chars={}
	local begmark=begmark or '{'
	local endmark=endmark or '}'
	local s=string.gsub(s,begmark,'~'..begmark)
	if Print then
		print(s)
	end
	
	repeat
		
		repeat
			if string.sub(s,location[1],location[2])~='~' then
				table.insert(chars,string.sub(s,location[1],location[2]))
				if Print then
					print(table.concat(chars,','))
				end
			end
			location[1]=location[1]+1
			location[2]=location[2]+1
		until string.sub(s,location[1],location[2]-1+#begmark)==begmark or location[2]-1>=#s
		
		local neststring=''
		location[1]=location[1]-1+#begmark
		location[2]=location[2]-1+#begmark
		
		repeat
			location[1]=location[1]+1
			location[2]=location[2]+1
			neststring=neststring..string.sub(s,location[1],location[2])
		until string.sub(s,location[1]+1,location[2]+#endmark)==endmark or location[2]-1>=#s
		
		if string.sub(s,location[1],location[2])~='~' then
			table.insert(chars,neststring)
			if Print then
				print(table.concat(chars,','))
			end
		end
		location[1]=location[1]+1+#endmark
		location[2]=location[2]+1+#endmark
		
	until location[2]-1>=#s
	return chars
	
end;
CreateLetters=function(s,font,start,arg)
	
--[[Helps with typing stuff,usage: put arguments as this:
	string,pos,{letterspace=3,wordspace=7,rotate=CFrame.Angles(0,0,0),func=nil},
	all values are set at their default, so they can be changed or removed.
	
���HOWEVER, SET A SPECIFIC INSTANCE AND THEN A CFRAME FOR FIRST 2 ARGUMENTS B4 THE TABLE!!!]]

	local letterspace=arg.letterspace or 3--Spacing between letters
	local wordspace=arg.wordspace or 13--Length of a space
	local diacriticheight=arg.diacriticheight or
	font:FindFirstChild('l').Part.Size.X/2--Height of diacritic for each letter
	local rotation=arg.rotation or CFrame.Angles(0,0,0)--Rotation of each peice of the 'letter trail'
	local Function=arg.func or function() return end
	--A function for each letter for it to do, or nothing will happen to it
	
	local chars=_G:GetLetterGroupsBetweenMarks(s,'{','}',arg.print or false)
	local current=start
	local model=Instance.new('Model')
	local currentchar=nil
	local currentmode=''
	local currentthing=nil
	local diacriticD={}
	local diacriticU={}
	
	for i,g in pairs(chars) do
		
		local char=font:FindFirstChild(g) or font:FindFirstChild(string.sub(g,1,-2))
		if char then
			if char:FindFirstChild('Diacritic') then
				local diacritic=char:Clone()
				
				currentthing=currentmode=='diacritic' and
					((string.sub(g,-1)=='D' and diacriticD[#diacriticD]) or
						diacriticU[#diacriticU]) or currentchar
				diacritic.Parent=model
				diacritic.PrimaryPart=diacritic.Part
				
				diacritic:SetPrimaryPartCFrame(currentthing.Part.CFrame*CFrame.new(0,
					string.sub(g,-1)=='D' and
					-currentthing.Part.Size.Y/2-diacritic.Part.Size.Y/2-diacriticheight
					or currentthing.Part.Size.Y/2+diacritic.Part.Size.Y/2+diacriticheight,0))
				
				currentmode='diacritic'
				currentthing=diacritic
				table.insert(string.sub(g,-1)=='D' and diacriticD or diacriticU,diacritic)
			else
				
				currentchar=char:Clone()
				currentmode='char'
				currentthing=currentchar
				
				currentchar.Parent=model
				currentchar.PrimaryPart=currentchar.Marker
				current=current*CFrame.new(-currentchar.Part.Size.X/2,0,0)
				if i>1 then
					current=current*CFrame.new(-letterspace/2,0,0)
				end
				diacriticD={}
				diacriticU={}
				
				currentchar:SetPrimaryPartCFrame(current)
				current=current*CFrame.new(-currentchar.Part.Size.X/2,0,0)
				if i<#chars then
					current=current*CFrame.new(-letterspace/2,0,0)*rotation
				end
			end
			print(currentthing)
			Function(currentthing,i)
			
		elseif g==' ' then
			if arg.print then
				print('SPACE')
			end
			current=current*CFrame.new(-wordspace,0,0)
		end
		
	end
	return model,current
	
end;
CreatePartInBetween=function(from,to,size)--For making pathways and stuffs
	
	local size=size or .2
	local part=_G:CreatePart()
	part.Size=Vector3.new(size,(from-to).Magnitude,size)
	part.CFrame=CFrame.new(from,to)*CFrame.Angles(-math.rad(90),0,0)
	*CFrame.new(0,(from-to).Magnitude/2,0)
	return part
	
end;
GenerateBolt=function(from,to,size,thickness,amount)--�BOOM!
	
	local thickness=thickness or 1
	local size=size or .2
	local length=(from-to).Magnitude
	local amount=amount or math.ceil((from-to).Magnitude/thickness/2+.5)
	local group=Instance.new('Model')
	local start=CFrame.new(from,to)
	local eend=nil
	
	for i=1,amount-1 do
		eend=CFrame.new(from,to)*CFrame.Angles(math.rad(-90),0,0)*CFrame.new(
			2*thickness*(math.random()-.5),length*i/amount,2*thickness*(math.random()-.5))
		local peice=_G.CreatePartInBetween(nil,start.p,eend.p,size)
		peice.Parent=group
		start=eend
	end
	
	local peice=_G.MakePartInBetween(nil,start.p,to,size)
	peice.Parent=group
	return group
	
end;
FindFromParents=function(obj,p,name)
	local o=obj
	local n=0
	while not o:findFirstChild(name) do
		n=n+1
		o=o.Parent
		if o==game then
			break
		end
	end
	return o:findFirstChild(name),n
end;
GetNearestParent=function(obj,n,prop)--I got the idea from Quenty. Cares 'bout ClassName.
	
	prop=prop or 'Name'
	local I=obj
	local i=0
	repeat
		i=i+1
		I=I.Parent
		if not I then
			return nil
		end
	until prop=='ClassName' and I:IsA(n) or I[prop]==n
	return I,i
	
end;
GetInCaps=function(t,min)--Makes you work like Crazyman32's and Simbuilder's user-name consultant
	
	local s=''
	local words=0
	local min=min or 3
	
	for word in string.gmatch(t,'%S+') do
		words=words+1
		if words>1 then
			s=s..' '
		end
		local i=0
		for g in string.gmatch(word,'.') do
			i=i+1
			if i==1 or #word<=min then
				s=s..string.upper(g)
			else
				s=s..string.lower(g)
			end
		end
	end
	return s
	
end;
GetAbbreviation=function(t)--This gives your string some abbreviation to go by
	
	local s=''
	local i=0
	for g in string.gmatch(t,'.') do
		i=i+1
		if i==1 then
			s=s..string.upper(g)..'.'
		elseif g==' ' then
			i=0
		end
	end
	return s
	
end;
GetInRandomCaps=function(t)--developer drama
	
	local s=''
	for g in string.gmatch(t,'.') do
		if math.random(2)==1 then
			s=s..string.upper(g)
		else
			s=s..string.lower(g)
		end
	end
	return s
end;
Add=function(a,b)--�9+10=21 CONFIRMED!
	
	if math.min(a,b)==9 and math.max(a,b)==10 then
		return 21
	else
		return a+b
	end
	
end;
GetCharacter=function(P)--This investigates who your person iz.
	
	local G=nil
	if type(P)=='string' then
		if game.Players:FindFirstChild(P) then
			return game.Players:FindFirstChild(P).Character
		else
			return nil
		end
	elseif type(P)=='number' then
		for i,g in pairs(game.Players:GetChildren()) do
			if g.userId==P then
				G=g.Caracter
				break
			end
		end
		return G
	end
	
end;
DoFunctionOnPlayers=function(f,n)
	
	coroutine.resume(coroutine.create(function()
		if type(f)=='function' then
			if n==true or n==nil then
				game.Players.PlayerAdded:connect(f)
			end
			for i,g in pairs(game.Players:GetChildren()) do
				f(g)
			end
		end
	end))
	
end;
DoFunctionOnCharacters=function(f,n,app)
	
	coroutine.resume(coroutine.create(function()
		if type(f)=='function' then
			if n==true or n==nil then
				game.Players.PlayerAdded:connect(function(p)
					p[app and 'CharacterAppearanceLoaded' or 'CharacterAdded']:connect(function(char)
						f(char,p)
					end)
				end)
			end
			for i,g in pairs(game.Players:GetChildren()) do
				while not g.Character do
					wait()
				end
				f(g.Character,g)
				g[app and 'CharacterAppearanceLoaded' or 'CharacterAdded']:connect(function(char)
					f(char,g)
				end)
			end
		end
	end))
	
end;
GetAllDescendants=function(p,func,array,parents)--This gits teh childrenz of da argument rekt
	
	local p=p or game.Workspace
	local array=array~=nil and array or true
	local t={}
	f=function(G,...)
		local pairz=nil
		if type(G)=='table' then
			pairz=G
		elseif type(G)=='userdata' then
			pairz=G:GetChildren()
		end
		if pairz then
			for i,g in pairs(pairz) do
				local thing=g
				if parents then
					thing={g,...,p}
				end				
				
				if not array then					
					t[g.Name]=thing
				else
					table.insert(t,thing)
				end
				
				if func then
					func(g,...,p)
				end
				f(g,g,...)
			end
		else
			local thing=G
			if parents then
				thing={G,...,p}
			end				
			
			if not array then
				t[G.Name]=thing
			else
				table.insert(t,thing)
			end
			
		end
	end
	f(p)
	return t
	
end;
PlaceLeadingZeroes=function(n,a)--�This returns a string with leading freakin... ZEROES!
	return _G:PadLeft(tonumber(n) or n,a or 2,'0')
end;
ForceDecimalPlaces=function(num,places,symbol)
	
	--[[
	Uses:
		1. Forcing the zeros to stay on amounts like 97.00 (would've turned into 97 as a number)
		2. Formatting milliseconds for a race, like 10.510 (would've turned into 10.51 as a number)
	
	Made by Maelstronomer, free to use and whatever because it's simple and probably not efficient.
	]]
	
	local places=places or 2
	if type(num)~='number' or type(places)~='number' then
		return nil--not a number
	end
	local mult=10^(places or 0)--set up rounding places
	num=tostring(math.floor(num*mult+0.5)/mult)--round
	local dot=string.find(num,'%.')
	if not dot then--easily add zeros to an integer
		num=num..'.'..string.rep('0',places)
	else--some after decimal?
		local after=string.sub(num,dot+1)
		if after~=places then --if it doesn't already round to exact places
			num=num..string.rep('0',places-#after)
		end
	end
	return ({num:gsub('%.',symbol or '%.')})[1]--returns a string (otherwise the zeros would get truncated)
end;
GetDateString=function(str,arg)
	local date=(type(arg)=='table' and arg.month) and arg or _G:Date(arg)
	return ({str:gsub('%$([%w_]+)',function(letter)
		local shortcuts={
			H={date.hour_24};
			h={date.hour_12};
			m={date.minute};
			s={date.second};
			d={date.day,[3]=date.dayofyear,[4]=date.weekdayword};
			M={date.month,[3]=date.monthword};
			y={date.year_2_digit,[3]=date.year_3_digit,[4]=date.year,[5]=_G:Commas(date.year)--[[Done on purpose!]]};
			t={date.am_pm};
			D={date.decade};
			C={date.century};
		}
		
		for i,g in pairs(shortcuts) do
			setmetatable(g,{
				__index=function(g,index)
					return _G:LeadingZeroes(g[1],index) or g[1]
				end
			})
		end
		
		local allSame=letter:gsub('[^'..(letter:sub(1,1))..']+$','')
		return shortcuts[letter:sub(1,1)][#allSame]
	end):gsub('%$([%w_]+)',function(val)
		return date[val]
	end)})[1]
end;
GetCalendarInformation=function(...)
	local args=_G:Arguments({...},{{'language',{'lower2'}},{'locale',{'upper2'}}})
	local text=game.HttpService:GetAsync('https://raw.githubusercontent.com/datejs/Datejs/master/build/date-'..args.language..'-'..args.locale..'.js')
	local str=text:gsub(',firstDayOfWeek:.+','}'):gsub('^[^D]+Date.CultureInfo=',''):gsub('([,{])(%w+)([:}])','%1"%2"%3')
	local stuff=game.HttpService:JSONDecode(str)
	return {weekdays=stuff.dayTables,months=stuff.monthNames,am={stuff.amDesignator,stuff.pmDesignator}}
end;
--[[
	Mr Windows Snapcashman32ism
	(Crazyman32 (13 April 2008), modified by Snapcash (30 November 2008))
	����WHY AM I OBSESSED WITH JOIN DATES!!?? Tell me why in order to get R$1337
	Craze'd on 16 October 2014
	Snapcash'd on 20 December 2014
	Re-Snapcash'd on 20 January 2015
	Usage: game.Workspace[_G].GetDate(
		{
		time=tick();
		start=1970;
		print=false;
		am={'AM','PM'};
		months={
			'January';
			'February';
			'March';
			'April';
			'May';
			'June';
			'July';
			'August';
			'September';
			'October';
			'November';
			'December';
		}}
	All those table values are set at their default, each can be removed or changed.
--]]
GetDate=function(...)
	local arg=({...})[1]
	
	if type(arg)=='number' then
		arg={time=arg}
	elseif type(arg)~='table' then
		arg={}
	end
	
	for i,g in pairs({...}) do
		if type(g)=='string' and g:find('^%a%a.*%a%a$') then
			local calArgs={select(3,arg:find('^(%a%a).*(%a%a)$'))}
			_G:Combine(arg,_G:CalendarInfo(calArgs))
		end
	end
	
	local months={
		{arg.months==nil and 'January' or arg.months[1],31};
		{arg.months==nil and 'February' or arg.months[2],28};
		{arg.months==nil and 'March' or arg.months[3],31};
		{arg.months==nil and 'April' or arg.months[4],30};
		{arg.months==nil and 'May' or arg.months[5],31};
		{arg.months==nil and 'June' or arg.months[6],30};
		{arg.months==nil and 'July' or arg.months[7],31};
		{arg.months==nil and 'August' or arg.months[8],31};
		{arg.months==nil and 'September' or arg.months[9],30};
		{arg.months==nil and 'October' or arg.months[10],31};
		{arg.months==nil and 'November' or arg.months[11],30};
		{arg.months==nil and 'December' or arg.months[12],31};
	}
	local weekdays={
		arg.weekdays==nil and 'Sunday' or arg.weekdays[1];
		arg.weekdays==nil and 'Monday' or arg.weekdays[2];
		arg.weekdays==nil and 'Tuesday' or arg.weekdays[3];
		arg.weekdays==nil and 'Wednesday' or arg.weekdays[4];
		arg.weekdays==nil and 'Thursday' or arg.weekdays[5];
		arg.weekdays==nil and 'Friday' or arg.weekdays[6];
		arg.weekdays==nil and 'Saturday' or arg.weekdays[7];
	}
	local t=arg.time or tick()
	arg.am=arg.am or arg.am_pm
	local total=t
	local roundedseconds,milliseconds=math.modf(t%60)
	local seconds=math.floor(t%60)
	local minutes=math.floor((t/60)%60)
	local hours=math.floor((t/60/60)%24)
	local weekday=(math.floor(t/60^2/24)+4)%7+1
	local weekdayWord=weekdays[weekday]
	local year=((arg.start==nil and 1970 or arg.start)+math.floor(t/60/60/24/365.25))
	local decade=tostring(year):sub(1,-2)+1
	local century=tostring(year):sub(1,-3)+1
	local isLeapYear=((year%4)==0) and ((year%100)~=0 or (year%400)~=0)
	local isAm=(hours<12)
	local hoursPm=(isAm and hours or (hours==12 and 12 or (hours-12)))
	local dayOfYear=0
	local month=1
	local monthWord=''
	local day=1
	if (hoursPm==0) then
		hoursPm=12
	end
	if (isLeapYear) then
		months[2][2]=29
	end
	do
		dayOfYear=_G:Round(math.floor(t/60/60/24)%365.25)
		local dayCount=0
		for i,Month in pairs(months) do
			dayCount=(dayCount+Month[2])
			if (dayCount>dayOfYear) then
				monthWord=Month[1]
				month=i
				day=(dayOfYear-(dayCount-Month[2])+1)
				break
			end
		end
	end
	local date={
		total=total;
		millisecond=milliseconds;
		rounded_second=roundedseconds;
		second=seconds;
		minute=minutes;
		hour_24=hours;
		hour_12=hoursPm;
		am_pm=isAm and (arg.am==nil and 'AM' or arg.am[1]) or (arg.am==nil and 'PM' or arg.am[2]);
		day=day;
		dayofyear=dayOfYear;
		weekday=weekday;
		weekdayword=weekdayWord;
		month=month;
		monthword=monthWord;
		year=year;
		year_2_digit=tostring(year):sub(-2);
		year_3_digit=tostring(year):sub(-3);
		decade=decade;
		century=century;
	}
	if arg.print==true then
		for i,v in pairs(date) do
			print('We are in '..i..' '..v)
		end
	end
	return date
end;
WeldParts=function(JessicaT,relative,parent,unanchor)
	
--[[Reference from 'This is How We Do' by Katy Perry, when she uses Skype,
	oh,and �it welds Katy Perries into your table of partz!]]
	local bIaugfh={}
	local ZacharyStratton={}
	for i,g in pairs(JessicaT) do
		if g:IsA('BasePart') and not g:IsA('Terrain') then
			table.insert(bIaugfh,g)
		end
	end
	--print(#bIaugfh..' of us went to http://bit.ly/1njms5U')
	--PLZ DON'T GO THERE, �SOME SKYPE BOT SENT IT TO ME!
	for i,g in pairs(bIaugfh) do
		coroutine.resume(coroutine.create(function()
			if i>1 then
				local gAnch={g.Anchored,bIaugfh[1].Anchored}
				local Zachary=Instance.new('Weld',parent or game.JointsService)
				table.insert(ZacharyStratton,Zachary)
				g.Anchored=true
				bIaugfh[1].Anchored=true
				Zachary.Part0=g
				Zachary.Part1=bIaugfh[1]
				if relative==nil or relative==true then
					Zachary.C0=g.CFrame:inverse()
					Zachary.C1=bIaugfh[1].CFrame:inverse()
				end
				g.Anchored=gAnch[1]
				bIaugfh[1].Anchored=gAnch[2]
			end
		end))
	end
	
	if unanchor then
		for i,g in pairs(bIaugfh) do
			g.Anchored=false
		end
	end
	return ZacharyStratton
	
end;
MotorParts=function(base,part,CFrame,parent,type)--It twists, IDK how to make it freely rotate
	
	local motor=Instance.new(type or 'Motor',parent or game.JointsService)
	motor.C0=base.CFrame:inverse()*CFrame
	motor.C1=part.CFrame:inverse()*CFrame
	motor.Part0=base
	motor.Part1=part
	motor.Parent=parent or game.JointsService
	return motor
	
end;
ToColor3Block=function(part,colour)--Returns: da colour changer, ���and da mesh itself, m8!!!
	
	if part:IsA('Part') then
		for i,g in pairs(part:GetChildren()) do
			if g:IsA('DataModelMesh') then
				g:Destroy()
				warn('����Already a mesh????')
			end
		end
		local colour=colour or part.BrickColor.Color
		local mesh=Instance.new('FileMesh',part)
		mesh.MeshId='http://www.roblox.com/Asset/?id=9856898'
		mesh.TextureId='http://www.roblox.com/asset/?ID=1361097'
		
		local change=function(colour)
			mesh.VertexColor=_G:Color3toVector3(colour)
		end
		change(colour)
		
		game["Run Service"].RenderStepped:connect(function()
			mesh.Scale=part.Size*2
		end)
		
		return change,mesh
	else
		error('\nHOW DARE U CAST ON NOT BLOCK\nUR GROUNDED 4 '..
			math.random(10,10^10)..' YEARS GO TO BED\n')
	end
	
end;
ConvertClasses=function()
	return require(Gobj.ConvertClasses)
end;
GetMethodDocumentation=function(name)
	local obj=_G[name]
	local same=0
	local others={}
	local original
	local doc
	
	for i,g in pairs(_G) do
		if g==obj then
			
			if t0[i] then
				original=i
			else
				others[#others+1]=i
			end
			
			if _G.LibraryDocumentationList[i] then
				doc=_G.LibraryDocumentationList[i]
				local mt={
					__index=function(t,index)
						return _G:Single(t,function(obj)
							return obj[1]==index
						end)
					end
				}
				
				for indI,ind in pairs({'args','ret'}) do
					if type(doc[ind])=='table' then
						
						setmetatable(doc[ind],mt)
						if indI==1 then
							_G:Cast(doc[ind],function(g)
								return g[2]
							end)
						end
						
					end
				end
			end
			same=same+1
			
		end
	end
	return _G:Combine(doc or {'unavailable you idiot!'},{count=same,original=original,others=others})
end;
LibraryDocumentationList={--No full stops, sentence case.
	GetDocumentation={
		desc='Responsible for bringing up a guide on documented methods.';
		args={{'name','The method you want to call.'};};
		ret='Returns a table of documentation concerning the method.';
	};
	CastTable={
		desc='Edits a table based on a function being called on each element.';
		args={{'t','The table to be called.'};};
		ret='Returns an edited version of the initial table.';
	};
	GetDate={
		desc='Responsible for bringing up a guide on documented methods';
		args={{'arg','A table of arguments (n arguments are in table)'};
			{'time','The UNIX time to get the date/time from.'};
			{'start','The year to start the UNIX from (1,970).'};
			{'am','The strings for AM and PM to be displayed.'};
			{'months','The strings for which the months are displayed.'};
			{'print','Whether to print out within the code.'};
		};
		ret='A table with the date and time.';
	};
};
LibraryChangesList={--The bracket is eating me, but it has something more useful...
	SplitString={'DelimitString'};
	ConvertToWritable={'DecodeTable','Decode'};
	CopyTable={'CloneTable','Clone'};
	GetMethodDocumentation={'GetDocumentation'};
	StandardDeviation={'PopulationDeviation'};
	GetChatColourFromName={'GetChatColour'};
	GetChatColour={'GetPlayerChatColour','GetPlayerColour'};
	LerpObjects={'Lerp'};
	SwapTableIndicies={'SwapTable'};
	StringToEnum={'ToEnum','GetEnumFromString'};
	CastArguments={'Arguments'};
	AccentControlCharacterTable={'AccentCharacterTable'};
	NotNil={'NotNilOrTrue','TrueIfNil','NotFalse'};
	CreateFramesForGUILetters={'GUIFrames','GUILetters','HighlightGUILetters','BorderGUILetters'};
	AlignGUI={'Align'};
	GetCharacterFromPlayer={'GetCharacter','WaitForCharacter'};
	PositionGUI={'SetGUIPosition'};
	ChangeObjectProperties={'EditObject'};
	CreateGUIBetweenVector3s={'CreateGUIBetweenWorldPoints'};
	CreateGUIBetweenVector2s={'CreateGUIBetweenAbsolutePoints','CreateGUIBetweenPoints'};
	SetEventCycle={'SetFunctionCycle','SetCycle'};
	GetInBase={'ConvertBase'};
	CloneCharacter={'CharacterClone'};
	CharacterAppearance={'Appearance'};
	GetValidSpawnLs={'GetSpawnLsForPlayer','GetPlayerSpawnLs','GetSpawnLs'};
	FilterByFunction={'FunctionFilter','FunctionalFilter'};
	PlaceCommas={'PlaceThousandsSeparators'};
	GetGreyscaleColour={'GetGreyscale'};
	GetPartsOfObject={'GetObjectParts'};
	IDTemplate={'ID','IDPrefix'};
	GetIndexOfValueInTable={'GetIndexOfValue'};
	FadeSound={'Fade','SoundFade'};
	Asyncronise={'GetAsyncronised','AsyncroniseFunction'};
	FunctionsToCoroutines={'FunctionTableToCoroutineTable'};
	ConnectEvents={'ConnectMultipleEvents','SetEvents'};
	GetEventValid={'ValidEvents'};
	ToEquilateralTriangle={'GetEquilateralTriangle'};
	DoConvert={'ConvertObject','GetConvertedObject','ConvertObject','DoConversionOnObject'};
	LerpColour={'LerpColor3','Color3Lerp','ColourLerp'};
	FindObjectFromFullName={'FindObjectFromSring','FindObjectFromName'};
	FindFirstProperty={'HasProperty','GetProperty'};
	FixRotation={'FixEulerAnglesXYZ','FixAngles'};
	Focus={'FocusCamera'};
	RemoveDuplicates={'Duplicates'};
	RoundToNearestColour={'NearestColour'};
	GetSkyHue={'Sky'};
	InvertColour={'NegateColour','Invert','Inverse'};
	DoTableConnections={'Connections'};
	FilterByProperty={'Filter'};
	CombineTables={'Combine'};
	GetGUICollisionState={'GUICollide','GUICollides','GUICollision'};
	GetCollisionState={'Collide','Collides','Collision',};
	GetEntriesInTable={'TableEntries','EntriesTable','Entries'};
	TweenCFrame={'Move'};
	CreateCircleAroundPart={'Circle'};
	GetAbbreviation={'GetAbbv'};
	GetLetterGroupsBetweenMarks={'SeparateLetters'};
	GetAllDescendants={'GetDescendants','GetAllChildren','Descendants'};
	ForceDecimalPlaces={'Decimal','ForceDecimal'};
	GetInAlphabeticalOrder={'Alphabetise'};
	GetDateString={'GetFormatedDate','GetDateFormat'};
	WeldParts={'Weld'};
	ToColor3Block={'ToColor3MeshBlock','ToMeshBlock','ToColor3Brick'};
	GreatestCommonDivisor={'GCD'};
	LeastCommonMultiple={'LCM'};
	Original={'Originals','OriginalFunctions','_G'};
	['Function(%w*)ToCoroutine(%w*)']={'Coroutine%2FromFunction%1','FromFunction%1ToCoroutine%2'};
	NonLeet={'NonLeetFunctions'};
	LeadingZeroes={'Zeroes'};
	ArithmeticAverage={'Average'};
	
	Average={'Avg','Mu','Mean'};
	Information={'Info'};
	Hypotenuse={'Hypot'};
	['String$']={''};
	['Table$']={''};
	Integer={'Int','Int32'};
	Number={'Num','Integer'};
	GUILetters={'GUIText'};
	Object={'Obj'};
	Character={'Char','Ch'};
	SpawnL={'SpawnLocation','Spawn'};
	Date={'Time'};
	Descendant={'Child'};
	Descendants={'Children','AllChildren'};
	Boolean={'Bool'};
	Valid={'Timer'};
	['Tween(.+)']={'%1Tween'};
	['Tween(%u)']={'%1','%1Gradiant'};
	Convert={'','Change'};
	Change={''};
	FullName={'Name'};
	FindObject={'Find','Get',''};
	Find={'','Get'};
	Library={'Lib'};
	Duplicate={'Dupl'};
	Connection={'Connexion'};
	Colour={'Color'};--U.S. of North A.
	DoConnections={'Connect'};
	DoConnexions={'Connect'};
	HSB={'Hsb'};
	RGB={'Rgb'};
	HUE={'Hue'};
	GUI={'Gui'};
	Create={'Make','','Set','New'};
	Do={''};
	From={'AwayFrom'};
	Place={''};
	Parts={''};
	Generate={''};
	To={'to','','ConvertTo','into','Into'};
	Get={'Find',''};
	['Get(.+)ed']={'%1'};
	GetIn={''};
	Set={'Make','','Create'};
	Is={''};
	DoFunctionOn={''};
	ise={'ize'};--U.S. of North A.
	_f={'','Functions'};
	Curse={'Swear'};
	math={'maths'};
	Non={'Non-'};
	And={'&','&&'};
	Or={'|','||'};
	ing={'in','in\'','ed',''};
	Property={'Prop','Pr'};
	['Property$']={''};
	ID={'Id'};
	Vector={'V','Vec'};
	UDim={'Udim','uDm','U'};
	Color3={'C3','Col3'};
	Region3={'Reg3','R3'};
	Logarithm={'Log'};
	Dont={'Don\'t'};
	['Centre[^d]']={'Center','Middle'};
	Centred={'Centered'};
	Zero={'0'};
	On={''};
	TimeZone={'Timezone','Time-zone','Time-Zone'};
	['-']={'_'};
	['_']={'-'};
	Nil={'Null'};
	['(M%l+)Value']={'%1Integer','%1Number'};
	['List$']={'','Enum','Table'};
	['Numerals$']={'','Digits'};
	Positive={'Pos','+'};
	Negative={'Neg','-'};
	['Entry$']={''};
	['Entries$']={''};
	
	o='0';
	i='1';
	e='3';
	t='7';
	g='6';
	s='5';
	l='1';
	z='2';
	x='4';
	q='9';
};
ExpandLibrary=function(t00,convert2method,leet,spacing,...)--�Why is this even a thing? 'Ekenames for functions!
	local changes=t0.LibraryChangesList
	local t1={}--convert to methods
	local index=0
	for i,gg in pairs(t00) do
		local g=t0.tableLib_f.ToTable(gg)
		index=index+1
		
		if type(g[#g])=='function' and convert2method then
			t1[i]=function(t,...)
				if type(t)=='table' and t.is_G then--Checks is t is _G!
					return t00[i](...)
				else
					return t00[i](t,...)
				end
			end
			
			if type(g[1])=='string' and g[1]:lower()=='deprecated' then
				local oldCall=t1[i]
				t1[i]=function(t,...)
					print(...)
					local override=({...})[1]
					if override=='!override' then
						return t00[i](select(2,...))
					else
						warn('This method is STEENKIN depricated. To use it, put \'!override\' before all the other arguments!')
					end
				end
			end
			
		elseif type(gg)=='table' and i:find('_f$') and Gobj.Extra then
			local lib=t0.ExpandLibrary(gg,convert2method,leet,spacing,...)
			t1[i]=lib
			for i2,g2 in pairs(lib) do
				t1[i2]=g2
			end
		elseif not i:find('List$') then
			t1[i]=g[#g]
		else
			t1[i]=gg
		end
	end
	
	local t2=t1--substitutions
	for i=1,math.max(Gobj.Substitutions,1) do
		local count=0
		for i2,g2 in pairs(changes) do
			count=count+1
			if count%13==7 then
				wait()
			end
			if i~=i2 and type(g2)=='table' then
				for i3,g3 in pairs(g2) do
					for i4,g4 in pairs(t2) do
						local name=string.gsub(i4,i2,g3)
						t2[name]=g4
					end
				end
			end
		end
	end
	
	local t3={}--capitalisation
	for i,g in pairs(t2) do
		t3[i]=g
		
		t3[string.lower(i)]=g
		t3[string.upper(i)]=g
		
		t3[string.lower(string.sub(i,1,1))..string.sub(i,2)]=g
		t3[string.upper(string.sub(i,1,1))..string.sub(i,2)]=g
	end
	
	local _G=t3--Leetisation
	if leet then
		local t4={}
		for i,g in pairs(t3) do
			local leet=i
			for i2,g2 in pairs(changes) do
				if #i2==1 then
					leet=string.gsub(leet,string.lower(i2),g2)
					leet=string.gsub(leet,string.upper(i2),g2)
				end
			end
			t4[leet]=g
			t4[i]=g
		end
		_G=t4
	end
	
	if spacing then
		for i,g in pairs(_G) do
			_G[string.gsub(i,'(%l)(%u)','%1 %2')]=g
		end
	end
	
	return _G
end;
is_G=os.time()}

if Gobj.OtherLibraries then
	t0.Original=Gobj.Extra and t0 or nil
	t0.NonLeet=Gobj.Leet and
		t0.ExpandLibrary(t0,true,false,Gobj.Spaces) or nil
	t0.NonSpacing=Gobj.Spaces and
		t0.ExpandLibrary(t0,true,Gobj.Leet) or nil
	t0.NonSpacingAndLeet=Gobj.Leet and Gobj.Spaces and
		t0.ExpandLibrary(t0,true) or nil
end

--game.ReplicatedStorage:WaitForChild('_G')
_G=Gobj.Extra and
	t0.ExpandLibrary(t0,true,Gobj.Leet,Gobj.Spaces) or t0

setmetatable(_G,{
	__tostring=function()
		return string.format('Congrats, you printed me out.\n I have got %d methods on me!\n I have got %d method sources.',#_G:Array(_G),#_G:Array(t0))
	end
})

return _G