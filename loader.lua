print("executed")

if not (hookmetamethod or makefolder) then 
    warn("NEBULA.TECH ISNT SUPPORTED ON YOUR EXECUTOR")
end 

-- variables
    local uis = game:GetService("UserInputService") 
    local players = game:GetService("Players") 
    local ws = game:GetService("Workspace")
    local rs = game:GetService("ReplicatedStorage")
    local http_service = game:GetService("HttpService")
    local gui_service = game:GetService("GuiService")
    local lighting = game:GetService("Lighting")
    local run = game:GetService("RunService")
    local stats = game:GetService("Stats")
    local coregui = game:GetService("CoreGui")
    local debris = game:GetService("Debris")
    local tween_service = game:GetService("TweenService")
    local sound_service = game:GetService("SoundService")

    local vec2 = Vector2.new
    local vec3 = Vector3.new
    local dim2 = UDim2.new
    local dim = UDim.new 
    local rect = Rect.new
    local cfr = CFrame.new
    local angle = CFrame.Angles

    local color = Color3.new
    local rgb = Color3.fromRGB
    local hex = Color3.fromHex
    local rgbseq = ColorSequence.new
    local rgbkey = ColorSequenceKeypoint.new
    local numseq = NumberSequence.new
    local numkey = NumberSequenceKeypoint.new

    local camera = ws.CurrentCamera
    local lp = players.LocalPlayer 
    local mouse = lp:GetMouse() 
    local gui_offset = gui_service:GetGuiInset().Y

    local max = math.max 
    local floor = math.floor 
    local min = math.min 
    local abs = math.abs 
    local noise = math.noise
    local rad = math.rad 
    local random = math.random 
    local pow = math.pow 

    local main_event = rs:FindFirstChild("MainEvent")
-- 

local nebula = {
    target_selection = {
        player = nil, 
        time = os.clock(),
        pass = true, 
    },
    legit = {
        aim_assist = {
            toggled = false, 

            cframe = nil, 
            screenpoint_position = nil, 
            on_screen = nil,

            velocity = 123,

            hitpart = "HumanoidRootPart", 
            airpart = "RightFoot", 
            prediction = 0.1413, 
            checks = true, 
            destination = nil, 
            previous_position = nil, 
        },
        silent_aim = {
            toggled = false, 

            cframe = nil, 
            screenpoint_position = nil, 
            on_screen = nil,

            velocity = 123,

            hitpart = "HumanoidRootPart", 
            airpart = "RightFoot", 
            prediction = 0.1413, 
            checks = true, 
            destination = nil, 
            previous_position = nil, 
        }
    },
    rage = {
        spoofer = {
            spoofing = false, 
            main_enabled = false, 
            current_position = nil, 
            old_position = nil, 
            rotation_methods = nil, 
            position_methods = nil, 
            frame_counter = 0, 
        },
        network = {
            last_slept = os.clock(), 
            sleeping = false, 
        },
    },
    esp = {
        drawings = {}, 
    },
    visuals = {
        local_player = nil, 
        hit_detection = {
            health_factor = nil, 
            current_player = nil, 
            data = {}, 
        },
        lighting_save = {
            ["ColorShift_Bottom"] = lighting.ColorShift_Bottom, 
            ["Ambient"] = lighting.Ambient, 
            ["OutdoorAmbient"] = lighting.OutdoorAmbient, 
            ["ColorShift_Top"] = lighting.ColorShift_Top, 
            ["FogColor"] = lighting.FogColor, 
            ["FogEnd"] = lighting.FogEnd, 
            ["FogStart"] = lighting.FogStart,
            ["ClockTime"] = lighting.ClockTime, 
            ["Brightness"] = lighting.Brightness
        }, 
        trails = {
            attachments = {},
            trail;
        }
    },
    misc = {
        auto_shoot_clock = os.clock(), 
        buying_armor = false 
    }, 
    config = {
        saving = {current = {}}, 
        luas = {}, 
    },

    drawings = {}, 
    instances = {}, 

    connections = {},
    typing_check = false, 

    delta = nil, 
    radians = 0, 

    directory = "nebula_tech",
    path = game:GetObjects("rbxassetid://18603602811")[1], 
}

if not LPH_OBFUSCATED then
    getfenv().LPH_NO_VIRTUALIZE = function(...) return (...) end
end

-- library init
    local library = {
        directory = "nebula.tech",
        folders = {
            "/sounds",
            "/fonts",
            "/configs",
            "/images"
        },
        flags = {},
        config_flags = {},
        guis = {}, 
        connections = {},   

        current_tab, 
        current_element_open, 
        dock_button_holder,  
        font, 
        keybind_list
    }

    local flags = library.flags
    local config_flags = library.config_flags

    local themes = {
        preset = {
            ["outline"] = rgb(32, 32, 38), -- 
            ["inline"] = rgb(60, 55, 75), --
            ["accent"] = hex("#7D98AF"), --
            ["high_contrast"] = rgb(41, 41, 55),
            ["low_contrast"] = rgb(35, 35, 47),
            ["text"] = rgb(180, 180, 180),
            ["text_outline"] = rgb(0, 0, 0),
            ["glow"] = hex("#7D98AF"), 
        }, 	

        utility = {
            ["outline"] = {
                ["BackgroundColor3"] = {}, 	
                ["Color"] = {}, 
            },
            ["inline"] = {
                ["BackgroundColor3"] = {}, 	
            },
            ["accent"] = {
                ["BackgroundColor3"] = {}, 	
                ["TextColor3"] = {}, 
                ["ImageColor3"] = {}, 
                ["ScrollBarImageColor3"] = {} 
            },
            ["contrast"] = {
                ["Color"] = {}, 	
            },
            ["text"] = {
                ["TextColor3"] = {}, 	
            },
            ["text_outline"] = {
                ["Color"] = {}, 	
            },
            ["glow"] = {
                ["ImageColor3"] = {}, 	
            }, 
        }, 

        find = {
            ["Frame"] = "BackgroundColor3", 
            ["TextLabel"] = "TextColor3", 
            ["UIGradient"] = "Color",
            ["UIStroke"] = "Color",
            ["ImageLabel"] = "ImageColor3",
            ["TextButton"] = "BackgroundColor3", 
            ["ScrollingFrame"] = "ScrollBarImageColor3"
        }
    }

    local keys = {
        [Enum.KeyCode.LeftShift] = "LS",
        [Enum.KeyCode.RightShift] = "RS",
        [Enum.KeyCode.LeftControl] = "LC",
        [Enum.KeyCode.RightControl] = "RC",
        [Enum.KeyCode.Insert] = "INS",
        [Enum.KeyCode.Backspace] = "BS",
        [Enum.KeyCode.Return] = "Ent",
        [Enum.KeyCode.LeftAlt] = "LA",
        [Enum.KeyCode.RightAlt] = "RA",
        [Enum.KeyCode.CapsLock] = "CAPS",
        [Enum.KeyCode.One] = "1",
        [Enum.KeyCode.Two] = "2",
        [Enum.KeyCode.Three] = "3",
        [Enum.KeyCode.Four] = "4",
        [Enum.KeyCode.Five] = "5",
        [Enum.KeyCode.Six] = "6",
        [Enum.KeyCode.Seven] = "7",
        [Enum.KeyCode.Eight] = "8",
        [Enum.KeyCode.Nine] = "9",
        [Enum.KeyCode.Zero] = "0",
        [Enum.KeyCode.KeypadOne] = "Num1",
        [Enum.KeyCode.KeypadTwo] = "Num2",
        [Enum.KeyCode.KeypadThree] = "Num3",
        [Enum.KeyCode.KeypadFour] = "Num4",
        [Enum.KeyCode.KeypadFive] = "Num5",
        [Enum.KeyCode.KeypadSix] = "Num6",
        [Enum.KeyCode.KeypadSeven] = "Num7",
        [Enum.KeyCode.KeypadEight] = "Num8",
        [Enum.KeyCode.KeypadNine] = "Num9",
        [Enum.KeyCode.KeypadZero] = "Num0",
        [Enum.KeyCode.Minus] = "-",
        [Enum.KeyCode.Equals] = "=",
        [Enum.KeyCode.Tilde] = "~",
        [Enum.KeyCode.LeftBracket] = "[",
        [Enum.KeyCode.RightBracket] = "]",
        [Enum.KeyCode.RightParenthesis] = ")",
        [Enum.KeyCode.LeftParenthesis] = "(",
        [Enum.KeyCode.Semicolon] = ",",
        [Enum.KeyCode.Quote] = "'",
        [Enum.KeyCode.BackSlash] = "\\",
        [Enum.KeyCode.Comma] = ",",
        [Enum.KeyCode.Period] = ".",
        [Enum.KeyCode.Slash] = "/",
        [Enum.KeyCode.Asterisk] = "*",
        [Enum.KeyCode.Plus] = "+",
        [Enum.KeyCode.Period] = ".",
        [Enum.KeyCode.Backquote] = "`",
        [Enum.UserInputType.MouseButton1] = "MB1",
        [Enum.UserInputType.MouseButton2] = "MB2",
        [Enum.UserInputType.MouseButton3] = "MB3",
        [Enum.KeyCode.Escape] = "ESC",
        [Enum.KeyCode.Space] = "SPC",
    }
        
    library.__index = library

    for _, path in next, library.folders do 
        makefolder(library.directory .. path)
    end 

    if setreadonly then 
        if not isfile(library.directory .. "/fonts/main.ttf") then 
            writefile(library.directory .. "/fonts/main.ttf", game:HttpGet("https://github.com/f1nobe7650/other/raw/main/uis/font.ttf"))
        end 
        
        local tahoma = {
            name = "SmallestPixel7",
            faces = {
                {
                    name = "Regular",
                    weight = 400,
                    style = "normal",
                    assetId = getcustomasset(library.directory .. "/fonts/main.ttf")
                }
            }
        }
        
        if not isfile(library.directory .. "/fonts/main_encoded.ttf") then 
            writefile(library.directory .. "/fonts/main_encoded.ttf", http_service:JSONEncode(tahoma))
        end 
        
        library.font = Font.new(getcustomasset(library.directory .. "/fonts/main_encoded.ttf"), Enum.FontWeight.Regular)
    else 
        library.font = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    end 

    local config_holder 
-- 

-- library functions 
    -- misc functions
        function library:make_resizable(frame) 
            local Frame = Instance.new("TextButton")
            Frame.Position = dim2(1, -10, 1, -10)
            Frame.BorderColor3 = rgb(0, 0, 0)
            Frame.Size = dim2(0, 10, 0, 10)
            Frame.BorderSizePixel = 0
            Frame.BackgroundColor3 = rgb(255, 255, 255)
            Frame.Parent = frame
            Frame.BackgroundTransparency = 1 
            Frame.Text = ""

            local resizing = false 
            local start_size 
            local start 
            local og_size = frame.Size  

            Frame.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    resizing = true
                    start = input.Position
                    start_size = frame.Size
                end
            end)

            Frame.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    resizing = false
                end
            end)

            library:connection(uis.InputChanged, function(input, game_event) 
                if resizing and input.UserInputType == Enum.UserInputType.MouseMovement then
                    local viewport_x = camera.ViewportSize.X
                    local viewport_y = camera.ViewportSize.Y

                    local current_size = dim2(
                        start_size.X.Scale,
                        math.clamp(
                            start_size.X.Offset + (input.Position.X - start.X),
                            og_size.X.Offset,
                            viewport_x
                        ),
                        start_size.Y.Scale,
                        math.clamp(
                            start_size.Y.Offset + (input.Position.Y - start.Y),
                            og_size.Y.Offset,
                            viewport_y
                        )
                    )
                    frame.Size = current_size
                end
            end)
        end

        function library:new_drawing(class, properties)
            local ins = Drawing.new(class)

            for _, v in next, properties do 
                ins[_] = v
            end 

            table.insert(nebula.drawings, ins)

            return ins 
        end 

        function library:new_item(class, properties) 
            local ins = Instance.new(class)

            for _, v in next, properties do 
                ins[_] = v
            end 

            table.insert(nebula.instances, ins)

            return ins 
        end 

        function library:convert_enum(enum)
            local enum_parts = {}
        
            for part in string.gmatch(enum, "[%w_]+") do
                table.insert(enum_parts, part)
            end
        
            local enum_table = Enum
            for i = 2, #enum_parts do
                local enum_item = enum_table[enum_parts[i]]
        
                enum_table = enum_item
            end
        
            return enum_table
        end

        function library:config_list_update() 
            if not config_holder then return end 
        
            local list = {}
        
            for idx, file in next, listfiles(library.directory .. "/configs") do
                local name = file:gsub(library.directory .. "/configs\\", ""):gsub(".cfg", "")
                list[#list + 1] = name
            end
            
            config_holder.refresh_options(list)
        end 

        function library:get_config()
            local Config = {}
        
            for _, v in flags do
                if type(v) == "table" and v.key then
                    Config[_] = {active = v.active, mode = v.mode, key = tostring(v.key)}
                elseif type(v) == "table" and v["Transparency"] and v["Color"] then
                    Config[_] = {Transparency = v["Transparency"], Color = v["Color"]:ToHex()}
                else
                    Config[_] = v
                end
            end 
            
            return http_service:JSONEncode(Config)
        end

        function library:load_config(config_json) 
            local config = http_service:JSONDecode(config_json)
        
            for _, v in next, config do 
                local function_set = library.config_flags[_]
        
                if function_set then 
                    if type(v) == "table" and v["Transparency"] and v["Color"] then
                        function_set(hex(v["Color"]), v["Transparency"])
                    elseif type(v) == "table" and v["active"] then 
                        function_set(v)
                    else 
                        function_set(v)
                    end
                end 
            end 
        end 
        
        function library:round(number, float) 
            local multiplier = 1 / (float or 1)
            return math.floor(number * multiplier + 0.5) / multiplier
        end 

        function library:apply_theme(instance, theme, property) 
            table.insert(themes.utility[theme][property], instance)
        end

        function library:update_theme(theme, color)
            for _, property in next, themes.utility[theme] do 

                for m, object in next, property do 
                    if object[_] == themes.preset[theme] or object.ClassName == "UIGradient" then 
                        object[_] = color 
                    end 
                end 
            end 

            themes.preset[theme] = color 
        end 

        function library:connection(signal, callback)
            local connection = signal:Connect(callback)
            
            table.insert(library.connections, connection)

            return connection 
        end

        function library:apply_stroke(parent) 
            local stroke = library:create("UIStroke", {
                Parent = parent,
                Color = themes.preset.text_outline, 
                LineJoinMode = Enum.LineJoinMode.Miter
            }) 
            
            library:apply_theme(stroke, "text_outline", "Color")
        end

        function library:create(instance, options)
            local ins = Instance.new(instance) 
            
            for prop, value in next, options do 
                ins[prop] = value
            end
            
            if instance == "TextLabel" or instance == "TextButton" or instance == "TextBox" then 	
                library:apply_theme(ins, "text", "TextColor3")
                library:apply_stroke(ins)
            elseif instance == "ScreenGui" then 
                table.insert(library.guis, ins)
            end 
            
            return ins 
        end
    -- 

    -- elements 
        function library:panel(options) 
            local cfg = {
                name = options.text or options.name or "Window", 
                size = options.size or dim2(0, 530, 0, 590),
                position = options.position or dim2(0, 500, 0, 500),
                anchor_point = options.anchor_point or vec2(0, 0)
            }

            local sgui = library:create("ScreenGui", {
                Enabled = true,
                Parent = coregui,
                Name = "" 
            })

            local main_holder = library:create("Frame", {
                Parent = sgui,
                Name = "",
                AnchorPoint = vec2(cfg.anchor_point.X, cfg.anchor_point.Y),
                Position = cfg.position,
                Active = true, 
                Draggable = true,
                BorderColor3 = rgb(0, 0, 0),
                Size = cfg.size,
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(32, 32, 38)
            })
            
            library:apply_theme(main_holder, "outline", "BackgroundColor3") 
            
            local window_inline = library:create("Frame", {
                Parent = main_holder,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent
            })
            
            library:apply_theme(window_inline, "accent", "BackgroundColor3") 
            
            local window_holder = library:create("Frame", {
                Parent = window_inline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(32, 32, 38),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            library:apply_theme(window_holder, "outline", "BackgroundColor3") 
            
            local UIGradient = library:create("UIGradient", {
                Parent = window_holder,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                rgbkey(0, rgb(41, 41, 55)),
                rgbkey(1, rgb(35, 35, 47))
            }
            })
            
            library:apply_theme(UIGradient, "contrast", "Color") 
            
            local text = library:create("TextLabel", {
                Parent = window_holder,
                Name = "",
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = cfg.name,
                BackgroundTransparency = 1,
                Position = dim2(0, 2, 0, 4),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.XY,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIStroke = library:create("UIStroke", {
                Parent = text,
                Name = "",
                LineJoinMode = Enum.LineJoinMode.Miter
            })
            
            local UIPadding = library:create("UIPadding", {
                Parent = window_holder,
                Name = "",
                PaddingBottom = dim(0, 4),
                PaddingRight = dim(0, 4),
                PaddingLeft = dim(0, 4)
            })
            
            local outline = library:create("Frame", {
                Parent = window_holder,
                Name = "",
                Position = dim2(0, 0, 0, 18),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 1, -18),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(60, 55, 75)
            })
            
            library:apply_theme(outline, "inline", "BackgroundColor3") 
            
            local inline = library:create("Frame", {
                Parent = outline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(32, 32, 38)
            })
            
            library:apply_theme(inline, "outline", "BackgroundColor3") 
            
            local holder = library:create("Frame", {
                Parent = inline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIGradient = library:create("UIGradient", {
                Parent = holder,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                    rgbkey(0, rgb(41, 41, 55)),
                    rgbkey(1, rgb(35, 35, 47))
                }
            })
            
            library:apply_theme(UIGradient, "contrast", "Color") 
            
            local UIPadding = library:create("UIPadding", {
                Parent = holder,
                Name = "",
                PaddingTop = dim(0, 5),
                PaddingBottom = dim(0, 5),
                PaddingRight = dim(0, 5),
                PaddingLeft = dim(0, 5)
            })
            
            local glow = library:create("ImageLabel", {
                Parent = main_holder,
                Name = "",
                ImageColor3 = themes.preset.accent,
                ScaleType = Enum.ScaleType.Slice,
                BorderColor3 = rgb(0, 0, 0),
                BackgroundColor3 = rgb(255, 255, 255),
                Visible = true,
                Image = "http://www.roblox.com/asset/?id=18245826428",
                BackgroundTransparency = 1,
                ImageTransparency = 0.8, 
                Position = dim2(0, -20, 0, -20),
                Size = dim2(1, 40, 1, 40),
                ZIndex = 2,
                BorderSizePixel = 0,
                SliceCenter = rect(vec2(21, 21), vec2(79, 79))
            })library:apply_theme(glow, "glow", "ImageColor3") 
            
            return holder, sgui      
        end 

        local sgui = library:create("ScreenGui", {
            Enabled = true,
            Parent = game.CoreGui,
            Name = "",
            DisplayOrder = 2, 
        })

        function library:window(properties)
            local window = {}
            -- local button_holder  
            
            --[[local function create_dock_button(options) 
                local cfg = {
                    image = options.image or "rbxassetid://79856374238119",
                    open = options.open or true 
                    callback = options.callback or function() end
                }
        
                local button = library:create("TextButton", {
                    Parent = button_holder,
                    Name = "",
                    FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
                    TextColor3 = rgb(0, 0, 0),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "",
                    Size = dim2(0, 25, 0, 25),
                    BorderSizePixel = 0,
                    TextSize = 14,
                    BackgroundColor3 = rgb(60, 55, 75)
                })
                
                local button_inline = library:create("Frame", {
                    Parent = button,
                    Name = "",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(button_inline, "outline", "BackgroundColor3") 
                
                local button_inline = library:create("Frame", {
                    Parent = button_inline,
                    Name = "",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })library:apply_theme(button_inline, "inline", "BackgroundColor3")
                
                local UIGradient = library:create("UIGradient", {
                    Parent = button_inline,
                    Name = "",
                    Rotation = 90,
                    Color = rgbseq{
                    rgbkey(0, rgb(35, 35, 47)),
                    rgbkey(1, rgb(41, 41, 55))
                }
                })library:apply_theme(UIGradient, "contrast", "Color") 
                
                local ImageLabel = library:create("ImageLabel", {
                    Parent = button_inline,
                    Name = "",
                    ImageColor3 = themes.preset.accent,
                    Image = "rbxassetid://79856374238119",
                    BackgroundTransparency = 1,
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })library:apply_theme(ImageLabel, "accent", "ImageColor3") 
                
                local UIPadding = library:create("UIPadding", {
                    Parent = button_inline,
                    Name = "",
                    PaddingTop = dim(0, 4),
                    PaddingBottom = dim(0, 4),
                    PaddingRight = dim(0, 4),
                    PaddingLeft = dim(0, 4)
                })
        
                button.MouseButton1Click:Connect(function()
                    cfg.open = not cfg.open 
        
                    cfg.callback(cfg.open) 
                end)
            end ]]

            -- main window
                local holder, path = library:panel({
                    name = properties and properties.name or "nebula.tech", 
                    size = dim2(0, 500, 0, 500),
                    position = dim2(0, (camera.ViewportSize.X / 2) - 250, 0, (camera.ViewportSize.Y / 2) - 250),
                }) 

                library.frame = path

                -- create_dock_button({
                --     image = "rbxassetid://100959383267514",
                --     callback = function(open)
                --         path.Enabled = open 
                --     end 
                -- })

                window["tab_holder"] = library:create("Frame", {
                    Parent = holder,
                    Name = " ",
                    BackgroundTransparency = 1,
                    Size = dim2(1, 0, 0, 22),
                    BorderColor3 = rgb(0, 0, 0),
                    ZIndex = 5,
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })

                library:create("UIListLayout", {
                    Parent = window["tab_holder"],
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalFlex = Enum.UIFlexAlignment.Fill,
                    Padding = dim(0, 2),
                    SortOrder = Enum.SortOrder.LayoutOrder
                })

                local section_holder = library:create("Frame", {
                    Parent = holder,
                    Name = " ",
                    BackgroundTransparency = 1,
                    Position = dim2(0, -1, 0, 19),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 1, -22),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                window["section_holder"] = section_holder

                local outline = library:create("Frame", {
                    Parent = section_holder,
                    Name = "\0",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 1, 2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })
                
                library:apply_theme(outline, "outline", "BackgroundColor3") 

                local inline = library:create("Frame", {
                    Parent = outline,
                    Name = "\0",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })
                
                library:apply_theme(inline, "inline", "BackgroundColor3") 

                local background = library:create("Frame", {
                    Parent = inline,
                    Name = "\0",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })

                library.section_holder = background

                library:create("UIPadding", {
                    Parent = background,
                    PaddingTop = dim(0, 4),
                    PaddingBottom = dim(0, 4),
                    PaddingRight = dim(0, 4),
                    PaddingLeft = dim(0, 4)
                })

                local UIGradient = library:create("UIGradient", {
                    Parent = background,
                    Rotation = 90,
                    Color = rgbseq{
                        rgbkey(0, rgb(41, 41, 55)),
                        rgbkey(1, rgb(35, 35, 47))
                    }
                })
                
                library:apply_theme(UIGradient, "contrast", "Color") 

                library:make_resizable(path:FindFirstChildOfClass("Frame")) 
            -- 

            -- keybind list       
                local outline = library:create("Frame", {
                    Parent = sgui,
                    Name = "",
                    Visible = false, 
                    Position = UDim2.new(0.04290718212723732, 0, 0.4762658178806305, 0),
                    BorderColor3 = Color3.fromRGB(0, 0, 0),
                    Size = UDim2.new(0, 182, 0, 25),
                    BorderSizePixel = 0,
                    BackgroundColor3 = themes.preset.outline
                })
                library:apply_theme(outline, "outline", "BackgroundColor3") 
                library.keybind_list_frame = outline 

                local inline = library:create("Frame", {
                    Parent = outline,
                    Name = "",
                    Position = UDim2.new(0, 1, 0, 1),
                    BorderColor3 = Color3.fromRGB(0, 0, 0),
                    Size = UDim2.new(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = themes.preset.inline
                })
                library:apply_theme(inline, "inline", "BackgroundColor3")

                local background = library:create("Frame", {
                    Parent = inline,
                    Name = "",
                    Position = UDim2.new(0, 1, 0, 1),
                    BorderColor3 = Color3.fromRGB(0, 0, 0),
                    Size = UDim2.new(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = background,
                    Name = "",
                    Rotation = 90,
                    Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0, themes.preset.high_contrast),
                        ColorSequenceKeypoint.new(1, themes.preset.low_contrast)
                    }
                })
                library:apply_theme(UIGradient, "contrast", "Color") 
                
                local bg = library:create("Frame", {
                    Parent = background,
                    Name = "a",
                    BorderColor3 = Color3.fromRGB(0, 0, 0),
                    Size = UDim2.new(1, 0, 0, 2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = themes.preset.accent
                }); library:apply_theme(bg, "accent", "BackgroundColor3")
                
                
                library:create("UIGradient", {
                    Parent = bg,
                    Name = "",
                    Enabled = true, 
                    Rotation = 90,
                    Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(167, 167, 167))
                    }
                })
                
                local text = library:create("TextLabel", {
                    Parent = background,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = themes.preset.text,
                    BorderColor3 = Color3.fromRGB(0, 0, 0),
                    Text = "Keybinds",
                    BackgroundTransparency = 1,
                    TextTruncate = Enum.TextTruncate.AtEnd,
                    Size = UDim2.new(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    TextSize = 12,
                    BackgroundColor3 = themes.preset.text
                }, "text")
                
                local UIStroke = library:create("UIStroke", {
                    Parent = text,
                    Name = "",
                    LineJoinMode = Enum.LineJoinMode.Miter
                })
                
                local text_holder = library:create("Frame", {
                    Parent = background,
                    Name = "",
                    Size = UDim2.new(0, 182, 0, 22),
                    Position = UDim2.new(0, -2, 1, 1),
                    BorderColor3 = Color3.fromRGB(0, 0, 0),
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundColor3 = themes.preset.outline
                })
                library:apply_theme(text_holder, "outline", "BackgroundColor3")

                local inline = library:create("Frame", {
                    Parent = text_holder,
                    Name = "",
                    Size = UDim2.new(1, -2, 1, -2),
                    Position = UDim2.new(0, 1, 0, 1),
                    BorderColor3 = Color3.fromRGB(0, 0, 0),
                    BorderSizePixel = 0,
                    --AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundColor3 = themes.preset.inline
                })
                library:apply_theme(inline, "inline", "BackgroundColor3")
                
                local background = library:create("Frame", {
                    Parent = inline,
                    Name = "",
                    Size = UDim2.new(1, -2, 1, -2),
                    Position = UDim2.new(0, 1, 0, 1),
                    BorderColor3 = Color3.fromRGB(0, 0, 0),
                    BorderSizePixel = 0,
                    --AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                })
                library.keybind_list = background
                
                local UIGradient = library:create("UIGradient", {
                    Parent = background,
                    Name = "",
                    Rotation = 90,
                    Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0, themes.preset.high_contrast),
                        ColorSequenceKeypoint.new(1, themes.preset.low_contrast)
                    }
                })
                library:apply_theme(UIGradient, "contrast", "Color") 
                
                library:create("UIListLayout", {
                    Parent = background,
                    Name = "",
                    Padding = UDim.new(0, -1),
                    SortOrder = Enum.SortOrder.LayoutOrder
                })
                
                library:create("UIPadding", {
                    Parent = background,
                    Name = "",
                    PaddingBottom = UDim.new(0, 4),
                    PaddingLeft = UDim.new(0, 5)
                })
                
            
            -- 

            -- -- dock innit
            --     local dock_outline = library:create("Frame", {
            --         Parent = sgui,
            --         Name = "",
            --         Visible = true,
            --         BorderColor3 = rgb(0, 0, 0),
            --         AnchorPoint = vec2(0.5, 0),
            --         Position = dim2(0.5, 0, 0, 20),
            --         Size = dim2(0, 127, 0, 39),
            --         BorderSizePixel = 0,
            --         BackgroundColor3 = rgb(32, 32, 38)
            --     })library:apply_theme(dock_outline, "outline", "BackgroundColor3") 
                
            --     local dock_inline = library:create("Frame", {
            --         Parent = dock_outline,
            --         Name = "",
            --         Position = dim2(0, 1, 0, 1),
            --         BorderColor3 = rgb(0, 0, 0),
            --         Size = dim2(1, -2, 1, -2),
            --         BorderSizePixel = 0,
            --         BackgroundColor3 = rgb(60, 55, 75)
            --     })library:apply_theme(dock_inline, "inline", "BackgroundColor3") 
                
            --     local dock_holder = library:create("Frame", {
            --         Parent = dock_inline,
            --         Name = "",
            --         Size = dim2(1, -2, 1, -2),
            --         Position = dim2(0, 1, 0, 1),
            --         BorderColor3 = rgb(32, 32, 38),
            --         BorderSizePixel = 0,
            --         BackgroundColor3 = rgb(255, 255, 255)
            --     })library:apply_theme(dock_holder, "outline", "BackgroundColor3") 
                
            --     local accent = library:create("Frame", {
            --         Parent = dock_holder,
            --         Name = "",
            --         Size = dim2(1, 0, 0, 2),
            --         BorderColor3 = rgb(0, 0, 0),
            --         BorderSizePixel = 0,
            --         BackgroundColor3 = themes.preset.accent
            --     })library:apply_theme(accent, "accent", "BackgroundColor3") 
                
            --     local UIGradient = library:create("UIGradient", {
            --         Parent = accent,
            --         Name = "",
            --         Rotation = 90,
            --         Color = rgbseq{
            --         rgbkey(0, rgb(255, 255, 255)),
            --         rgbkey(1, rgb(167, 167, 167))
            --     }
            --     })
                
            --     button_holder = library:create("Frame", {
            --         Parent = dock_holder,
            --         Name = "",
            --         BackgroundTransparency = 1,
            --         Size = dim2(1, 0, 1, 0),
            --         BorderColor3 = rgb(0, 0, 0),
            --         BorderSizePixel = 0,
            --         BackgroundColor3 = rgb(255, 255, 255)
            --     })
                
            --     local UIListLayout = library:create("UIListLayout", {
            --         Parent = button_holder,
            --         Name = "",
            --         Padding = dim(0, 5),
            --         FillDirection = Enum.FillDirection.Horizontal,
            --         SortOrder = Enum.SortOrder.LayoutOrder
            --     })
                
            --     local UIPadding = library:create("UIPadding", {
            --         Parent = button_holder,
            --         Name = "",
            --         PaddingTop = dim(0, 6),
            --         PaddingBottom = dim(0, 4),
            --         PaddingRight = dim(0, 4),
            --         PaddingLeft = dim(0, 4)
            --     })
                        
            --     local UIGradient = library:create("UIGradient", {
            --         Parent = dock_holder,
            --         Name = "",
            --         Rotation = 90,
            --         Color = rgbseq{
            --         rgbkey(0, rgb(41, 41, 55)),
            --         rgbkey(1, rgb(35, 35, 47))
            --     }
            --     })library:apply_theme(UIGradient, "contrast", "Color") 
            -- -- 

            -- -- cfg holder
                
            --     window["configs"], config_path = library:panel({
            --         name = "Configurations", 
            --         anchor_point = vec2(-1, 0),
            --         size = dim2(0, 322, 0, 391),
            --         position = dim2(0, holder.AbsolutePosition.X + holder.AbsoluteSize.X + 10, 0, holder.AbsolutePosition.Y - 22)
            --     }) 

            --     create_dock_button({
            --         image = "rbxassetid://79856374238119",
            --         callback = function(open)
            --             config_path.Enabled = open 
            --         end 
            --     })

            --     local UIGradient = library:create("UIGradient", {
            --         Parent = holder,
            --         Name = "",
            --         Rotation = 90,
            --         Color = rgbseq{
            --             rgbkey(0, rgb(41, 41, 55)),
            --             rgbkey(1, rgb(35, 35, 47))
            --         }
            --     })library:apply_theme(UIGradient, "contrast", "Color") 
                
            --     local UIPadding = library:create("UIPadding", {
            --         Parent = holder,
            --         Name = "",
            --         PaddingTop = dim(0, 5),
            --         PaddingBottom = dim(0, 5),
            --         PaddingRight = dim(0, 5),
            --         PaddingLeft = dim(0, 5)
            --     })
                
            --     local glow = library:create("ImageLabel", {
            --         Parent = config_outline,
            --         Name = "",
            --         ImageColor3 = themes.preset.accent,
            --         ScaleType = Enum.ScaleType.Slice,
            --         BorderColor3 = rgb(0, 0, 0),
            --         BackgroundColor3 = rgb(255, 255, 255),
            --         Visible = true,
            --         Image = "http://www.roblox.com/asset/?id=18245826428",
            --         BackgroundTransparency = 1,
            --         ImageTransparency = 0.8, 
            --         Position = dim2(0, -20, 0, -20),
            --         Size = dim2(1, 40, 1, 40),
            --         ZIndex = 2,
            --         BorderSizePixel = 0,
            --         SliceCenter = rect(vec2(21, 21), vec2(79, 79))
            --     })library:apply_theme(glow, "glow", "ImageColor3") 
                
            -- -- 

            -- -- playerlist 
            --     window["playerlist"], playerlist_gui = library:panel({
            --         name = "Playerlist", 
            --         anchor_point = vec2(-1, 0),
            --         size = dim2(0, 385, 0, 399),
            --         position = dim2(0, holder.AbsolutePosition.X - 395, 0, holder.AbsolutePosition.Y - 22)
            --     })    
                
            --     create_dock_button({
            --         image = "rbxassetid://115194686863276",
            --         callback = function(open)
            --             playerlist_gui.Enabled = open 
            --         end 
            --     })
            -- -- 
            
            -- -- theming 
            --     window["themes"], themes_gui = library:panel({
            --         name = "Style", 
            --         anchor_point = vec2(-1, 0),
            --         size = dim2(0, 322, 0, 391),
            --         position = dim2(0, window["configs"].AbsolutePosition.X + window["configs"].AbsoluteSize.X + 10, 0, window["configs"].AbsolutePosition.Y - 22)
            --     })   

            --     create_dock_button({
            --         image = "rbxassetid://115194686863276",
            --         callback = function(open)
            --             themes_gui.Enabled = open 
            --         end 
            --     })
            -- -- 
             

            return setmetatable(window, library)
        end

        function library:watermark(options) 
            local cfg = {
                default = options.text or options.default or os.date('drain.lol | %b %d %Y | %H:%M')
            }

            local watermark_outline = library:create("Frame", {
                Parent = sgui,
                Name = "",
                BorderColor3 = rgb(0, 0, 0),
                AnchorPoint = vec2(0.5, 0.5),
                Position = dim2(1, -100, 0, 20),
                Size = dim2(0, 0, 0, 24),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                BackgroundColor3 = rgb(32, 32, 38)
            })library:apply_theme(watermark_outline, "outline", "BackgroundColor3") 
            
            local watermark_inline = library:create("Frame", {
                Parent = watermark_outline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(60, 55, 75)
            })library:apply_theme(watermark_inline, "inline", "BackgroundColor3") 
            
            local watermark_background = library:create("Frame", {
                Parent = watermark_inline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIGradient = library:create("UIGradient", {
                Parent = watermark_background,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                    rgbkey(0, rgb(41, 41, 55)),
                    rgbkey(1, rgb(35, 35, 47))
                }
            })library:apply_theme(UIGradient, "contrast", "Color") 
            
            local text = library:create("TextLabel", {
                Parent = watermark_background,
                Name = "",
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = "  drain.lol | Beta | Aug 29 2024 | 07:29:00  ",
                Size = dim2(0, 0, 1, 0),
                BackgroundTransparency = 1,
                Position = dim2(0, -1, 0, 1),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            library:create("UIStroke", {
                Parent = text,
                Name = "",
                LineJoinMode = Enum.LineJoinMode.Miter
            })
            
            local accent = library:create("Frame", {
                Parent = watermark_outline,
                Name = "",
                Position = dim2(0, 2, 0, 2),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -4, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent
            })library:apply_theme(accent, "accent", "BackgroundColor3") 
            
            local UIGradient = library:create("UIGradient", {
                Parent = accent,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                    rgbkey(0, rgb(255, 255, 255)),
                    rgbkey(1, rgb(167, 167, 167))
                }
            })
            
            function cfg.change_text(input)
                text.Text = "  ".. input .."  "
            end 

            cfg.change_text(cfg.default)

            return cfg 
        end 

        function library:tab(options)	
            local cfg = {
                name = options.name or "tab", 
                enabled = false, 
            }
            
            -- button instances
                local tab_holder = library:create("TextButton", {
                    Parent = self.tab_holder,
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "",
                    Name = "\0",
                    BorderSizePixel = 0,
                    Size = dim2(0, 0, 1, -2),
                    ZIndex = 5,
                    TextSize = 12,
                    BackgroundColor3 = rgb(32, 32, 38),
                    AutoButtonColor = false
                })library:apply_theme(tab_holder, "outline", "BackgroundColor3") 

                local inline = library:create("Frame", {
                    Parent = tab_holder,
                    Size = dim2(1, -2, 1, 0),
                    Name = "\0",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    ZIndex = 5,
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })library:apply_theme(inline, "inline", "BackgroundColor3") 

                local background = library:create("Frame", {
                    Parent = inline,
                    Size = dim2(1, -2, 1, -1),
                    Name = "\0",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    ZIndex = 5,
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })

                local UIGradient = library:create("UIGradient", {
                    Parent = background,
                    Rotation = 90,
                    Color = rgbseq{rgbkey(0, rgb(41, 41, 55)), rgbkey(1, rgb(35, 35, 47))}
                })library:apply_theme(UIGradient, "contrast", "Color") 

                local text = library:create("TextLabel", {
                    Parent = background,
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = cfg.name,
                    Name = "\0",
                    BackgroundTransparency = 1,
                    Size = dim2(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.X,
                    TextSize = 12,
                    ZIndex = 5,
                    BackgroundColor3 = rgb(255, 255, 255)
                }, "text")
                library:apply_theme(text, "accent", "TextColor3")
            
            -- section instances 
                local section_holder = library:create("Frame", {
                    Parent = library.section_holder,
                    BackgroundTransparency = 1,
                    Name = "\0",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    Visible = false,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
            
                cfg["holder"] = section_holder

                library:create("UIListLayout", {
                    Parent = section_holder,
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalFlex = Enum.UIFlexAlignment.Fill,
                    Padding = dim(0, 4),
                    SortOrder = Enum.SortOrder.LayoutOrder
                })

            function cfg.open_tab()
                if library.current_tab and library.current_tab[1] ~= background then 
                    local button = library.current_tab[1]
                    button.Size = dim2(1, -2, 1, -1)
                    button:FindFirstChildOfClass("UIGradient").Rotation = 90
                    button:FindFirstChildOfClass("TextLabel").TextColor3 = themes.preset.text
                        
                    library.current_tab[2].Visible = false
                    
                    library.current_tab = nil
                end
                
                library.current_tab = {
                    background, section_holder
                }
                
                local button = library.current_tab[1] 
                button.Size = dim2(1, -2, 1, 0)
                button:FindFirstChildOfClass("UIGradient").Rotation = -90
                button:FindFirstChildOfClass("TextLabel").TextColor3 = themes.preset.accent 

                library.current_tab[2].Visible = true 

                if library.current_element_open and library.current_element_open ~= cfg then 
                    library.current_element_open.set_visible(false)
                    library.current_element_open.open = false 
                    library.current_element_open = nil 
                end
            end
            
            tab_holder.MouseButton1Click:Connect(cfg.open_tab)
            
            return setmetatable(cfg, library) 
        end

        function library:column(path) 
            local cfg = {}
            
            local holder = path and self[path] or self.holder
            
            local column = library:create("Frame", {
                Parent = holder,
                BackgroundTransparency = 1,
                Name = "\0",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(60, 55, 75)
            })library:apply_theme(column, "inline", "BackgroundColor3") 
            
            library:create("UIListLayout", {
                Parent = column,
                Padding = dim(0, 4),
                SortOrder = Enum.SortOrder.LayoutOrder,
                VerticalFlex = Enum.UIFlexAlignment.Fill
            })
            
            cfg["holder"] = column

            return setmetatable(cfg, library) 
        end

        function library:section(options)
            local cfg = {
                name = options.name or "Section", 
            }
            
            local section = library:create("Frame", {
                Parent = self.holder,
                Name = "\0",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(60, 55, 75)
            })library:apply_theme(section, "inline", "BackgroundColor3") 

            local inline = library:create("Frame", {
                Parent = section,
                Name = "\0",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(32, 32, 38)
            })library:apply_theme(inline, "outline", "BackgroundColor3") 

            local background = library:create("Frame", {
                Parent = inline,
                Name = "\0",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })

            local text = library:create("TextLabel", {
                Parent = background,
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = cfg.name,
                Name = "\0",
                BackgroundTransparency = 1,
                Position = dim2(0, 6, 0, 4),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.XY,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            })

            library:create("UIStroke", {
                Parent = text,
                LineJoinMode = Enum.LineJoinMode.Miter
            })

            local accent = library:create("Frame", {
                Parent = background,
                Name = "\0",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent
            })library:apply_theme(accent, "accent", "BackgroundColor3") 

            local UIGradient = library:create("UIGradient", {
                Parent = accent,
                Rotation = 90,
                Color = rgbseq{
                    rgbkey(0, rgb(255, 255, 255)),
                    rgbkey(1, rgb(167, 167, 167))
                }
            })

            local UIGradient = library:create("UIGradient", {
                Parent = background,
                Rotation = 90,
                Color = rgbseq{
                    rgbkey(0, rgb(41, 41, 55)),
                    rgbkey(1, rgb(35, 35, 47))
                }
            })library:apply_theme(UIGradient, "contrast", "Color") 

            local ScrollingFrame = library:create("ScrollingFrame", {
                Parent = background,
                ScrollBarImageColor3 = themes.preset.accent,
                Active = true,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                ScrollBarThickness = 2,
                Size = dim2(1, 0, 1, -20),
                BackgroundTransparency = 1,
                Position = dim2(0, 0, 0, 20),
                BackgroundColor3 = rgb(255, 255, 255),
                BorderColor3 = rgb(0, 0, 0),
                BorderSizePixel = 0,
                CanvasSize = dim2(0, 0, 0, 0)
            })library:apply_theme(ScrollingFrame, "accent", "ScrollBarImageColor3") 

            local elements = library:create("Frame", {
                Parent = ScrollingFrame,
                Name = "\0",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 0, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            cfg.holder = elements 

            library:create("UIListLayout", {
                Parent = elements,
                Padding = dim(0, 4),
                HorizontalAlignment = Enum.HorizontalAlignment.Center,
                SortOrder = Enum.SortOrder.LayoutOrder
            })

            library:create("UIPadding", {
                Parent = ScrollingFrame,
                PaddingBottom = dim(0, 10)
            })

            return setmetatable(cfg, library)
        end

        function library:slider(options)
            local cfg = {
                name = options.name or nil,
                suffix = options.suffix or "",
                flag = options.flag or tostring(2^789),
                callback = options.callback or function() end, 

                min = options.min or options.minimum or 0,
                max = options.max or options.maximum or 100,
                intervals = options.interval or options.decimal or 1,
                default = options.default or 10,

                dragging = false,
                value = options.default or 10, 

                previous_holder = self
            } 

            local slider = library:create("TextLabel", {
                Parent = self.holder, 
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = "",
                Name = "slider",
                ZIndex = 2,
                Size = dim2(1, -8, 0, 12),
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                AutomaticSize = Enum.AutomaticSize.Y,
                TextYAlignment = Enum.TextYAlignment.Top,
                TextSize = 11,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            if cfg.name then 
                local left_components = library:create("Frame", {
                    Parent = slider,
                    Name = "left_components",
                    BackgroundTransparency = 1,
                    Position = dim2(0, 2, 0, -1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 0, 0, 14),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local text = library:create("TextLabel", {
                    Parent = left_components,
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = cfg.name,
                    Name = "text",
                    BackgroundTransparency = 1,
                    Size = dim2(0, 0, 1, -1),
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.X,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                }, "text")

                library:create("UIListLayout", {
                    Parent = left_components,
                    Padding = dim(0, 5),
                    Name = "_",
                    FillDirection = Enum.FillDirection.Horizontal
                })
            end 
            
            local bottom_components = library:create("Frame", {
                Parent = slider,
                Name = "bottom_components",
                Position = dim2(0, 0, 0, cfg.name and 15 or 0),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 26, 0, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local slider = library:create("TextButton", {
                Parent = bottom_components,
                Name = "slider",
                Position = dim2(0, 0, 0, 2),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -27, 1, 12),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(32, 32, 38),
                Text = "",
                AutoButtonColor = false,
            })library:apply_theme(slider, "outline", "BackgroundColor3") 
            
            local inline = library:create("Frame", {
                Parent = slider,
                Name = "inline",
                Position = dim2(0, 0, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -1, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(60, 55, 75)
            })library:apply_theme(inline, "inline", "BackgroundColor3") 
            
            local background = library:create("Frame", {
                Parent = inline,
                Name = "background",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent
            })library:apply_theme(background, "accent", "BackgroundColor3") 
            
            local contrast = library:create("Frame", {
                Parent = background,
                Name = "contrast",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local slidertext = library:create("TextLabel", {
                Parent = contrast,
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = "12.50/100.00",
                Name = "text",
                BackgroundTransparency = 1,
                Position = dim2(0, 0, 0, -1),
                Size = dim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextSize = 12,
                ZIndex = 2,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local fill = library:create("Frame", {
                Parent = contrast,
                Name = "fill",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(0.75, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent
            })library:apply_theme(fill, "accent", "BackgroundColor3") 
            
            local UIGradient = library:create("UIGradient", {
                Parent = fill,
                Rotation = 90,
                Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
            })
            
            local UIGradient = library:create("UIGradient", {
                Parent = contrast,
                Rotation = 90,
                Color = rgbseq{
                rgbkey(0, rgb(41, 41, 55)),
                rgbkey(1, rgb(35, 35, 47))
            }
            })
            
            local UIGradient = library:create("UIGradient", {
                Parent = background,
                Rotation = 90,
                Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
            }) 
            
            library:create("UIListLayout", {
                Parent = bottom_components,
                Padding = dim(0, 10),
                Name = "_",
                SortOrder = Enum.SortOrder.LayoutOrder
            })
            
            library:create("UIPadding", {
                Parent = slider,
                PaddingLeft = dim(0, 1)
            })

            function cfg.set(value)
                cfg.value = math.clamp(library:round(value, cfg.intervals), cfg.min, cfg.max)

                fill.Size = dim2((cfg.value - cfg.min) / (cfg.max - cfg.min), 0, 1, 0)
                slidertext.Text = tostring(cfg.value) .. cfg.suffix .. "/" .. tostring(cfg.max) .. cfg.suffix
                flags[cfg.flag] = cfg.value

                cfg.callback(flags[cfg.flag])
            end

            library:connection(uis.InputChanged, function(input)
                if cfg.dragging and input.UserInputType == Enum.UserInputType.MouseMovement then 
                    local size_x = (input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X
                    local value = ((cfg.max - cfg.min) * size_x) + cfg.min
                    cfg.set(value)
                end
            end)

            library:connection(uis.InputEnded, function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    cfg.dragging = false 
                end 
            end)

            slider.MouseButton1Down:Connect(function()
                cfg.dragging = true
            end)

            cfg.set(cfg.default)
            
            config_flags[cfg.flag] = cfg.set

            library.config_flags[cfg.flag] = cfg.set

            return self 
        end 

        function library:toggle(options)
            local cfg = {
                enabled = options.enabled or nil,
                name = options.name or "Toggle",
                flag = options.flag or tostring(math.random(1,9999999)),
                callback = options.callback or function() end,
                default = options.default or false,
                colorpicker = options.color or nil,
                previous_holder = self
            }
            
            -- instances
                local toggle_holder = library:create("TextButton", {
                    Parent = self.holder,
                    FontFace = library.font,
                    TextColor3 = rgb(151, 151, 151),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "",
                    Name = "toggle",
                    ZIndex = 1,
                    Size = dim2(1, -8, 0, 12),
                    BorderSizePixel = 0,
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextYAlignment = Enum.TextYAlignment.Top,
                    TextSize = 11,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
            
                local right_components = library:create("Frame", {
                    Parent = toggle_holder,
                    Name = "right_components",
                    Position = dim2(1, -1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 0, 0, 12),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                cfg["right_holder"] = right_components
            
                local list = library:create("UIListLayout", {
                    Parent = right_components,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalAlignment = Enum.HorizontalAlignment.Right,
                    Padding = dim(0, 4),
                    Name = "list",
                    SortOrder = Enum.SortOrder.LayoutOrder
                })
            
                library:create("UIPadding", {
                    Parent = toggle_holder
                })
            
                local left_components = library:create("Frame", {
                    Parent = toggle_holder,
                    Name = "left_components",
                    BackgroundTransparency = 1,
                    Position = dim2(0, 0, 0, 0),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 0, 0, 14),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
            
                local text = library:create("TextLabel", {
                    Parent = left_components,
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = cfg.name,
                    Name = "text",
                    BackgroundTransparency = 1,
                    Size = dim2(0, 0, 1, -1),
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.X,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
            
                library:create("UIStroke", {
                    Parent = text,
                    LineJoinMode = Enum.LineJoinMode.Miter
                })
            
                library:create("UIListLayout", {
                    Parent = left_components,
                    Padding = dim(0, 5),
                    Name = "_",
                    FillDirection = Enum.FillDirection.Horizontal
                })
            
                local toggle = library:create("TextButton", {
                    Parent = left_components,
                    Name = "!toggle",
                    Text = "",
                    AutoButtonColor = false,
                    Position = dim2(0, 0, 0, 2),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 15, 0, 15),
                    BorderSizePixel = 0,
                    ZIndex = 1, 
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(toggle, "outline", "BackgroundColor3") 
            
                local inline = library:create("Frame", {
                    Parent = toggle,
                    Name = "inline",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })library:apply_theme(inline, "inline", "BackgroundColor3") 
            
                local background = library:create("Frame", {
                    Parent = inline,
                    Name = "background",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = themes.preset.accent
                })library:apply_theme(background, "accent", "BackgroundColor3") 
            
                local UIGradient = library:create("UIGradient", {
                    Parent = background,
                    Rotation = 90,
                    Color = rgbseq{
                        rgbkey(0, rgb(255, 255, 255)),
                        rgbkey(1, rgb(167, 167, 167))
                    }
                })
            -- 
        
            function cfg.set(bool)
                background.BackgroundColor3 = bool and themes.preset.accent or themes.preset.inline
        
                flags[cfg.flag] = bool
                
                cfg.callback(bool)
            end
        
            library:connection(toggle_holder.MouseButton1Click, function()
                cfg.enabled = not cfg.enabled
        
                cfg.set(cfg.enabled)
            end)

            library:connection(toggle.MouseButton1Click, function()
                cfg.enabled = not cfg.enabled
        
                cfg.set(cfg.enabled)
            end)

            cfg.set(cfg.default)
        
            self.previous_holder = left_components
            self.right_holder = right_components
            
            library.config_flags[cfg.flag] = cfg.set

            return self
        end
        
        function library:colorpicker(options)
            local parent = self.right_holder
            
            local cfg = {
                name = options.name or "Color", 
                flag = options.flag or tostring(2^789),
                color = options.color or Color3.new(1, 1, 1), -- Default to white color if not provided
                alpha = options.alpha or 1,
                callback = options.callback or function() end,
                holder = self.previous_holder
            }

            local dragging_sat = false 
            local dragging_hue = false 
            local dragging_alpha = false 

            local h, s, v = cfg.color:ToHSV() 
            local a = cfg.alpha 
            
            -- colorpicker button 
                local colorpicker_button = library:create("TextButton", {
                    Parent = parent,
                    Name = "outline",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 24, 0, 14),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38),
                    Text = "",
                    AutoButtonColor = false,
                })library:apply_theme(colorpicker_button, "outline", "BackgroundColor3") 
            
                local inline = library:create("Frame", {
                    Parent = colorpicker_button,
                    Name = "inline",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })library:apply_theme(inline, "inline", "BackgroundColor3") 
            
                local handler = library:create("Frame", {
                    Parent = inline,
                    Name = "handler",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(250, 165, 27)
                })
            
                local UIGradient = library:create("UIGradient", {
                    Parent = handler,
                    Rotation = 90,
                    Color = rgbseq{
                        rgbkey(0, rgb(255, 255, 255)),
                        rgbkey(1, rgb(167, 167, 167))
                    }
                })
            -- 

            -- colorpicker instances
                local colorpicker_holder = library:create("Frame", {
                    Parent = sgui,
                    Name = "colorpicker",
                    Position = dim2(0, colorpicker_button.AbsolutePosition.X + 1, 0, colorpicker_button.AbsolutePosition.Y + 17),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 190, 0, 190),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38),
                    Visible = false,
                    ZIndex = 1
                })library:apply_theme(colorpicker_holder, "outline", "BackgroundColor3") 

                library:make_resizable(colorpicker_holder)
                
                local window_inline = library:create("Frame", {
                    Parent = colorpicker_holder,
                    Name = "window_inline",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = themes.preset.accent
                })library:apply_theme(window_inline, "accent", "BackgroundColor3") 
                
                local window_holder = library:create("Frame", {
                    Parent = window_inline,
                    Name = "window_holder",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(32, 32, 38),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })library:apply_theme(window_holder, "outline", "BackgroundColor3") 
                
                local UIGradient = library:create("UIGradient", {
                    Parent = window_holder,
                    Rotation = 90,
                    Name = "_",
                    Color = rgbseq{
                    rgbkey(0, rgb(41, 41, 55)),
                    rgbkey(1, rgb(35, 35, 47))
                }
                })library:apply_theme(UIGradient, "contrast", "Color") 
                
                local text = library:create("TextLabel", {
                    Parent = window_holder,
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = cfg.name,
                    Name = "text",
                    BackgroundTransparency = 1,
                    Position = dim2(0, 2, 0, 4),
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.XY,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                library:create("UIStroke", {
                    Parent = text,
                    LineJoinMode = Enum.LineJoinMode.Miter
                })
                
                library:create("UIPadding", {
                    Parent = window_holder,
                    Name = "_",
                    PaddingBottom = dim(0, 4),
                    PaddingRight = dim(0, 4),
                    PaddingLeft = dim(0, 4)
                })
                
                local main_holder = library:create("Frame", {
                    Parent = window_holder,
                    Name = "main_holder",
                    Position = dim2(0, 0, 0, 20),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 1, -20),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })library:apply_theme(main_holder, "inline", "BackgroundColor3") 
                
                local main_holder_inline = library:create("Frame", {
                    Parent = main_holder,
                    Name = "main_holder_inline",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(main_holder_inline, "outline", "BackgroundColor3") 
                
                local main_holder_background = library:create("Frame", {
                    Parent = main_holder_inline,
                    Name = "main_holder_background",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = main_holder_background,
                    Rotation = 90,
                    Name = "_",
                    Color = rgbseq{
                    rgbkey(0, rgb(41, 41, 55)),
                    rgbkey(1, rgb(35, 35, 47))
                }
                })library:apply_theme(UIGradient, "contrast", "Color") 
                
                library:create("UIPadding", {
                    Parent = main_holder_background,
                    PaddingTop = dim(0, 4),
                    Name = "_",
                    PaddingBottom = dim(0, 4),
                    PaddingRight = dim(0, 4),
                    PaddingLeft = dim(0, 4)
                })
                
                local alpha = library:create("TextButton", {
                    Parent = main_holder_background,
                    AnchorPoint = vec2(0, 0.5),
                    Name = "alpha",
                    Position = dim2(0, 0, 1, -8),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -20, 0, 14),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75),
                    Text = "",
                    AutoButtonColor = false,
                })library:apply_theme(alpha, "inline", "BackgroundColor3") 
                
                local outline = library:create("Frame", {
                    Parent = alpha,
                    Name = "outline",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(outline, "outline", "BackgroundColor3") 
                
                local alpha_drag = library:create("Frame", {
                    Parent = outline,
                    Name = "alpha_drag",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(0, 221, 255)
                })
                
                local alphaind = library:create("ImageLabel", {
                    Parent = alpha_drag,
                    ScaleType = Enum.ScaleType.Tile,
                    BorderColor3 = rgb(0, 0, 0),
                    Image = "rbxassetid://18274452449",
                    BackgroundTransparency = 1,
                    Name = "alphaind",
                    Size = dim2(1, 0, 1, 0),
                    TileSize = dim2(0, 6, 0, 6),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = alphaind,
                    Transparency = numseq{
                        numkey(0, 0),
                        numkey(1, 1)
                    }
                })
                
                local alpha_picker = library:create("Frame", {
                    Parent = alpha_drag,
                    Name = "alpha_picker",
                    BorderMode = Enum.BorderMode.Inset,
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 4, 1, 0),
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local hue = library:create("TextButton", {
                    Parent = main_holder_background,
                    AnchorPoint = vec2(1, 0),
                    Name = "hue",
                    Position = dim2(1, -1, 0, 0),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 14, 1, -20),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75),
                    Text = "",
                    AutoButtonColor = false
                })
                
                local outline = library:create("Frame", {
                    Parent = hue,
                    Name = "outline",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })
                
                local Frame = library:create("Frame", {
                    Parent = outline,
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = Frame,
                    Rotation = 270,
                    Color = rgbseq{
                    rgbkey(0, rgb(255, 0, 0)),
                    rgbkey(0.17000000178813934, rgb(255, 255, 0)),
                    rgbkey(0.33000001311302185, rgb(0, 255, 0)),
                    rgbkey(0.5, rgb(0, 255, 255)),
                    rgbkey(0.6700000166893005, rgb(0, 0, 255)),
                    rgbkey(0.8299999833106995, rgb(255, 0, 255)),
                    rgbkey(1, rgb(255, 0, 0))
                }
                }) 
                
                local hue_picker = library:create("Frame", {
                    Parent = Frame,
                    Name = "hue_picker",
                    BorderMode = Enum.BorderMode.Inset,
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 0, 4),
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local visualize = library:create("Frame", {
                    Parent = main_holder_background,
                    AnchorPoint = vec2(1, 1),
                    Name = "visualize",
                    Position = dim2(1, -1, 1, -1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 14, 0, 14),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })library:apply_theme(visualize, "inline", "BackgroundColor3") 
                
                local outline = library:create("Frame", {
                    Parent = visualize,
                    Size = dim2(1, -2, 1, -2),
                    Name = "outline",
                    Active = true,
                    BorderColor3 = rgb(0, 0, 0),
                    Position = dim2(0, 1, 0, 1),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(outline, "outline", "BackgroundColor3") 
                
                local visualize = library:create("Frame", {
                    Parent = outline,
                    Size = dim2(1, -2, 1, -2),
                    Name = "visualize",
                    Active = true,
                    BorderColor3 = rgb(0, 0, 0),
                    Position = dim2(0, 1, 0, 1),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(0, 221, 255)
                })
                
                local satval_picker = library:create("Frame", {
                    Parent = main_holder_background,
                    Name = "satval_picker",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -20, 1, -20),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })library:apply_theme(satval_picker, "inline", "BackgroundColor3") 
                
                local outline = library:create("Frame", {
                    Parent = satval_picker,
                    Name = "outline",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(outline, "outline", "BackgroundColor3") 
                
                local colorpicker = library:create("Frame", {
                    Parent = outline,
                    Name = "colorpicker",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(0, 221, 255)
                })
                
                local sat = library:create("TextButton", {
                    Parent = colorpicker,
                    Name = "sat",
                    Size = dim2(1, 0, 1, 0),
                    BorderColor3 = rgb(0, 0, 0),
                    ZIndex = 2,
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255),
                    Text = "",
                    AutoButtonColor = false,
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = sat,
                    Rotation = 270,
                    Transparency = numseq{
                        numkey(0, 0),
                        numkey(1, 1)
                    },
                    Color = rgbseq{
                        rgbkey(0, rgb(0, 0, 0)),
                        rgbkey(1, rgb(0, 0, 0))
                    }
                })
                
                local val = library:create("TextButton", {
                    Parent = colorpicker,
                    Name = "val",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255),
                    Text = "",
                    AutoButtonColor = false,
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = val,
                    Transparency = numseq{
                        numkey(0, 0),
                        numkey(1, 1)
                    }
                })
                
                local satval_picker_REAL = library:create("Frame", {
                    Parent = colorpicker,
                    Name = "satval_picker_REAL",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 2, 0, 2),
                    BorderSizePixel = 1,
                    BackgroundColor3 = rgb(255, 255, 255),
                    ZIndex = 3, 
                })
            -- 
                
            function cfg.set_visible(bool)
                colorpicker_holder.Visible = bool

                if bool then 
                    if library.current_element_open and library.current_element_open ~= cfg then 
                        library.current_element_open.set_visible(false)
                        library.current_element_open.open = false 
                    end

                    library.current_element_open = cfg 
                end
            end 

            colorpicker_button.MouseButton1Click:Connect(function()		
                cfg.open = not cfg.open

                cfg.set_visible(cfg.open) 
            end)

            colorpicker_button:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
                colorpicker_holder.Position = dim2(0, colorpicker_button.AbsolutePosition.X + 1, 0, colorpicker_button.AbsolutePosition.Y + 17)
            end)

            function cfg.set(color, alpha)
                if color then 
                    h, s, v = color:ToHSV()
                end 
            
                if alpha then 
                    a = alpha
                end 
            
                local hsv_position = Color3.fromHSV(h, s, v)
                local Color = Color3.fromHSV(h, s, v)
                
                local value = 1 - h
                local offset = (value < 1) and 0 or -4
                hue_picker.Position = dim2(0, 0, value, offset)

                local offset = (a < 1) and 0 or -4
                alpha_picker.Position = dim2(a, offset, 0, 0)

                alpha_drag.BackgroundColor3 = Color3.fromHSV(h, s, v)
                
                visualize.BackgroundColor3 = Color
                handler.BackgroundColor3 = Color 

                colorpicker.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
                
                cfg.color = Color
                cfg.alpha = a
                
                local s_offset = (s < 1) and 0 or -3
                local v_offset = (1 - v < 1) and 0 or -3
                satval_picker_REAL.Position = dim2(s, s_offset, 1 - v, v_offset)

                flags[cfg.flag] = {} 
                flags[cfg.flag]["Color"] = Color
                flags[cfg.flag]["Transparency"] = a
            
                cfg.callback(Color, a)
            end

            function cfg.update_color() 
                local mouse = uis:GetMouseLocation() 

                if dragging_sat then	
                    s = math.clamp((vec2(mouse.X, mouse.Y - gui_offset) - val.AbsolutePosition).X / val.AbsoluteSize.X, 0, 1)
                    v = 1 - math.clamp((vec2(mouse.X, mouse.Y - gui_offset) - sat.AbsolutePosition).Y / sat.AbsoluteSize.Y, 0, 1)
                elseif dragging_hue then 
                    h = math.clamp(1 - (vec2(mouse.X, mouse.Y - gui_offset) - hue.AbsolutePosition).Y / hue.AbsoluteSize.Y, 0, 1)
                elseif dragging_alpha then 
                    a = math.clamp((vec2(mouse.X, mouse.Y - gui_offset) - alpha.AbsolutePosition).X / alpha.AbsoluteSize.X, 0, 1)
                end

                cfg.set(nil, nil)
            end

            alpha.MouseButton1Down:Connect(function()
                dragging_alpha = true 
            end)

            hue.MouseButton1Down:Connect(function()
                dragging_hue = true 
            end)

            sat.MouseButton1Down:Connect(function()
                dragging_sat = true  
            end)

            uis.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging_sat = false
                    dragging_hue = false
                    dragging_alpha = false 
                end
            end)

            uis.InputChanged:Connect(function(input)
                if (dragging_sat or dragging_hue or dragging_alpha) and input.UserInputType == Enum.UserInputType.MouseMovement then
                    cfg.update_color() 
                end
            end)	

            cfg.set(cfg.color, cfg.alpha)

            self.previous_holder = parent

            library.config_flags[cfg.flag] = cfg.set
            
            return self 
        end

        function library:keybind(options)
            local parent = self.right_holder

            local cfg = {
                flag = options.flag or "SET ME A FLAG NOWWW!!!!",
                callback = options.callback or function() end,
                open = false,
                binding = nil, 
                name = options.name or nil, 
                ignore_key = options.ignore or false, 

                key = options.key or nil, 
                mode = options.mode or "toggle",
                active = options.default or false, 

                hold_instances = {},
            }

            flags[cfg.flag] = {} 
            
            local KEYBIND_ELEMENT;
            if cfg.name then 
                KEYBIND_ELEMENT = library:create("TextLabel", {
                    Parent = library.keybind_list,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = Color3.fromRGB(180, 180, 180),
                    BorderColor3 = Color3.fromRGB(0, 0, 0),
                    Text = "[ Hold ]  Fly - X",
                    Size = UDim2.new(1, -5, 0, 18),
                    Visible = false, 
                    Position = UDim2.new(0, 5, 0, -1),
                    BorderSizePixel = 0,
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextTruncate = Enum.TextTruncate.AtEnd,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextSize = 12,
                    BackgroundColor3 = themes.preset.text
                }, "text")
            end 

            local element_outline = library:create("TextButton", {
                Parent = parent,
                Name = "",
                BorderColor3 = rgb(0, 0, 0),
                Text = "", 
                Size = dim2(0, 24, 0, 14),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(32, 32, 38)
            })library:apply_theme(element_outline, "outline", "BackgroundColor3") 
            
            local inline = library:create("Frame", {
                Parent = element_outline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(60, 55, 75)
            })library:apply_theme(inline, "inline", "BackgroundColor3") 
            
            local handler = library:create("Frame", {
                Parent = inline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIGradient = library:create("UIGradient", {
                Parent = handler,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                    rgbkey(0, rgb(41, 41, 55)),
                    rgbkey(1, rgb(35, 35, 47))
                }
            })library:apply_theme(UIGradient, "contrast", "Color") 
            
            local key_text = library:create("TextLabel", {
                Parent = handler,
                Name = "",
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = "b",
                Size = dim2(1, 0, 1, 0),
                BackgroundTransparency = 1,
                Position = dim2(0, 0, 0, -2),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.XY,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            })
                
            -- mode selector
                local keybind_selector = library:create("Frame", {
                    Parent = sgui,
                    Name = "",
                    Position = dim2(0, element_outline.AbsolutePosition.X + 1, 0, element_outline.AbsolutePosition.Y + 17),
                    BorderColor3 = rgb(255, 255, 255),
                    BorderSizePixel = 2,
                    Visible = false, 
                    AutomaticSize = Enum.AutomaticSize.XY,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                library:create("UIListLayout", {
                    Parent = keybind_selector,
                    Name = "",
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    HorizontalFlex = Enum.UIFlexAlignment.Fill,
                    Padding = dim(0, 2)
                })
                
                local hold_button = library:create("TextButton", {
                    Parent = keybind_selector,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "hold",
                    BackgroundTransparency = 1,
                    AutomaticSize = Enum.AutomaticSize.XY,
                    BorderSizePixel = 0,
                    ZIndex = 2,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                library:create("UIStroke", {
                    Parent = hold_button,
                    Name = "",
                    LineJoinMode = Enum.LineJoinMode.Miter
                })
                
                library:create("UIPadding", {
                    Parent = keybind_selector,
                    Name = "",
                    PaddingTop = dim(0, 3),
                    PaddingBottom = dim(0, 5),
                    PaddingRight = dim(0, 5),
                    PaddingLeft = dim(0, 5)
                })
                
                local toggle_button = library:create("TextButton", {
                    Parent = keybind_selector,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "toggle",
                    BackgroundTransparency = 1,
                    AutomaticSize = Enum.AutomaticSize.XY,
                    BorderSizePixel = 0,
                    ZIndex = 2,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                library:create("UIStroke", {
                    Parent = toggle_button,
                    Name = "",
                    LineJoinMode = Enum.LineJoinMode.Miter
                })
                
                local always_button = library:create("TextButton", {
                    Parent = keybind_selector,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "always",
                    BackgroundTransparency = 1,
                    AutomaticSize = Enum.AutomaticSize.XY,
                    BorderSizePixel = 0,
                    ZIndex = 2,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                library:create("UIStroke", {
                    Parent = always_button,
                    Name = "",
                    LineJoinMode = Enum.LineJoinMode.Miter
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = keybind_selector,
                    Name = "",
                    Rotation = 90,
                    Color = rgbseq{
                    rgbkey(0, rgb(41, 41, 55)),
                    rgbkey(1, rgb(35, 35, 47))
                }
                })
                
                local UIStroke = library:create("UIStroke", {
                    Parent = keybind_selector,
                    Name = "",
                    Color = rgb(60, 55, 75),
                    LineJoinMode = Enum.LineJoinMode.Miter,
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                })
            -- 

            -- init 
                element_outline:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
                    keybind_selector.Position = dim2(0, element_outline.AbsolutePosition.X + 1, 0, element_outline.AbsolutePosition.Y + 17)
                end)

                function cfg.set_visible(bool)
                    keybind_selector.Visible = bool

                    if bool then 
                        if library.current_element_open and library.current_element_open ~= cfg then 
                            library.current_element_open.set_visible(false)
                            library.current_element_open.open = false 
                        end

                        library.current_element_open = cfg 
                    end
                end 

                function cfg.set_mode(mode) 
                    cfg.mode = mode 

                    if mode == "always" then
                        cfg.set(true)
                    elseif mode == "hold" then
                        cfg.set(false)
                    end

                    flags[cfg.flag]["mode"] = mode
                end 

                function cfg.set(input)
                    if type(input) == "boolean" then 
                        local __cached = input 

                        if cfg.mode == "always" then 
                            __cached = true 
                        end 

                        cfg.active = __cached 
                        flags[cfg.flag]["active"] = __cached 
                        cfg.callback(__cached)
                    elseif tostring(input):find("Enum") then 
                        input = input.Name == "Escape" and "..." or input

                        cfg.key = input or "..."	

                        local _text = keys[cfg.key] or tostring(cfg.key):gsub("Enum.", "")
                        local _text2 = (tostring(_text):gsub("KeyCode.", ""):gsub("UserInputType.", "")) or "..."
                        cfg.key_name = _text2

                        flags[cfg.flag]["mode"] = cfg.mode 
                        flags[cfg.flag]["key"] = cfg.key 

                        key_text.Text = string.lower(_text2)

                        cfg.callback(cfg.active or false)
                    elseif table.find({"toggle", "hold", "always"}, input) then 
                        cfg.set_mode(input)

                        if input == "always" then 
                            cfg.active = true 
                        end 

                        cfg.callback(cfg.active or false)
                    elseif type(input) == "table" then 
                        input.key = type(input.key) == "string" and input.key ~= "..." and library:convert_enum(input.key) or input.key

                        input.key = input.key == Enum.KeyCode.Escape and "..." or input.key
                        cfg.key = input.key or "..."
                        
                        cfg.mode = input.mode or "toggle"

                        if input.active then
                            cfg.active = input.active
                        end

                        local text = tostring(cfg.key) ~= "Enums" and (keys[cfg.key] or tostring(cfg.key):gsub("Enum.", "")) or nil
                        local __text = text and (tostring(text):gsub("KeyCode.", ""):gsub("UserInputType.", ""))
                        
                        key_text.Text = string.lower(__text) or "..."
                        cfg.key_name = __text
                    end 

                    flags[cfg.flag] = {
                        mode = cfg.mode,
                        key = cfg.key, 
                        active = cfg.active
                    }
                    
                    if cfg.name then 
                        KEYBIND_ELEMENT.Visible = cfg.active
                    end 

                    local text = tostring(cfg.key) ~= "Enums" and (keys[cfg.key] or tostring(cfg.key):gsub("Enum.", "")) or nil
                    local __text = text and (tostring(text):gsub("KeyCode.", ""):gsub("UserInputType.", ""))

                    if cfg.name then 
                        KEYBIND_ELEMENT.Text = "[ " .. string.upper(string.sub(cfg.mode, 1, 1)) .. string.sub(cfg.mode, 2) .. " ] " .. cfg.name .. " - " .. __text
                    end 
                end

                hold_button.MouseButton1Click:Connect(function()
                    cfg.set_mode("hold") 
                    cfg.set_visible(false)
                    cfg.open = false 
                end) 

                toggle_button.MouseButton1Click:Connect(function()
                    cfg.set_mode("toggle") 
                    cfg.set_visible(false)
                    cfg.open = false 
                end) 

                always_button.MouseButton1Click:Connect(function()
                    cfg.set_mode("always") 
                    cfg.set_visible(false)
                    cfg.open = false 
                end) 

                element_outline.MouseButton2Click:Connect(function()
                    cfg.open = not cfg.open 

                    cfg.set_visible(cfg.open)
                end)

                element_outline.MouseButton1Down:Connect(function()
                    task.wait()
                    key_text.Text = "..."	

                    cfg.binding = library:connection(uis.InputBegan, function(keycode, game_event)  
                        cfg.set(keycode.KeyCode)
                        
                        cfg.binding:Disconnect() 
                        cfg.binding = nil
                    end)
                end)

                library:connection(uis.InputBegan, function(input, game_event) 
                    if not game_event then 
                        if input.KeyCode == cfg.key then 
                            if cfg.mode == "toggle" then 
                                cfg.active = not cfg.active
                                cfg.set(cfg.active)
                            elseif cfg.mode == "hold" then 
                                cfg.set(true)
                            end
                        end
                    end
                end)

                library:connection(uis.InputEnded, function(input, game_event) 
                    if game_event then 
                        return 
                    end 

                    local selected_key = input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode or input.UserInputType
        
                    if selected_key == cfg.key then
                        if cfg.mode == "hold" then 
                            cfg.set(false)
                        end
                    end
                end)
        
                cfg.set({mode = cfg.mode, active = cfg.active, key = cfg.key})
        
                library.config_flags[cfg.flag] = cfg.set
            -- 
            
            self.previous_holder = parent

            library.config_flags[cfg.flag] = cfg.set

            return self 
        end 

        function library:dropdown(options) 
            local parent = self.holder 

            local cfg = {
                name = options.name or nil,
                flag = options.flag or tostring(math.random(1,9999999)),

                items = options.items or {"1", "2", "3"},
                callback = options.callback or function() end,
                multi = options.multi or false, 

                previous_holder = self, 
                open = false, 
                option_instances = {}, 
                multi_items = {}, 
                scrolling = options.scrolling or false, 

                previous_holder = self
            }
            cfg.default = options.default or (cfg.multi and {cfg.items[1]}) or cfg.items[1] or nil

            -- dropdown elements
                local dropdown = library:create("TextLabel", {
                    Parent = parent,
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "",
                    Name = "dropdown",
                    ZIndex = 2,
                    Size = dim2(1, -8, 0, 12),
                    BorderSizePixel = 0,
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextYAlignment = Enum.TextYAlignment.Top,
                    TextSize = 11,
                    BackgroundColor3 = rgb(255, 255, 255)
                })

                local main_text      
                if cfg.name then 
                    local left_components = library:create("Frame", {
                        Parent = dropdown,
                        Name = "left_components",
                        BackgroundTransparency = 1,
                        Position = dim2(0, 2, 0, -1),
                        BorderColor3 = rgb(0, 0, 0),
                        Size = dim2(0, 0, 0, 14),
                        BorderSizePixel = 0,
                        BackgroundColor3 = rgb(255, 255, 255)
                    })

                    main_text = library:create("TextLabel", {
                        Parent = left_components,
                        FontFace = library.font,
                        TextColor3 = rgb(180, 180, 180),
                        BorderColor3 = rgb(0, 0, 0),
                        Text = cfg.name,
                        Name = "text",
                        BackgroundTransparency = 1,
                        Size = dim2(0, 0, 1, -1),
                        BorderSizePixel = 0,
                        AutomaticSize = Enum.AutomaticSize.X,
                        TextSize = 12,
                        BackgroundColor3 = rgb(255, 255, 255)
                    })
                    
                    library:create("UIStroke", {
                        Parent = main_text,
                        LineJoinMode = Enum.LineJoinMode.Miter
                    })
                    
                    library:create("UIListLayout", {
                        Parent = left_components,
                        Padding = dim(0, 5),
                        Name = "_",
                        FillDirection = Enum.FillDirection.Horizontal
                    })

                    local right_components = library:create("Frame", {
                        Parent = dropdown,
                        Name = "right_components",
                        Position = dim2(1, -1, 0, 1),
                        BorderColor3 = rgb(0, 0, 0),
                        Size = dim2(0, 0, 0, 12),
                        BorderSizePixel = 0,
                        BackgroundColor3 = rgb(255, 255, 255)
                    })
                    cfg["right_holder"] = right_components
        
                    local list = library:create("UIListLayout", {
                        Parent = right_components,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                        FillDirection = Enum.FillDirection.Horizontal,
                        HorizontalAlignment = Enum.HorizontalAlignment.Right,
                        Padding = dim(0, 4),
                        Name = "list",
                        SortOrder = Enum.SortOrder.LayoutOrder
                    })

                    self.previous_holder = left_components
                    self.right_holder = right_components
                end 

                local bottom_components = library:create("Frame", {
                    Parent = dropdown,
                    Name = "bottom_components",
                    Position = dim2(0, 0, 0, cfg.name and 15 or 0),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 26, 0, 0),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local dropdown = library:create("TextButton", {
                    Parent = bottom_components,
                    Name = "dropdown",
                    Position = dim2(0, 0, 0, 2),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -27, 1, 18),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38),
                    Text = "",
                    AutoButtonColor = false, 
                })library:apply_theme(dropdown, "outline", "BackgroundColor3") 
                
                local inline = library:create("Frame", {
                    Parent = dropdown,
                    Name = "inline",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })library:apply_theme(inline, "inline", "BackgroundColor3") 
                
                local background = library:create("Frame", {
                    Parent = inline,
                    Name = "background",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = themes.preset.accent
                })library:apply_theme(background, "accent", "BackgroundColor3") 
                
                local contrast = library:create("Frame", {
                    Parent = background,
                    Name = "contrast",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })

                local plus = library:create("TextLabel", {
                    Parent = contrast,
                    TextWrapped = true,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "+",
                    Name = "plus",
                    Size = dim2(1, -4, 1, 0),
                    Position = dim2(0, 0, 0, -1),
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Right,
                    FontFace = library.font,
                    TextTruncate = Enum.TextTruncate.AtEnd,
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                library:create("UIStroke", {
                    Parent = plus,
                    LineJoinMode = Enum.LineJoinMode.Miter
                })
                
                local text = library:create("TextLabel", {
                    Parent = contrast,
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "aa",
                    Name = "text",
                    Size = dim2(1, -4, 1, 0),
                    Position = dim2(0, 4, 0, -1),
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BorderSizePixel = 0,
                    TextTruncate = Enum.TextTruncate.AtEnd,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                library:create("UIStroke", {
                    Parent = text,
                    LineJoinMode = Enum.LineJoinMode.Miter
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = contrast,
                    Rotation = 90,
                    Color = rgbseq{
                        rgbkey(0, rgb(41, 41, 55)),
                        rgbkey(1, rgb(35, 35, 47))
                    }
                })library:apply_theme(UIGradient, "contrast", "Color") 
                
                local UIGradient = library:create("UIGradient", {
                    Parent = background,
                    Rotation = 90,
                    Color = rgbseq{
                        rgbkey(0, rgb(255, 255, 255)),
                        rgbkey(1, rgb(167, 167, 167))
                    }
                })library:apply_theme(UIGradient, "contrast", "Color") 
                
                library:create("UIListLayout", {
                    Parent = bottom_components,
                    Padding = dim(0, 10),
                    Name = "_",
                    SortOrder = Enum.SortOrder.LayoutOrder
                })     
            --

            -- dropdown holder
                local dropdown_holder = library:create("Frame", {
                    Parent = sgui,
                    BorderColor3 = rgb(0, 0, 0),
                    Name = "dropdown_holder",
                    BackgroundTransparency = 1,
                    Position = dim2(0, dropdown.AbsolutePosition.X + 1, 0, dropdown.AbsolutePosition.Y + 22),
                    Size = dim2(0, dropdown.AbsoluteSize.X, 0, cfg.scrolling and 180 or 0),
                    BorderSizePixel = 0,
                    AutomaticSize = cfg.scrolling and Enum.AutomaticSize.None or Enum.AutomaticSize.Y,
                    BackgroundColor3 = rgb(32, 32, 38),
                    Visible = false
                })
                
                local inline = library:create("Frame", {
                    Parent = dropdown_holder,
                    Size = dim2(1, -2, 1, 2),
                    Name = "inline",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    ZIndex = 2,
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })library:apply_theme(inline, "inline", "BackgroundColor3") 
                
                local background; 
                if not cfg.scrolling then 
                    background = library:create("Frame", {
                        Parent = inline,
                        BorderColor3 = rgb(0, 0, 0),
                        Name = "background",
                        BackgroundTransparency = 1,
                        Position = dim2(0, 1, 0, 1),
                        Size = dim2(1, -2, 1, 1),
                        ZIndex = 2,
                        BorderSizePixel = 0,
                        BackgroundColor3 = themes.preset.accent
                    })
                    library:apply_theme(background, "accent", "BackgroundColor3") 
                else 
                    background = library:create("ScrollingFrame", {
                        Parent = inline,
                        BorderColor3 = rgb(0, 0, 0),
                        Name = "background",
                        BackgroundTransparency = 1,
                        Position = dim2(0, 1, 0, 1),
                        Size = dim2(1, -2, 1, 1),
                        ZIndex = 2,
                        BorderSizePixel = 0,
                        BackgroundColor3 = themes.preset.accent,
                        CanvasSize = dim2(0, 0, 0, 0),
                        AutomaticCanvasSize = Enum.AutomaticSize.Y,
                        ScrollBarThickness = 2,
                        ScrollBarImageColor3 = themes.preset.accent
                    })
                    library:apply_theme(background, "accent", "BackgroundColor3") 
                end 
                
                local contrast = library:create("Frame", {
                    Parent = background,
                    Name = "contrast",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 1, -3),
                    BorderSizePixel = 0,
                    ZIndex = 2, 
                    BackgroundColor3 = rgb(255, 255, 255),
                    AutomaticSize = cfg.scrolling and Enum.AutomaticSize.Y or Enum.AutomaticSize.None,
                }); 

                library:create("UIPadding", {
                    Parent = contrast,
                    PaddingTop = dim(0, 2),
                    PaddingBottom = dim(0, 2),
                    PaddingRight = dim(0, 0),
                    PaddingLeft = dim(0, 4)
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = contrast,
                    Rotation = 90,
                    Color = rgbseq{
                        rgbkey(0, rgb(41, 41, 55)),
                        rgbkey(1, rgb(35, 35, 47))
                    }
                })library:apply_theme(UIGradient, "contrast", "Color") 
            
                library:create("UIListLayout", {
                    Parent = contrast,
                    Padding = dim(0, 5),
                    SortOrder = Enum.SortOrder.LayoutOrder
                })library:apply_theme(UIGradient, "contrast", "Color") 
                
                local UIGradient = library:create("UIGradient", {
                    Parent = background,
                    Rotation = 90,
                    Color = rgbseq{
                        rgbkey(0, rgb(255, 255, 255)),
                        rgbkey(1, rgb(167, 167, 167))
                    }
                })library:apply_theme(UIGradient, "contrast", "Color") 
                
                local stroke = library:create("UIStroke", {
                    Parent = inline,
                    Color = rgb(32, 32, 38),
                    LineJoinMode = Enum.LineJoinMode.Miter
                })library:apply_theme(stroke, "outline", "Color") 

                dropdown:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                    dropdown_holder.Size = dim2(0, dropdown.AbsoluteSize.X, 0, 0)
                end)

                dropdown:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
                    dropdown_holder.Position = dim2(0, dropdown.AbsolutePosition.X + 1, 0, dropdown.AbsolutePosition.Y + 22)
                end)
            -- 
            
            function cfg.set_visible(bool) 
                dropdown_holder.Visible = bool

                plus.Text = bool and "-" or "+"
                plus.TextSize = bool and 12 or 8

                if bool then 
                    if library.current_element_open and library.current_element_open ~= cfg then 
                        library.current_element_open.set_visible(false)
                        library.current_element_open.open = false 
                    end

                    library.current_element_open = cfg 
                end
            end

            function cfg.set(value) 
                local selected = {}

                local is_table = type(value) == "table"

                for _,v in next, cfg.option_instances do 
                    if v.Text == value or (is_table and table.find(value, v.Text)) then 
                        table.insert(selected, v.Text)
                        cfg.multi_items = selected
                        v.TextColor3 = themes.preset.accent
                    else 
                        v.TextColor3 = themes.preset.text
                    end

                end

                text.Text = is_table and table.concat(selected, ", ") or selected[1] or "nun"
                flags[cfg.flag] = is_table and selected or selected[1]
                cfg.callback(flags[cfg.flag]) 
            end

            function cfg:refresh_options(refreshed_list) 
                for _, v in next, cfg.option_instances do 
                    v:Destroy() 
                end

                cfg.option_instances = {} 

                for i,v in next, refreshed_list do 
                    local TextButton = library:create("TextButton", {
                        Parent = contrast,
                        FontFace = library.font,
                        TextColor3 = themes.preset.text,
                        BorderColor3 = rgb(0, 0, 0),
                        Size = dim2(1, 0, 0, 0),
                        BackgroundTransparency = 1,
                        BorderSizePixel = 0,
                        TextWrapped = true,
                        AutomaticSize = Enum.AutomaticSize.Y,
                        TextSize = 12,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        ZIndex = 2, 
                        Text = v,
                        BackgroundColor3 = rgb(255, 255, 255)
                    })library:apply_theme(TextButton, "accent", "TextColor3") 
                    
                    library:create("UIStroke", {
                        Parent = TextButton,
                        LineJoinMode = Enum.LineJoinMode.Miter
                    })

                    table.insert(cfg.option_instances, TextButton)

                    TextButton.MouseButton1Down:Connect(function()
                        if cfg.multi then 
                            local selected_index = table.find(cfg.multi_items, TextButton.Text)

                            if selected_index then 
                                table.remove(cfg.multi_items, selected_index)
                            else
                                table.insert(cfg.multi_items, TextButton.Text)
                            end

                            cfg.set(cfg.multi_items) 				
                        else 
                            cfg.set_visible(false)
                            cfg.open = false 

                            cfg.set(TextButton.Text)
                        end
                    end)
                end
            end

            dropdown.MouseButton1Click:Connect(function()
                cfg.open = not cfg.open 

                cfg.set_visible(cfg.open)
            end)

            cfg:refresh_options(cfg.items) 

            cfg.set(cfg.default)

            library.config_flags[cfg.flag] = cfg.set

            return self
        end 

        function library:list(options)
            local cfg = {
                callback = options and options.callback or function() end, 

                scale = options.size or 100, 
                items = options.items or {"1", "2", "3"}, 
                -- order = options.order or 1, 
                placeholdertext = options.placeholder or options.placeholdertext or "search here...",

                option_instances = {}, 
                current_instance = nil, 
                flag = options.flag or "SET A FLAG U NIGGER", 

                previous_holder = self
            } 

            local list_holder = library:create("TextLabel", {
                Parent = self.holder,
                Name = "",
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = "",
                ZIndex = 2,
                Size = dim2(1, -8, 0, 12),
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                AutomaticSize = Enum.AutomaticSize.Y,
                TextYAlignment = Enum.TextYAlignment.Top,
                TextSize = 11,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIPadding = library:create("UIPadding", {
                Parent = list_holder,
                Name = "",
                PaddingLeft = dim(0, 1)
            })
            
            local UIStroke = library:create("UIStroke", {
                Parent = list_holder,
                Name = ""
            })
            
            local bottom_components = library:create("Frame", {
                Parent = list_holder,
                Name = "",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 26, 0, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            library:create("UIListLayout", {
                Parent = bottom_components,
                Name = "",
                Padding = dim(0, 10),
                SortOrder = Enum.SortOrder.LayoutOrder
            })
            
            local list = library:create("Frame", {
                Parent = bottom_components,
                Name = "",
                Position = dim2(0, 0, 0, 2),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -27, 1, 232),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(32, 32, 38)
            })library:apply_theme(main_holder, "outline", "BackgroundColor3") 
            
            local inline = library:create("Frame", {
                Parent = list,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(60, 55, 75)
            })library:apply_theme(inline, "inline", "BackgroundColor3") 
            
            local background = library:create("Frame", {
                Parent = inline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent
            })library:apply_theme(background, "accent", "BackgroundColor3") 
            
            local UIGradient = library:create("UIGradient", {
                Parent = background,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
            })library:apply_theme(UIGradient, "contrast", "Color") 
            
            local contrast = library:create("Frame", {
                Parent = background,
                Name = "",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIGradient = library:create("UIGradient", {
                Parent = contrast,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                rgbkey(0, rgb(41, 41, 55)),
                rgbkey(1, rgb(35, 35, 47))
            }
            })library:apply_theme(UIGradient, "contrast", "Color") 
            
            local ScrollingFrame = library:create("ScrollingFrame", {
                Parent = contrast,
                Name = "",
                ScrollBarImageColor3 = themes.preset.accent,
                Active = true,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                ScrollBarThickness = 3,
                BackgroundTransparency = 1,
                Size = dim2(1, 0, 1, 0),
                BackgroundColor3 = rgb(255, 255, 255),
                BorderColor3 = rgb(0, 0, 0),
                BorderSizePixel = 0,
                CanvasSize = dim2(0, 0, 0, 0)
            })library:apply_theme(ScrollingFrame, "accent", "ScrollBarImageColor3") 
            
            local UIPadding = library:create("UIPadding", {
                Parent = ScrollingFrame,
                Name = "",
                PaddingBottom = dim(0, 4),
                PaddingTop = dim(0, 4)
            })
            
            local UIListLayout = library:create("UIListLayout", {
                Parent = ScrollingFrame,
                Name = "",
                Padding = dim(0, 4),
                SortOrder = Enum.SortOrder.LayoutOrder
            })

            function cfg.render_option(text) 
                local TextButton = library:create("TextButton", {
                    Parent = ScrollingFrame,
                    Name = "",
                    Text = tostring(text),
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    BackgroundTransparency = 1,
                    Size = dim2(1, 0, 0, 0),
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local UIStroke = library:create("UIStroke", {
                    Parent = TextButton,
                    Name = ""
                })

                return TextButton 
            end 

            function cfg.refresh_options(options) 
                if type(options) == "function" then return end 
                for _, v in next, cfg.option_instances do 
                    v:Destroy() 
                end 

                for _, option in next, options do 
                    local button = cfg.render_option(option) 

                    table.insert(cfg.option_instances, button)

                    button.MouseButton1Click:Connect(function()
                        if cfg.current_instance and cfg.current_instance ~= button then 
                            cfg.current_instance.TextColor3 = themes.preset.text 
                        end 

                        cfg.current_instance = button 
                        button.TextColor3 = themes.preset.accent 

                        flags[cfg.flag] = button.text
                        
                        cfg.callback(button.text)
                    end)
                end 
            end     

            function cfg.filter_options(text)
                for _, v in next, cfg.option_instances do 
                    if string.find(v.Text, text) then 
                        v.Visible = true 
                    else 
                        v.Visible = false
                    end
                end
            end 

            cfg.refresh_options(cfg.items) 
            
            return self, cfg
        end 

        function library:textbox(options)
            local cfg = {
                placeholder = options.placeholder or options.placeholdertext or options.holder or options.holdertext or "type here...",
                default = options.default,
                flag = options.flag or "SET ME NIGGA",
                callback = options.callback or function() end 
            }

            local textbox_holder = library:create("TextLabel", {
                Parent = self.holder,
                Name = "",
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = "",
                ZIndex = 2,
                Size = dim2(1, -8, 0, 12),
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                AutomaticSize = Enum.AutomaticSize.Y,
                TextYAlignment = Enum.TextYAlignment.Top,
                TextSize = 11,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            library:create("UIPadding", {
                Parent = textbox_holder,
                Name = "",
                PaddingLeft = dim(0, 1)
            })
            
            library:create("UIStroke", {
                Parent = textbox_holder,
                Name = ""
            })
            
            local button = library:create("Frame", {
                Parent = textbox_holder,
                Name = "",
                Position = dim2(0, 0, 0, 2),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -27, 0, 18),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(32, 32, 38)
            })
            
            library:apply_theme(button, "outline", "BackgroundColor3") 
            
            local inline = library:create("Frame", {
                Parent = button,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(60, 55, 75)
            })
            
            library:apply_theme(inline, "inline", "BackgroundColor3") 
            
            local background = library:create("Frame", {
                Parent = inline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent
            })
            
            library:apply_theme(background, "accent", "BackgroundColor3") 
            
            local TextBox = library:create("TextBox", {
                Parent = background,
                Name = "",
                CursorPosition = -1,
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                ZIndex = 2,
                Text = "", 
                Size = dim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextWrapped = true,
                BackgroundTransparency = 1,
                TextTruncate = Enum.TextTruncate.SplitWord,
                PlaceholderText = "Type here...",
                ClearTextOnFocus = false,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            library:create("UIStroke", {
                Parent = TextBox,
                Name = ""
            })
            
            local TextButton = library:create("TextButton", {
                Parent = background,
                Name = "",
                FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
                TextColor3 = rgb(0, 0, 0),
                BorderColor3 = rgb(0, 0, 0),
                Text = "",
                AutoButtonColor = false,
                Size = dim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextSize = 14,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIGradient = library:create("UIGradient", {
                Parent = TextButton,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                rgbkey(0, rgb(41, 41, 55)),
                rgbkey(1, rgb(35, 35, 47))
            }
            })
            
            library:apply_theme(UIGradient, "contrast", "Color") 
            
            library:create("UIListLayout", {
                Parent = textbox_holder,
                Name = "",
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalFlex = Enum.UIFlexAlignment.Fill,
                Padding = dim(0, 4),
                SortOrder = Enum.SortOrder.LayoutOrder
            })
            
            TextBox:GetPropertyChangedSignal("Text"):Connect(function()
                flags[cfg.flag] = TextBox.text
                cfg.callback(TextBox.text)
            end)

            function cfg.set(text) 
                flags[cfg.flag] = text
                TextBox.Text = text
                cfg.callback(text)
            end 

            if cfg.default then 
                cfg.set(cfg.default) 
            end 

            library.config_flags[cfg.flag] = cfg.set

            return self 
        end 

        function library:button_holder(options) 
            local button_holder = library:create("TextLabel", {
                Parent = self.holder,
                Name = "",
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = "",
                ZIndex = 2,
                Size = dim2(1, -8, 0, 12),
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                AutomaticSize = Enum.AutomaticSize.Y,
                TextYAlignment = Enum.TextYAlignment.Top,
                TextSize = 11,
                BackgroundColor3 = rgb(255, 255, 255), 
            })

            self.current_holder = button_holder
            
            library:create("UIStroke", {
                Parent = button_holder,
                Name = ""
            })
            
            library:create("UIListLayout", {
                Parent = button_holder,
                Name = "",
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalFlex = Enum.UIFlexAlignment.Fill,
                Padding = dim(0, 4),
                SortOrder = Enum.SortOrder.LayoutOrder
            })
        
            return self
        end 

        function library:button(options)
            local cfg = {
                callback = options.callback or function() end, 
                name = options.text or options.name or "Button",
            }   

            local button = library:create("TextButton", {
                Parent = self.current_holder,
                Name = "",
                Position = dim2(0, 0, 0, 2),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -27, 0, 18),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(32, 32, 38),
                Text = ""
            })
            
            library:apply_theme(button, "outline", "BackgroundColor3") 
            
            local inline = library:create("Frame", {
                Parent = button,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(60, 55, 75)
            })
            
            library:apply_theme(inline, "inline", "BackgroundColor3") 
            
            local background = library:create("Frame", {
                Parent = inline,
                Name = "",
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent
            })
            
            library:apply_theme(background, "accent", "BackgroundColor3") 
            
            local _UIGradient = library:create("UIGradient", {
                Parent = background,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
            })
            
            library:apply_theme(_UIGradient, "contrast", "Color") 
            
            local contrast = library:create("Frame", {
                Parent = background,
                Name = "",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIGradient = library:create("UIGradient", {
                Parent = contrast,
                Name = "",
                Rotation = 90,
                Color = rgbseq{
                rgbkey(0, rgb(41, 41, 55)),
                rgbkey(1, rgb(35, 35, 47))
            }
            })
            
            library:apply_theme(UIGradient, "contrast", "Color") 
            
            local text = library:create("TextLabel", {
                Parent = contrast,
                Name = "",
                TextWrapped = true,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = cfg.name,
                Size = dim2(1, -4, 1, 0),
                Position = dim2(0, 4, 0, -1),
                BackgroundTransparency = 1,
                TextTruncate = Enum.TextTruncate.AtEnd,
                BorderSizePixel = 0,
                FontFace = library.font,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIStroke = library:create("UIStroke", {
                Parent = text,
                Name = "",
                LineJoinMode = Enum.LineJoinMode.Miter
            })

            button.MouseButton1Click:Connect(function()
                cfg.callback() 
            end)

            return self
        end 

        function library:label(options)
            local cfg = {name = options.text or options.name or "Label", previous_holder = self}

            local dropdown = library:create("TextLabel", {
                Parent = self.holder,
                Name = "",
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = "",
                ZIndex = 2,
                Size = dim2(1, -8, 0, 12),
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                AutomaticSize = Enum.AutomaticSize.Y,
                TextYAlignment = Enum.TextYAlignment.Top,
                TextSize = 11,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIStroke = library:create("UIStroke", {
                Parent = dropdown,
                Name = ""
            })
            
            local left_components = library:create("Frame", {
                Parent = dropdown,
                Name = "",
                BackgroundTransparency = 1,
                Position = dim2(0, 2, 0, -1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(0, 0, 0, 14),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local TextLabel = library:create("TextLabel", {
                Parent = left_components,
                Name = "",
                FontFace = library.font,
                TextColor3 = rgb(180, 180, 180),
                BorderColor3 = rgb(0, 0, 0),
                Text = cfg.name,
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.Y,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            })

            local right_components = library:create("Frame", {
                Parent = dropdown,
                Name = "right_components",
                Position = dim2(1, -1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(0, 0, 0, 12),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })

            local list = library:create("UIListLayout", {
                Parent = right_components,
                VerticalAlignment = Enum.VerticalAlignment.Center,
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalAlignment = Enum.HorizontalAlignment.Right,
                Padding = dim(0, 4),
                Name = "list",
                SortOrder = Enum.SortOrder.LayoutOrder
            })
            
            local UIStroke = library:create("UIStroke", {
                Parent = TextLabel,
                Name = ""
            })

            function cfg.change_text(text) 
                TextLabel.Text = text 
            end 

            self.previous_holder = left_components
            self.right_holder = right_components
            
            return self, cfg       
        end 

        function library:playerlist(options) 
            local cfg = {
                players = {}, 
                callback = options.callback or function() end, 
                selected_player, 

                labels = {
                    name,
                    display, 
                    uid, 
                }
            }

            local patterns = {
                ["Priority"] = Color3.fromRGB(255, 255, 0),
                ["Enemy"] = Color3.fromRGB(255, 0, 0),
                ["Neutral"] = themes.preset.text,
                ["Friendly"] = Color3.fromRGB(0, 255, 255)
            }

            -- elements 
                local playerlist_holder = library:create("TextLabel", {
                    Parent = self.holder,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "",
                    ZIndex = 2,
                    Size = dim2(1, -8, 0, 12),
                    BorderSizePixel = 0,
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextYAlignment = Enum.TextYAlignment.Top,
                    TextSize = 11,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local UIPadding = library:create("UIPadding", {
                    Parent = playerlist_holder,
                    Name = "",
                    PaddingBottom = dim(0, -2),
                    PaddingLeft = dim(0, 1)
                })
                
                local UIStroke = library:create("UIStroke", {
                    Parent = playerlist_holder,
                    Name = ""
                })
                
                local bottom_components = library:create("Frame", {
                    Parent = playerlist_holder,
                    Name = "",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 26, 0, 0),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                library:create("UIListLayout", {
                    Parent = bottom_components,
                    Name = "",
                    Padding = dim(0, 10),
                    SortOrder = Enum.SortOrder.LayoutOrder
                })
                
                local list = library:create("Frame", {
                    Parent = bottom_components,
                    Name = "",
                    Position = dim2(0, 0, 0, 2),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -27, 1, 232),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(list, "outline", "BackgroundColor3") 
                
                local inline = library:create("Frame", {
                    Parent = list,
                    Name = "",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(60, 55, 75)
                })library:apply_theme(inline, "inline", "BackgroundColor3") 
                
                local background = library:create("Frame", {
                    Parent = inline,
                    Name = "",
                    Position = dim2(0, 1, 0, 1),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, -2, 1, -2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = themes.preset.accent
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = background,
                    Name = "",
                    Rotation = 90,
                    Color = rgbseq{
                    rgbkey(0, rgb(255, 255, 255)),
                    rgbkey(1, rgb(167, 167, 167))
                }
                })library:apply_theme(UIGradient, "contrast", "Color") 
                
                local contrast = library:create("Frame", {
                    Parent = background,
                    Name = "",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local UIGradient = library:create("UIGradient", {
                    Parent = contrast,
                    Name = "",
                    Rotation = 90,
                    Color = rgbseq{
                    rgbkey(0, rgb(41, 41, 55)),
                    rgbkey(1, rgb(35, 35, 47))
                }
                })library:apply_theme(UIGradient, "contrast", "Color") 
                
                local ScrollingFrame = library:create("ScrollingFrame", {
                    Parent = contrast,
                    Name = "",
                    ScrollBarImageColor3 = themes.preset.accent,
                    Active = true,
                    AutomaticCanvasSize = Enum.AutomaticSize.Y,
                    ScrollBarThickness = 3,
                    BackgroundTransparency = 1,
                    Size = dim2(1, 0, 1, 0),
                    BackgroundColor3 = rgb(255, 255, 255),
                    BorderColor3 = rgb(0, 0, 0),
                    BorderSizePixel = 0,
                    CanvasSize = dim2(0, 0, 0, 0)
                })library:apply_theme(ScrollingFrame, "accent", "ScrollBarImageColor3") 
                
                local UIPadding = library:create("UIPadding", {
                    Parent = ScrollingFrame,
                    Name = "",
                    PaddingTop = dim(0, 4),
                    PaddingBottom = dim(0, 4),
                    PaddingRight = dim(0, 4),
                    PaddingLeft = dim(0, 4)
                })
                
                local UIListLayout = library:create("UIListLayout", {
                    Parent = ScrollingFrame,
                    Name = "",
                    Padding = dim(0, 4),
                    SortOrder = Enum.SortOrder.LayoutOrder
                })
            -- 

            function cfg.create_player(player) 
                cfg.players[tostring(player)] = {}
                local path = cfg.players[tostring(player)]
                
                local TextButton = library:create("TextButton", {
                    Parent = ScrollingFrame,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "",
                    BackgroundTransparency = 1,
                    Size = dim2(1, 0, 0, 0),
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })

                path.instance = TextButton

                local player_name = library:create("TextLabel", {
                    Parent = TextButton,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = tostring(player),
                    BorderSizePixel = 0,
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextTruncate = Enum.TextTruncate.AtEnd,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                library:apply_theme(player_name, "text", "TextColor3") 
                library:apply_theme(player_name, "accent", "TextColor3") 
                                
                local TextLabel = library:create("TextLabel", {
                    Parent = TextButton,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = tostring(players[tostring(player)].Team) or "None",
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                                
                local Frame = library:create("Frame", {
                    Parent = TextLabel,
                    Name = "",
                    Position = dim2(0, -10, 0, 0),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 1, 0, 12),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(main_holder, "outline", "BackgroundColor3") 
                
                local priority_text = library:create("TextLabel", {
                    Parent = TextButton,
                    Name = "",
                    FontFace = library.font,
                    TextColor3 = rgb(180, 180, 180),
                    BorderColor3 = rgb(0, 0, 0),
                    Text = "Neutral",
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextSize = 12,
                    BackgroundColor3 = rgb(255, 255, 255)
                })
                
                local Frame = library:create("Frame", {
                    Parent = priority_text,
                    Name = "",
                    Position = dim2(0, -10, 0, 0),
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(0, 1, 0, 12),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(main_holder, "outline", "BackgroundColor3") 
                
                local UIListLayout = library:create("UIListLayout", {
                    Parent = TextButton,
                    Name = "",
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalFlex = Enum.UIFlexAlignment.Fill,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    VerticalFlex = Enum.UIFlexAlignment.Fill
                })
                
                local UIPadding = library:create("UIPadding", {
                    Parent = TextButton,
                    Name = "",
                    PaddingRight = dim(0, 2),
                    PaddingLeft = dim(0, 2)
                })

                local line = library:create("Frame", {
                    Parent = ScrollingFrame,
                    Name = "",
                    BorderColor3 = rgb(0, 0, 0),
                    Size = dim2(1, 0, 0, 1),
                    BorderSizePixel = 0,
                    BackgroundColor3 = rgb(32, 32, 38)
                })library:apply_theme(main_holder, "outline", "BackgroundColor3") 

                path.line = line

                function path.set_priority(text) 
                    priority_text.Text = text
                    priority_text.TextColor3 = patterns[text]
                end 

                TextButton.MouseButton1Click:Connect(function()
                    if cfg.selected_player then 
                        cfg.selected_player.TextColor3 = themes.preset.text 
                    end     

                    cfg.selected_player = player_name 
                    player_name.TextColor3 = themes.preset.accent 

                    cfg.callback(players[tostring(player)]) 

                    if cfg.labels.name then 
                        cfg.labels.name.change_text("User: " .. tostring(player))
                        cfg.labels.display.change_text("DisplayName: " .. players[tostring(player)].DisplayName)
                        cfg.labels.uid.change_text("User Id: " .. players[tostring(player)].UserId)
                    end     
                end)

                return path 
            end 

            function cfg.remove_player(player) 
                cfg.players[tostring(player)].instance:Destroy() 
                cfg.players[tostring(player)].line:Destroy() 
                cfg.players[tostring(player)] = nil 
            end 

            players.PlayerAdded:Connect(cfg.create_player)
            players.PlayerRemoving:Connect(cfg.remove_player)
            
            for _, player in next, players:GetPlayers() do 
                local player_object = cfg.create_player(player.Name)
                table.insert(cfg.players, player_object)
            end 

            _, cfg.labels.name = self:label({name = "Name: ??"})
            _, cfg.labels.display = self:label({name = "Display Name: ??"})
            _, cfg.labels.uid = self:label({name = "User Id: ??"})

            return self
        end 
    -- 
-- 

-- functions
    -- utility
        -- utility / init
            -- raycast parameters 
            local raycast_parameters = RaycastParams.new()
            raycast_parameters.FilterType = Enum.RaycastFilterType.Exclude
            raycast_parameters.IgnoreWater = true
        -- 

        -- instances 
            local snapline = library:new_drawing("Line", {
                Thickness = 1,
                Visible = false, 
                Color = rgb(255, 0, 0),
                ZIndex = 9999
            })

            -- local snapline_outline = library:new_drawing("Line", {
            --     Thickness = 3, 
            --     Visible = false,
            --     Color = rgb(0, 0, 0)
            -- })

            local bounding_box = library:new_item("SelectionBox", {
                LineThickness = 0.015,
                Parent = coregui
            })     
            
            local bounding_box_fill = library:new_item("Part", {
                Name = "\0", 
                Anchored = true, 
                Position = vec3(9e9, 9e9, 9e9),
                Parent = ws, 
                Color = rgb(255, 255, 255), 
                Transparency = 0,
                CanCollide = false,
                Material = Enum.Material.Neon
            })

            local hit_cham_parent = library:new_item("Model", {
                Name = "\0", 
                Parent = ws 
            })  
            
            local hit_cham_humanoid = library:new_item("Humanoid", {
                Name = "\0", 
                Parent = hit_cham_parent
            })  

            local hit_cham_highlight = library:new_item("Highlight", {
                Enabled = true,
                Parent = coregui,
                DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
                FillColor = rgb(0,0,0),
                OutlineColor = rgb(255, 255, 255),
                OutlineTransparency = 0.5,
                FillTransparency = 1,
                Adornee = hit_cham_parent
            })

            local bloom_parent = lighting:FindFirstChildOfClass("BloomEffect")

            local atmosphere_parent = library:new_item("Atmosphere", {
                Parent = coregui
            })

            -- sound init 
                local sounds = {
                    "1nn.mp3",
                    "AmongUs.mp3",
                    "Bameware.mp3",
                    "BatHit.mp3",
                    "Beep.mp3",
                    "Bonk.mp3",
                    "Bow.mp3",
                    "Bubble.mp3",
                    "Bubble2.mp3",
                    "CSGO.mp3",
                    "Cod.mp3",
                    "Fairy1.mp3",
                    "Fairy2.mp3",
                    "Fatality.mp3",
                    "Fatality2.mp3",
                    "Hentai1.mp3",
                    "Hentai2.mp3",
                    "Hentai3.mp3",
                    "Lazer.mp3",
                    "MarioCoins.mp3",
                    "MinecraftXP.mp3",
                    "Neverlose.mp3",
                    "OSU.mp3",
                    "PubgPan.mp3",
                    "Rifk7.mp3",
                    "RustHeadshot.mp3",
                    "Skeet.mp3",
                    "SpanishMoan.mp3",
                    "StaryKrow.mp3",
                    "Steve.mp3",
                    "TF2Crit.mp3",
                    "TF2Default.mp3",
                    "Windows.mp3",
                    "boolean.ogg",
                    "disable.ogg",
                    "enable.ogg",
                    "keypress.ogg",
                    "keyrelease.ogg",
                    "lobby.mp3",
                    "moan1.ogg",
                    "moan2.ogg",
                    "moan3.ogg",
                    "moan4.ogg",
                    "orthodox.ogg",
                    "pmsound.ogg",
                    "rifk.ogg",
                    "scroll.ogg",
                    "skeet.ogg",
                    "swipein.ogg",
                    "swipeout.ogg",
                    "uwu.ogg"
                }

                local current_sounds = {}

                local hit_sound_item = library:new_item("Sound", {
                    Name = "\0",
                    Parent = sound_service,
                    Volume = 1,
                })
    
                local hit_sound_pitch = library:new_item("PitchShiftSoundEffect", {
                    Name = "\0",
                    Parent = hit_sound_item,
                    Octave = 1, 
                })

                local files = listfiles(library.directory .. "/sounds")
                
                if #files == 0 then 
                    for _, sound in next, sounds do 
                        writefile(library.directory .. "/sounds/" .. sound, game:HttpGet("https://github.com/f1nobe7650/Nebula/raw/refs/heads/main/Sounds/" .. sound))
                        print("Downloaded index: ".. _ .. " name: " .. sound)
                    end     
                    
                    repeat task.wait() until #files < 51; 
                end     
            -- 
        -- 

        local utility = {
            seperators = {
                Head = {"Head"},
                Torso = {"UpperTorso", "LowerTorso"},
                Legs = {"LeftUpperLeg", "LeftLowerLeg", "RightUpperLeg", "RightLowerLeg"},          
                Feet = {"RightFoot", "LeftFoot"},
                Arms = {"LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand"},
                Hrp = {"HumanoidRootPart"}
            },
            textures = {
                ["Web"] = "rbxassetid://301464986",
                ["Swirl"] = "rbxassetid://8133639623",
                ["Checkers"] = "rbxassetid://5790215150",
                ["CandyCane"] = "rbxassetid://6853532738",
                ["Dots"] = "rbxassetid://5830615971",
                ["Scanning"] = "rbxassetid://5843010904",
                ["Bubbles"] = "rbxassetid://1461576423",
                ["Normal"] = "rbxassetid://4494641460",
                ["Shield"] = "rbxassetid://361073795",
                ["Water"] = "rbxasset://textures/water/normal_21.dds",
                ["None"] = ""
            },
            radians = 0,
            delta = nil
        } 

        utility.validate_client = LPH_NO_VIRTUALIZE(function(player) 
            local _player = player or client

            local object = _player.Character
            local humanoid = (object and object:FindFirstChild("Humanoid"))
            local rootpart = (humanoid and humanoid.RootPart)

            return object, humanoid, rootpart
        end)

        utility.apply_properties = LPH_NO_VIRTUALIZE(function(instance, properties) 
            for property, value in pairs(properties) do
				instance[property] = value;
			end
        end) 

        utility.to_screen_point = LPH_NO_VIRTUALIZE(function(position) 
            return camera:WorldToViewportPoint(position)
        end) 	

        utility.simplify_parts = LPH_NO_VIRTUALIZE(function(parts_table)
            local parts = {}
            
            for _, name in next, parts_table do
                local separator = utility.seperators[name]

                for _, part in next, separator do
                    table.insert(parts, part)
                end
            end
            
            return parts
        end)

        utility.get_closest_part = LPH_NO_VIRTUALIZE(function(player, list) 
            local distance = math.huge
            local closest_part 

            for index, body_part in next, player.Character:GetChildren() do
                if body_part:IsA("BasePart") then 
                    local screen_pos = utility.to_screen_point(body_part.Position)
                    local magnitude = (vec2(screen_pos.X, screen_pos.Y) - vec2(mouse.X, mouse.Y + gui_offset)).magnitude

                    if magnitude < distance and table.find(list, body_part.Name) then
                        closest_part = body_part
                        distance = magnitude
                    end
                end
            end 

            return closest_part
        end)

        utility.recalculate_velocity = LPH_NO_VIRTUALIZE(function(before, after, time) 
            return (after - before ) / time 	 
        end) 

        utility.get_tool_handle = LPH_NO_VIRTUALIZE(function() 
            local tool = lp.Character:FindFirstChildWhichIsA("Tool") 

            if tool and tool:FindFirstChild("Handle") then 
                return tool.Handle 
            end 

            return nil 
        end) 

        utility.is_knocked = LPH_NO_VIRTUALIZE(function(player) 
            return player.Character.BodyEffects["K.O"].Value
        end) 

        utility.is_friend = LPH_NO_VIRTUALIZE(function(player) 
            return lp:IsFriendsWith(player.UserId)
        end) 

        utility.is_godded = LPH_NO_VIRTUALIZE(function(player)
            return player.Character:FindFirstChild("ForceField")
        end) 

        utility.is_visible = LPH_NO_VIRTUALIZE(function(position)
            local origin = utility.get_tool_handle() or lp.Character.HumanoidRootPart

            raycast_parameters.FilterDescendantsInstances = {ws:FindFirstChild("Ignored"), ws:FindFirstChild("Players"), ws.CurrentCamera, lp.Character}

            local direction = position - origin.Position
            local distance = direction.Magnitude
            direction = direction.Unit * distance

            local _result = ws:Raycast(origin.Position, direction, raycast_parameters)
            
            return (not _result)
        end) 

        utility.properties_apply = LPH_NO_VIRTUALIZE(function(instance, properties)
            for property, value in pairs(properties) do
                instance[property] = value
            end
        end)

        utility.clone_character = LPH_NO_VIRTUALIZE(function(player, parent, properties)
            local character = player.Character
            character.Archivable = true

            local model = character:Clone()
            table.insert(nebula.instances, model)
            utility.properties_apply(model, {Parent = parent})

            for _, part in next, model:GetDescendants() do
                if (part.Name == "CUFF" or part.Name == "HumanoidRootPart") then 
                    part.Parent = nil 
                end

                if (part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("Part") and part.Name ~= "HumanoidRootPart") then
                    utility.properties_apply(part, {
                        Color = properties and properties.Color or color(0.627451, 0.12549, 1),
                        Transparency = properties and properties.Transparency or 0.7,
                        CanCollide = false,
                        Anchored = true,
                        Material = properties and properties.Material or Enum.Material.Neon
                    })
                else
                    part:Destroy()
                end			 
            end

            local humanoid = library:new_item("Humanoid", {
                Parent = model
            })   

            local highlight = library:new_item("Highlight", {
                Enabled = true,
                Parent = coregui,
                DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
                FillColor = rgb(0,0,0),
                OutlineColor = rgb(255, 255, 255),
                OutlineTransparency = 0.5 ,
                FillTransparency = 0,
                Adornee = model
            }) 

            model.Name = "      "

            return model, highlight
        end)

        utility.lerp = LPH_NO_VIRTUALIZE(function(start, finish, t)
            t = t or 1 / 8

            return start * (1 - t) + finish * t
        end)

        utility.is_nan = LPH_NO_VIRTUALIZE(function(value)
            return value ~= value 
        end) 
    -- 

    -- legit 
        -- target selector 
        local target_selection = nebula.target_selection
        local target = nebula.target_selection.player

        target_selection.update_target = LPH_NO_VIRTUALIZE(function(distance)
            local _distance = distance
        
            for index, player in next, players:GetPlayers() do
                if player ~= lp then
                    local object, humanoid, rootpart = utility.validate_client(player)
        
                    if object and humanoid and rootpart then 
                        local screen_position, on_screen = utility.to_screen_point(rootpart.Position)
                        local magnitude = (Vector2.new(screen_position.X, screen_position.Y) - Vector2.new(mouse.X, mouse.Y + gui_offset)).magnitude
        
                        if magnitude < _distance and on_screen then
                            _distance = magnitude
                            target = player
                        end
                    end
                end
            end
        end)
        
        target_selection.update_checks = function() 
            if #flags["target_selected_checks"] == 0 then 
                target_selection.pass = true 
            else 
                local spawned_in = table.find(flags["target_selected_checks"], "forcefield") and utility.is_godded(target) or false 
                local visible = table.find(flags["target_selected_checks"], "visible") and not utility.is_visible(target.Character.Humanoid.RootPart.Position) or false
                local knocked = table.find(flags["target_selected_checks"], "knocked") and utility.is_knocked(target) or false

                if (knocked == true or visible == true or spawned_in == true) then 
                    target_selection.pass = false 
                else 
                    target_selection.pass = true 
                end
            end
        end
    -- 

    -- aim assist
        local aim_assist = nebula.legit.aim_assist

        aim_assist.lerp_camera = LPH_NO_VIRTUALIZE(function(position, smoothing) 
            camera.CFrame = camera.CFrame:Lerp(cfr(camera.CFrame.p, position), (100 - smoothing) / 100)
        end)
        
        aim_assist.lerp_mouse = LPH_NO_VIRTUALIZE(function(position, smoothing)
            mousemoverel(vec2(position.X - mouse.X, position.Y - mouse.Y).X / (smoothing + 1), vec2(position.X - mouse.X, position.Y - mouse.Y).Y / (smoothing + 1))
        end)

        aim_assist.calculate_prediction = function() 
            if flags["aim_assist_auto_prediction"] then 
                local pingvalue = stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
                local split = string.split(pingvalue,'(')
                local ping = tonumber(split[1])
                aim_assist.prediction = ping / flags["aim_assist_ping_factor"]
            else 
                aim_assist.prediction = flags["aim_assist_prediction"] or 0 
            end 
        end	

        aim_assist.calculate_velocity = LPH_NO_VIRTUALIZE(function(delta) 
            if flags["aim_assist_velocity_type"] ==  "Velocity" then 
                aim_assist.velocity = aim_assist.hitpart.AssemblyLinearVelocity
            else 
                if (aim_assist.previous_position == nil) then
                    aim_assist.previous_position = target.Character.HumanoidRootPart.Position
                end

                if aim_assist.previous_position == nil then return end 

                aim_assist.velocity = utility.recalculate_velocity(aim_assist.previous_position, target.Character.HumanoidRootPart.Position, delta) 

                aim_assist.previous_position = target.Character.HumanoidRootPart.Position
            end
        end)

        aim_assist.calculate_destination = LPH_NO_VIRTUALIZE(function() 
            local humanoid = target.Character.Humanoid 
            
            aim_assist.state = humanoid:GetState() 

            if aim_assist.state == Enum.HumanoidStateType.Freefall then 
                aim_assist.offset = flags["adjust_for_jumping"]

                local selected_parts = utility.simplify_parts(flags["aim_assist_air_bone"])
                aim_assist.airpart = utility.get_closest_part(target, selected_parts)

                aim_assist.destination = aim_assist.airpart.Position + vec3(0, aim_assist.offset, 0)
            else 
                aim_assist.offset = 0

                local selected_parts = utility.simplify_parts(flags["aim_assist_bone"])
                aim_assist.hitpart = utility.get_closest_part(target, selected_parts)

                aim_assist.destination = aim_assist.hitpart.Position + vec3(0, aim_assist.offset, 0)
            end  
        end)
    -- 

    -- silent aim 
        local silent_aim = nebula.legit.silent_aim

        silent_aim.calculate_prediction = LPH_NO_VIRTUALIZE(function() 
            if flags["silent_use_auto_prediction"] then 
                local ping = stats.PerformanceStats.Ping:GetValue()
                silent_aim.prediction = ping / flags["silent_ping_factor"]
            else 
                silent_aim.prediction = flags["silent_manual_prediction"] or 0
            end 
        end)	

        silent_aim.calculate_velocity = LPH_NO_VIRTUALIZE(function(delta) 
            if flags["silent_aim_velocity_type"] == "Velocity" then 
                silent_aim.velocity = silent_aim.hitpart.AssemblyLinearVelocity
            else 
                if (silent_aim.previous_position == nil) then
                    silent_aim.previous_position = target.Character.HumanoidRootPart.Position
                end

                if silent_aim.previous_position == nil then return end 

                silent_aim.velocity = utility.recalculate_velocity(silent_aim.previous_position, target.Character.HumanoidRootPart.Position, delta) 

                silent_aim.previous_position = target.Character.HumanoidRootPart.Position
            end
        end)

        silent_aim.calculate_destination = LPH_NO_VIRTUALIZE(function() 
            if silent_aim.state == Enum.HumanoidStateType.Freefall then 
                silent_aim.offset = 0 --flags["silent_aim_offset"]
                silent_aim.destination = silent_aim.airpart.Position + vec3(0, silent_aim.offset, 0)
            else 
                silent_aim.offset = 0
                silent_aim.destination = silent_aim.hitpart.Position + vec3(0, silent_aim.offset, 0)
            end  
        end)

        silent_aim.calculate_part = LPH_NO_VIRTUALIZE(function() 
            local humanoid = target.Character and target.Character.Humanoid 
            
            if humanoid then 
                silent_aim.state = humanoid:GetState() 

                if silent_aim.state == Enum.HumanoidStateType.Freefall then 
                    local selected_parts = utility.simplify_parts(flags["silent_aim_air_bone"])
                    silent_aim.airpart = utility.get_closest_part(target, selected_parts)
                else 
                    local selected_parts = utility.simplify_parts(flags["silent_aim_bone"])
                    silent_aim.hitpart = utility.get_closest_part(target, selected_parts)
                end 
            end 
        end)

        silent_aim.update_box_fill = LPH_NO_VIRTUALIZE(function(char) 
            local orientation, boundary = char:GetBoundingBox()
            
            bounding_box_fill.Size = boundary 
            bounding_box_fill.CFrame = orientation
        end) 

        target_selection.think = LPH_NO_VIRTUALIZE(function() 
            if target == nil then 
                local char = lp.Character 

                snapline.Visible = false
                bounding_box.Adornee = nil

                if char then 
                    if char.Humanoid.AutoRotate == false then 
                        char.Humanoid.AutoRotate = true 
                    end 
                    
                    if camera.CameraSubject ~= char.Humanoid then 
                        camera.CameraSubject = char.Humanoid
                    end 
                end 

                return 
            end 

            local character, humanoid, rootpart = utility.validate_client(target)

            if flags["target_selected"] and flags["target_selected_bind"].active then 
                if (os.clock() - target_selection.time >= flags["target_selector_refresh_time"]/1000) then 
                    target_selection.time = os.clock()

                    if flags["auto_select"] == true then 
                        local distance = flags["target_selector_fov"] == 100 and math.huge or flags["target_selector_fov"]
                        target_selection.update_target(distance)
                    end
                    
                    if target and target.Character then 
                        target_selection.update_checks()
                    end 
                end 
            end

            if target and target.Character and target_selection.pass then
                -- aim assist
                    if flags["aim_assist"] then	
                        aim_assist.calculate_destination() -- calculates a destination, offset and a part to target
                        
                        aim_assist.calculate_prediction() -- calculates prediction to mutliply with velocity

                        aim_assist.calculate_velocity(nebula.delta) -- velocity is calculated to be mutlplied by prediction and added to destination
                        
                        if aim_assist.destination then 
                            aim_assist.screenpoint_position, aim_assist.on_screen = utility.to_screen_point(aim_assist.destination)

                            local magnitude = (vec2(aim_assist.screenpoint_position.X, aim_assist.screenpoint_position.Y) - vec2(mouse.X, mouse.Y + gui_offset)).magnitude
                            local distance = flags["target_selector_fov"] == 100 and math.huge or flags["target_selector_fov"]

                            if (magnitude < distance) and aim_assist.velocity and aim_assist.prediction then 
                                aim_assist.lerp_camera(aim_assist.destination + (aim_assist.velocity * aim_assist.prediction), flags["smoothing_factor"])
                            end
                        end
                    end
                -- 
                
                -- silent aim 
                    if flags["silent_aim"] then 				
                        silent_aim.calculate_part()
                        silent_aim.calculate_prediction() -- calculates prediction to mutliply with velocity
                    end 
                -- 
                    
                -- other 
                    if flags["look_at"] then 
                        lp.Character.Humanoid.AutoRotate = false
                        local local_root = lp.Character.HumanoidRootPart
                        local root = target.Character.HumanoidRootPart
                        local_root.CFrame = cfr(local_root.Position, vec3(root.Position.X, local_root.Position.Y, root.Position.Z)) 
                    end 

                    if flags["spectate"] then 
                        camera.CameraSubject = target.Character.Humanoid 
                    end

                    if flags["target_bounding_box"] then 
                        bounding_box.Adornee = target.Character

                        if flags["target_bounding_box_fill"] then 
                            silent_aim.update_box_fill(character) 
                        end 
                    end

                    local on_screen_position, on_screen =  utility.to_screen_point(target.Character.HumanoidRootPart.Position)

                    if flags["snap_line"] then 
                        -- snapline_outline.Visible = on_screen and true or false 
                        -- snapline_outline.From = snapline.From 
                        -- snapline_outline.To = snapline.To 

                        snapline.Visible = on_screen and true or false 
                        snapline.From = vec2(mouse.X, mouse.Y + gui_offset)
                        snapline.To = vec2(on_screen_position.X, on_screen_position.Y)
                    else 
                        snapline.Visible = false 
                    end
                -- 
            end
        end) 
    -- 

    -- rage
        -- hrp spoofer 
            local desync = nebula.rage.spoofer 
            desync.clone, desync.cham = utility.clone_character(lp, ws, {}) 
            
            desync.is_enabled = LPH_NO_VIRTUALIZE(function() 
                return desync.main_enabled 
            end)

            desync.is_dc = LPH_NO_VIRTUALIZE(function() 
                return desync.dc_enabled 
            end)

            desync.calculate_position = function(origin, position, rotation) 
                local time = time()

                local x = flags["custom_x_enabled"] and flags["custom_x"] or 0
                local y = flags["custom_y_enabled"] and flags["custom_y"] or 0
                local z = flags["custom_z_enabled"] and flags["custom_z"] or 0

                if x > 0 then 
                    if flags["custom_x_type"] == "Random" then 
                        x = random(-flags["custom_x"], flags["custom_x"])
                    elseif flags["custom_x_type"] == "Lerp" then 
                        x = noise(time * flags["custom_x_lerp_speed"], 0, 0) * flags["custom_x"]
                    end
                end

                if y > 0 then 
                    if flags["custom_y_type"] == "Random" then 
                        y = random(-flags["custom_y"], flags["custom_y"])
                    elseif flags["custom_y_type"] == "Lerp" then 
                        y = noise(0, time * flags["custom_y_lerp_speed"], 0) * flags["custom_y"] 
                    end
                end 
                
                if z > 0 then 
                    if flags["custom_z_type"] == "Random" then 
                        z = random(-flags["custom_z"], flags["custom_z"])
                    elseif flags["custom_z_type"] == "Lerp" then 
                        z = noise(0, time * flags["custom_z_lerp_speed"], 0) * flags["custom_z"] 
                    end
                end 

                local rotations = {
                    ["None"] = angle(0, 0, 0),
                    ["Back"] = angle(0, rad(180), 0),
                    ["Right"] = angle(0, rad(-90), 0),
                    ["Left"] = angle(0, rad(90), 0),
                    ["Lay"] = angle(rad(90), 0, 0),
                    ["Shinji"] = angle(rad(180), rad(180), 0),
                    ["Jitter"] = angle(0, rad(random(1,2) == 2 and 30 or 90), 0),
                    ["Spin"] = angle(0, rad(nebula.radians), 0),
                    ["Random"] = angle(random(-180, 180), random(-180, 180), random(-180, 180))
                }

                local positions = {
                    ["Target Strafe"] = origin * angle(0, rad(nebula.radians), 0) * cfr(z, y, x),
                    ["None"] = origin * cfr(x, y, z)
                }
                
                local custom_angle = flags["custom_rotation"] and angle(rad(flags["pitch"]), rad(flags["yaw"]), rad(flags["roll"])) or angle(0, 0, 0) 

                desync.final_position = positions[position] * rotations[rotation] * custom_angle
            end

            desync.calculate_dc = function(origin) 
                desync.frame_counter += 1

                local random_value = random(4,9)

                local destroy_cheaters = {
                    ["Nan"] = origin * cfr(0/0, 0/0, 1),
                    ["High Magnitude"] = origin * cfr(9e9, 9e9, 9e9), 
                    ["Line Rendering Zone"] = origin * cfr(9e4, 9e4, 9e4),
                    ["Randomize"] = origin * cfr(random(1,2) == 2 and pow(9, random_value) or 1/0, -1000, pow(9, random_value))
                }

                if desync.is_enabled() == false then 
                    desync.final_position = origin
                end 

                if desync.frame_counter % flags["destroy_cheaters_interval"] == 0 and (lp.Character.Humanoid.Health <= flags["destroy_cheaters_min_health"]) then 
                    desync.final_position = destroy_cheaters[flags["destroy_cheaters_type"]]
                end 
            end
            
            desync.init = LPH_NO_VIRTUALIZE(function(position, visualize) 
                desync.old_position = lp.Character.HumanoidRootPart.CFrame

                lp.Character.HumanoidRootPart.CFrame = position

                run.RenderStepped:Wait()

                if visualize then 
                    for _, part in pairs(lp.Character:GetChildren()) do
                        if (part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("Part")) and part.Name ~= "HumanoidRootPart" then
                            local cloned_part = desync.clone:FindFirstChild(part.Name)

                            if cloned_part then
                                cloned_part.CFrame = part.CFrame
                            end
                        end
                    end
                end

                lp.Character.HumanoidRootPart.CFrame = desync.old_position

                desync.old_position = lp.Character.HumanoidRootPart.CFrame
            end) 

            desync.update_cham_properties = function() 
                local Highlight = desync.cham
                Highlight.Enabled = flags["desync_cham_highlight"]

                if not flags["desync_material_texture"] then return end 

                for _, part in pairs(desync.clone:GetChildren()) do
                    if (part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("Part")) and part.Name ~= "HumanoidRootPart" then
                        part.Color = flags["desync_part_color"].Color
                        part.Transparency = 1 - flags["desync_part_color"].Transparency
                        part.Material = Enum.Material[flags["desync_cham_material"]]


                    end
                end

                if Highlight.Enabled then
                    Highlight.DepthMode = Enum.HighlightDepthMode["AlwaysOnTop"] 
                    Highlight.FillColor = flags["desync_visualizer_fill"].Color 
                    Highlight.OutlineColor = flags["desync_visualizer_outline"].Color 
                    Highlight.OutlineTransparency = 1 - flags["desync_visualizer_outline"].Transparency 
                    Highlight.FillTransparency = 1 - flags["desync_visualizer_fill"].Transparency
                end
            end 

            desync.state = LPH_NO_VIRTUALIZE(function() 
                local magnitude = lp.Character.Humanoid.MoveDirection.magnitude 

                if flags["desync_mode"] == "Standing Only" then 
                    if magnitude > 0 then 
                        return false 
                    end
                elseif flags["desync_mode"] == "Moving Only" then 
                    if magnitude == 0 then 
                        return false 
                    end 
                elseif flags["desync_mode"] == "Target Only" then 
                    if not (target and target.Character) then 
                        return false
                    end 
                end 

                return true 
            end)

            desync.think = LPH_NO_VIRTUALIZE(function() 
                local spoofer = desync.is_enabled()
                local is_destroying = desync.is_dc()

                local active = spoofer or is_destroying

                if active then 
                    local state = desync.state()

                    if not state then 
                        return 
                    end 

                    local hrp_cf = lp.Character.HumanoidRootPart.CFrame
                    local origin = (flags["attach_to_target"] and target and target.Character and target.Character.HumanoidRootPart.CFrame) or hrp_cf

                    if spoofer then 
                        desync.calculate_position(origin, flags["desync_position_preset"], flags["desync_rotation_preset"]) 
                    end 

                    if is_destroying then 
                        desync.calculate_dc(origin) 
                    end 	

                    desync.init(desync.final_position, flags["desync_visualize"])
                end 
            end)
        -- 

        -- network 
            local networking = nebula.rage.network 

            networking.think = function() 
                if flags["network_desync"] and flags["network_desync_bind"].active then 
                    if table.find(flags["network_desync_type"], "physics sender rate") then 
                        setfflag("S2PhysicsSenderRate", tostring(flags["network_desync_fflag"]))
                    end 
                    
                    if table.find(flags["network_desync_type"], "network sleeping") then 
                        if (os.clock() - networking.last_slept >= flags["network_desync_interval"]/1000) then 
                            networking.sleeping = not networking.sleeping 
                            sethiddenproperty(lp.Character.HumanoidRootPart, "NetworkIsSleeping", networking.sleeping)
                        end 
                    end 
                end 
            end
        -- 
    -- 

    -- esp 
        local esp = {
            players = {},
            highlights = {}
        }

        if #listfiles(library.directory .. "/images") == 0 then 
            local gun_path = "https://github.com/f1nobe7650/Nebula/blob/main/Images/"

            local images_download = {
                "ak.png",
                "ar.png",
                "aug.png",
                "db.png",
                "drumgun.png",
                "flame.png",
                "glock.png",
                "lmg.png",
                "p90.png",
                "rev.png",
                "smg.png",
                "shotgun.png",
                "ar.png",
                "tac.png",
                "knife.png",
                "rifle.png"
            }

            for _, image in next, images_download do 
                writefile(library.directory .. "/images/" .. image, game:HttpGet(gun_path .. image ..  "?raw=true"))
            end  
        end 
        
        local images = {
            ["[AK47]"] = library.directory .. "/images/ak.png",
            ["[AR]"] = library.directory.. "/images/ar.png",
            ["[AUG]"] = library.directory.. "/images/aug.png",
            ["[Double-Barrel SG]"] = library.directory.. "/images/db.png",
            ["[DrumGun]"] = library.directory.. "/images/drumgun.png",
            ["[Flamethrower]"] = library.directory.. "/images/flame.png",
            ["[Glock]"] = library.directory.. "/images/glock.png",
            ["[LMG]"] = library.directory.. "/images/lmg.png",
            ["[P90]"]= library.directory.. "/images/p90.png",
            ["[Revolver]"] = library.directory.. "/images/rev.png",
            ["[SMG]"] = library.directory.. "/images/smg.png",
            ["[Shotgun]"] = library.directory.. "/images/shotgun.png",
            ["[SilencerAR]"] = library.directory.. "/images/ar.png",
            ["[TacticalShotgun]"] = library.directory.. "/images/tac.png",
            ["[Knife]"] = library.directory.. "/images/knife.png",
            ["[Rifle]"] = library.directory.. "/images/rifle.png"
        }

        local esp_holder = library:create("ScreenGui", {
            Parent = game.CoreGui,
            Name = "",
            IgnoreGuiInset = true, 
            DisplayOrder = -1, 
            ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        })

        esp.calculate_box = LPH_NO_VIRTUALIZE(function(size)
            local UpCalculation = cfr(size)
            local VTop = size + (UpCalculation.UpVector * 1.8) + camera.CFrame.UpVector
            local VBottom = size - (UpCalculation.UpVector * 2.5) - camera.CFrame.UpVector
        
            local Top, TopIsRendered = utility.to_screen_point(VTop)
            local Bottom, BottomIsRendered = utility.to_screen_point(VBottom)
            
            local Width = max(floor(abs(Top.x - Bottom.x)), 3)
            local Height = max(floor(max(abs(Bottom.y - Top.y), Width / 2)), 3)
            local BoxSize = vec2(floor(max(Height / 1.5, Width)), Height)
            local BoxPosition = vec2(floor(Top.x * 0.5 + Bottom.x * 0.5 - BoxSize.x * 0.5), floor(min(Top.y, Bottom.y)))
        
            return BoxSize, BoxPosition, BottomIsRendered, TopIsRendered
        end)
        
        local __cham__ = library:new_item("Highlight", {
            Enabled = false,
            DepthMode = Enum.HighlightDepthMode.AlwaysOnTop, 
            FillColor = rgb(255, 255, 255), 
            OutlineColor =  rgb(255, 255, 255) ,
            OutlineTransparency = 0.5,
            FillTransparency = 1,
            Parent = ws.Players,
            Adornee = ws.Players,
        })      
        
        function esp:create_player(player)
            esp.players[player.Name] = {
                tool = {}
            }
            
            local player_path = esp.players[player.Name]
        
            -- instances
                -- init
                    local player_holder = library:create("Frame", {
                        Parent = esp_holder,
                        Name = "",
                        Visible = false, 
                        BackgroundTransparency = 1,
                        Position = UDim2.new(0.492978572845459, 0, 0.3143274784088135, 0),
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        Size = UDim2.new(0, 143, 0, 219),
                        BorderSizePixel = 0,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    player_path.instance = player_holder
                -- 
        
                -- boxes
                    local line_holder = library:create("Frame", {
                        Parent = player_holder,
                        Name = "",
                        Size = UDim2.new(1, 0, 1, 0),
                        ZIndex = 50,
                        BorderSizePixel = 0,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local box_outline = library:create("Frame", {
                        Parent = line_holder,
                        Name = "",
                        Visible = false,
                        BackgroundTransparency = 1,
                        Position = UDim2.new(0, -1, 0, -1),
                        ZIndex = 50,
                        Size = UDim2.new(1, 2, 1, 2),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local BoxLine2 = library:create("UIStroke", {
                        Parent = box_outline,
                        Name = "",
                        LineJoinMode = Enum.LineJoinMode.Miter
                    })
                    
                    local box_color = library:create("UIStroke", {
                        Parent = line_holder,
                        Name = "",
                        Enabled = false,
                        LineJoinMode = Enum.LineJoinMode.Miter,
                        Color = Color3.fromRGB(255, 255, 255)
                    })
        
                    local box_inline = library:create("Frame", {
                        Parent = line_holder,
                        Name = "",
                        Visible = false,
                        BackgroundTransparency = 1,
                        Position = UDim2.new(0, 1, 0, 1),
                        ZIndex = 50,
                        Size = UDim2.new(1, -2, 1, -2),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local BoxLine3 = library:create("UIStroke", {
                        Parent = box_inline,
                        Name = "",
                        LineJoinMode = Enum.LineJoinMode.Miter
                    })
                    
                    local box_gradient = library:create("UIGradient", {
                        Parent = line_holder,
                        Name = "",
                        Rotation = -180,
                        Transparency = numseq{
                            numkey(0, 0.5),
                            numkey(1, 0.5)
                        },
                        Color = ColorSequence.new{
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
                        }
                    })
                -- 
        
                -- corner boxes
                    local corner_box = library:create("Frame", {
                        Parent = line_holder,
                        Name = "",
                        BackgroundTransparency = 1,
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        Size = UDim2.new(1, 0, 1, 0),
                        BorderSizePixel = 0,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local top_left = library:create("Frame", {
                        Parent = corner_box,
                        Name = "",
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        ZIndex = 50,
                        Size = UDim2.new(0, 1, 0.30000001192092896, 0),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local top_right = library:create("Frame", {
                        Parent = corner_box,
                        Name = "",
                        AnchorPoint = Vector2.new(1, 0),
                        Position = UDim2.new(1, -1, 0, 0),
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        ZIndex = 50,
                        Size = UDim2.new(0, 1, 0.30000001192092896, 0),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local bottom_left = library:create("Frame", {
                        Parent = corner_box,
                        Name = "",
                        AnchorPoint = Vector2.new(0, 1),
                        Position = UDim2.new(0, 0, 1, 0),
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        ZIndex = 50,
                        Size = UDim2.new(0.4000000059604645, 0, 0, 1),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local bottom_right = library:create("Frame", {
                        Parent = corner_box,
                        Name = "",
                        AnchorPoint = Vector2.new(1, 1),
                        Position = UDim2.new(1, -1, 1, 0),
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        ZIndex = 50,
                        Size = UDim2.new(0.4000000059604645, 0, 0, 1),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local bottom_left2 = library:create("Frame", {
                        Parent = corner_box,
                        Name = "",
                        AnchorPoint = Vector2.new(0, 1),
                        Position = UDim2.new(0, 0, 1, 0),
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        ZIndex = 50,
                        Size = UDim2.new(0, 1, 0.30000001192092896, 0),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local bottom_right2 = library:create("Frame", {
                        Parent = corner_box,
                        Name = "",
                        AnchorPoint = Vector2.new(1, 1),
                        Position = UDim2.new(1, 0, 1, 0),
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        ZIndex = 50,
                        Size = UDim2.new(0, 1, 0.30000001192092896, 0),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local top_left2 = library:create("Frame", {
                        Parent = corner_box,
                        Name = "",
                        AnchorPoint = Vector2.new(0, 1),
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        ZIndex = 50,
                        Size = UDim2.new(0.4000000059604645, 0, 0, 1),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    local top_right2 = library:create("Frame", {
                        Parent = corner_box,
                        Name = "",
                        AnchorPoint = Vector2.new(1, 1),
                        Position = UDim2.new(1, -1, 0, 0),
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        ZIndex = 50,
                        Size = UDim2.new(0.4000000059604645, 0, 0, 1),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                -- 
        
                -- bottom holder
                    local bottom_holder = library:create("Frame", {
                        Parent = line_holder,
                        Name = "",
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        BackgroundTransparency = 1,
                        Position = UDim2.new(0, -2, 1, 3),
                        Size = UDim2.new(1, 4, 0, 0),
                        BorderSizePixel = 0,
                        AutomaticSize = Enum.AutomaticSize.Y,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    library:create("UIListLayout", {
                        Parent = bottom_holder,
                        Name = "",
                        Padding = UDim.new(0, 2),
                        SortOrder = Enum.SortOrder.LayoutOrder
                    })
                    
                    library:create("UIPadding", {
                        Parent = bottom_holder,
                        Name = "",
                        PaddingTop = UDim.new(0, 1)
                    })
        
                    -- reload bar
                        local bar_holder = library:create("Frame", {
                            Parent = bottom_holder,
                            Name = "",
                            BackgroundTransparency = 1,
                            Size = UDim2.new(1, 0, 0, 4),
                            BorderColor3 = Color3.fromRGB(0, 0, 0),
                            BorderSizePixel = 0,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        })
                        
                        local reload_bar = library:create("Frame", {
                            Parent = bar_holder,
                            Name = "",
                            Size = UDim2.new(1, 0, 0, 4),
                            ZIndex = 50,
                            BorderSizePixel = 0,
                            BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                        })
                        
                        local reload_slider = library:create("Frame", {
                            Parent = reload_bar,
                            Name = "",
                            Size = UDim2.new(1, -2, 0, 2),
                            Position = UDim2.new(0, 1, 0, 1),
                            ZIndex = 50,
                            BorderSizePixel = 0,
                            BackgroundColor3 = Color3.fromRGB(28, 145, 255)
                        })
        
                        local reload_bar_text = library:create("TextLabel", {
                            Parent = reload_slider,
                            Name = "",
                            FontFace = library.font,
                            TextColor3 = Color3.fromRGB(255, 255, 255),
                            Text = "50",
                            Visible = false, 
                            TextStrokeTransparency = 0,
                            AnchorPoint = Vector2.new(0.5, 0),
                            BackgroundTransparency = 1,
                            TextXAlignment = Enum.TextXAlignment.Right,
                            Position = UDim2.new(1, 0, 0, 5),
                            ZIndex = 50,
                            TextSize = 12,
                            AutomaticSize = Enum.AutomaticSize.XY
                        })
        
                        library:create("UIStroke", {
                            Parent = reload_bar_text,
                            Name = "",
                            LineJoinMode = Enum.LineJoinMode.Miter
                        })
                    -- 
        
                    -- distance text 
                        -- local distance = library:create("TextLabel", {
                        --     Parent = bottom_holder,
                        --     Name = "",
                        --     FontFace = library.font,
                        --     TextColor3 = Color3.fromRGB(255, 255, 255),
                        --     Text = "50st",
                        --     TextStrokeTransparency = 0,
                        --     AnchorPoint = Vector2.new(0.5, 0.5),
                        --     BackgroundTransparency = 1,
                        --     AutomaticSize = Enum.AutomaticSize.Y,
                        --     ZIndex = 50,
                        --     TextSize = 12,
                        --     Size = UDim2.new(1, 0, 0, 4)
                        -- })
        
                        -- library:create("UIStroke", {
                        --     Parent = distance,
                        --     Name = "",
                        --     LineJoinMode = Enum.LineJoinMode.Miter
                        -- })
                    -- 
        
                    -- gun icons
                        local image_holder = library:create("Frame", {
                            Parent = bottom_holder,
                            Name = "",
                            BackgroundTransparency = 1,
                            Size = UDim2.new(1, 0, 0, 0),
                            BorderColor3 = Color3.fromRGB(0, 0, 0),
                            BorderSizePixel = 0,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        })
                        
                        local gun_image = library:create("ImageLabel", {
                            Parent = image_holder,
                            Name = "",
                            BorderColor3 = Color3.fromRGB(0, 0, 0),
                            AnchorPoint = Vector2.new(0.5, 0),
                            Image = "rbxassetid://130516018594923",
                            BackgroundTransparency = 1,
                            Position = UDim2.new(0.5, 0, 0, 0),
                            Size = UDim2.new(0, 64/2, 0, 27/2),
                            BorderSizePixel = 0,
                            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        })
                    -- 
        
                    -- weapon text
                        local weapon = library:create("TextLabel", {
                            Parent = bottom_holder,
                            Name = "",
                            FontFace = library.font,
                            TextColor3 = Color3.fromRGB(255, 255, 255),
                            Text = "double barrel",
                            TextStrokeTransparency = 0,
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            BackgroundTransparency = 1,
                            Position = UDim2.new(0.5, 0, 0.031031031161546707, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            ZIndex = 50,
                            TextSize = 12,
                            Size = UDim2.new(1, 0, 0, 4)
                        })
                        
                        library:create("UIStroke", {
                            Parent = weapon,
                            Name = "",
                            LineJoinMode = Enum.LineJoinMode.Miter
                        })
                    -- 
        
                    -- armor bar
                        local armor = library:create("Frame", {
                            Parent = line_holder,
                            Name = "",
                            Position = UDim2.new(0, -14, 0, -2),
                            Size = UDim2.new(0, 4, 1, 4),
                            BorderSizePixel = 0,
                            BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                        })
                        
                        local armor_slider = library:create("Frame", {
                            Parent = armor,
                            Name = "",
                            Position = UDim2.new(0, 1, 0, 1),
                            BorderColor3 = Color3.fromRGB(0, 0, 0),
                            Size = UDim2.new(0.5, 0, 1, -2),
                            BorderSizePixel = 0,
                            BackgroundColor3 = Color3.fromRGB(0, 13, 255)
                        })
                        
                        local armor_text = library:create("TextLabel", {
                            Parent = armor_slider,
                            Name = "",
                            ZIndex = 99,
                            FontFace = library.font,
                            TextColor3 = Color3.fromRGB(0, 13, 255),
                            Text = "100",
                            Position = UDim2.new(0, -2, 0, -2),
                            TextStrokeTransparency = 0,
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            TextXAlignment = Enum.TextXAlignment.Right,
                            Active = true,
                            TextYAlignment = Enum.TextYAlignment.Top,
                            TextSize = 12,
                            BackgroundColor3 = Color3.fromRGB(26, 255, 0)
                        })
                        
                        library:create("UIStroke", {
                            Parent = armor_text,
                            Name = "",
                            LineJoinMode = Enum.LineJoinMode.Miter
                        })
                    -- 
        
                    -- healthbar
                        local health = library:create("Frame", {
                            Parent = line_holder,
                            Name = "",
                            Position = UDim2.new(0, -8, 0, -2),
                            Size = UDim2.new(0, 4, 1, 4),
                            BorderSizePixel = 0,
                            BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                        })
                        
                        local health_slider = library:create("Frame", {
                            Parent = health,
                            Name = "",
                            Position = UDim2.new(0, 1, 0, 1),
                            BorderColor3 = Color3.fromRGB(0, 0, 0),
                            Size = UDim2.new(0.5, 0, 1, -2),
                            BorderSizePixel = 0,
                            BackgroundColor3 = Color3.fromRGB(0, 255, 42)
                        })
                        
                        local health_text = library:create("TextLabel", {
                            Parent = health_slider,
                            Name = "",
                            Visible = false,
                            FontFace = library.font,
                            TextColor3 = Color3.fromRGB(0, 255, 0),
                            Text = "100",
                            ZIndex = 99,
                            TextStrokeTransparency = 0,
                            Position = UDim2.new(0, -4, 0, -2),
                            BackgroundTransparency = 1,
                            TextXAlignment = Enum.TextXAlignment.Right,
                            Active = true,
                            TextYAlignment = Enum.TextYAlignment.Top,
                            TextSize = 12,
                            BackgroundColor3 = Color3.fromRGB(26, 255, 0)
                        })
                        
                        library:create("UIStroke", {
                            Parent = health_text,
                            Name = "",
                            LineJoinMode = Enum.LineJoinMode.Miter
                        })
                    -- 
                -- 
        
                -- top holder
                    local top_holder = library:create("Frame", {
                        Parent = line_holder,
                        Name = "",
                        BorderColor3 = Color3.fromRGB(0, 0, 0),
                        AnchorPoint = Vector2.new(0, 1),
                        BackgroundTransparency = 1,
                        Position = UDim2.new(0, -2, 0, -4),
                        Size = UDim2.new(1, 4, 0, 0),
                        BorderSizePixel = 0,
                        AutomaticSize = Enum.AutomaticSize.Y,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    })
                    
                    library:create("UIListLayout", {
                        Parent = top_holder,
                        Name = "",
                        Padding = UDim.new(0, 4),
                        SortOrder = Enum.SortOrder.LayoutOrder
                    })
                    
                    library:create("UIPadding", {
                        Parent = top_holder,
                        Name = "",
                        PaddingTop = UDim.new(0, 1)
                    })
                    
                    -- target highlight 
                        -- local target_text_holder = library:create("Frame", {
                        --     Parent = top_holder,
                        --     Name = "",
                        --     BackgroundTransparency = 1,
                        --     Size = UDim2.new(1, 0, 0, 22),
                        --     BorderColor3 = Color3.fromRGB(0, 0, 0),
                        --     BorderSizePixel = 0,
                        --     AutomaticSize = Enum.AutomaticSize.Y,
                        --     BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        -- })
                        
                        -- local priority_text = library:create("TextLabel", {
                        --     Parent = target_text_holder,
                        --     Name = "",
                        --     RichText = true,
                        --     TextColor3 = Color3.fromRGB(255, 255, 255),
                        --     Text = "$$$ | ledger.live | $$$",
                        --     FontFace = library.font,
                        --     AnchorPoint = Vector2.new(0, 0.5),
                        --     AutomaticSize = Enum.AutomaticSize.Y,
                        --     BackgroundTransparency = 1,
                        --     Position = UDim2.new(0, 0, 0.5, -2),
                        --     BorderSizePixel = 0,
                        --     ZIndex = 50,
                        --     TextSize = 12,
                        --     Size = UDim2.new(1, 0, 0, 0)
                        -- })
                        
                        -- local stroke_fix = library:create("TextLabel", {
                        --     Parent = priority_text,
                        --     Name = "",
                        --     FontFace = library.font,
                        --     TextColor3 = Color3.fromRGB(255, 255, 255),
                        --     Text = "$$$ | ledger.live | $$$",
                        --     BackgroundTransparency = 1,
                        --     BorderSizePixel = 0,
                        --     AutomaticSize = Enum.AutomaticSize.Y,
                        --     ZIndex = 50,
                        --     TextSize = 12,
                        --     Size = UDim2.new(1, 0, 0, 0)
                        -- })
                        
                        -- library:create("UIStroke", {
                        --     Parent = stroke_fix,
                        --     Name = "",
                        --     LineJoinMode = Enum.LineJoinMode.Miter
                        -- })
                    -- 
        
                    -- player image
                        local player_image_holder = library:create("Frame", {
                            Parent = top_holder,
                            Name = "",
                            BackgroundTransparency = 1,
                            Size = UDim2.new(1, 0, 0, 0),
                            BorderColor3 = Color3.fromRGB(0, 0, 0),
                            BorderSizePixel = 0,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        })
                        
                        local player_image = library:create("ImageLabel", {
                            Parent = player_holder_image_holder,
                            Name = "",
                            BorderColor3 = Color3.fromRGB(0, 0, 0),
                            AnchorPoint = Vector2.new(0.5, 0),
                            Image = "rbxassetid://89657444485405",
                            BackgroundTransparency = 1,
                            Position = UDim2.new(0.5, 0, 0, 0),
                            Size = UDim2.new(0, 35, 0, 35),
                            BorderSizePixel = 0,
                            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        })
                    -- 
                        
                    -- player name 
                        local player_name = library:create("TextLabel", {
                            Parent = top_holder,
                            Name = "",
                            FontFace = library.font,
                            TextColor3 = Color3.fromRGB(255, 255, 255),
                            Text = player.Name,
                            AnchorPoint = Vector2.new(0, 1),
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Position = UDim2.new(0, 0, 0, -2),
                            TextSize = 12,
                            ZIndex = 50,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Size = UDim2.new(1, 0, 0, 0)
                        })
                        
                        library:create("UIStroke", {
                            Parent = player_name,
                            Name = "",
                            LineJoinMode = Enum.LineJoinMode.Miter
                        })
                    -- 
                -- 
            -- 
        
            player_path.connection = library:connection(run.RenderStepped, LPH_NO_VIRTUALIZE(function()
                if not flags["esp_enabled"] then return end 

                local character = player.Character
                local humanoid = character and character:FindFirstChild("Humanoid")
                local hrp = humanoid and humanoid.RootPart 
                
                local info = character and character:FindFirstChild("BodyEffects")
                local armor_value = info and info.Armor.Value
        
                if (character and humanoid and hrp and armor_value) then 
                    local box_size, box_position, top_rendered, bottom_rendered = esp.calculate_box(character.UpperTorso.Position)
                    
                    if top_rendered and bottom_rendered then 
                        player_holder.Visible = true 
                        player_holder.Size = dim2(0, box_size.X, 0, box_size.Y)
                        player_holder.Position = dim2(0, box_position.X, 0, box_position.Y)
        
                        -- boxes
                            if flags["bounding_box"] then 
                                if flags["bounding_box_type"] == "Corner" then 
                                    corner_box.Visible = true 
                                    box_inline.Visible = false 
                                    box_outline.Visible = false 
                                    box_color.Enabled = false 
                                    for _, line in next, corner_box:GetChildren() do
                                        line.BackgroundColor3 = flags["bounding_box_color1"].Color
                                    end 
                                else 
                                    box_inline.Visible = true 
                                    box_outline.Visible = true 
                                    box_color.Enabled = true
                                    corner_box.Visible = false  
                                    box_color.Color = flags["bounding_box_color1"].Color
                                end 
                            else 
                                box_inline.Visible = false 
                                box_outline.Visible = false 
                                box_color.Enabled = false
                                corner_box.Visible = false  
                            end 
                        -- 

                        -- filled box
                            if flags["filled_box"] then 
                                box_gradient.Enabled = true 
                                box_gradient.Color = rgbseq{
                                    rgbkey(0, flags["filled_box_color1"].Color),
                                    rgbkey(1, flags["filled_box_color2"].Color)
                                }
                                box_gradient.Transparency = numseq{
                                    numkey(0, 1 - flags["filled_box_color1"].Transparency),
                                    numkey(1, 1 - flags["filled_box_color2"].Transparency)
                                }
                                line_holder.BackgroundTransparency = 0 
                                if flags["filled_box_animation"] then 
                                    box_gradient.Rotation = math.sin(tick() * 2) * 180
                                else 
                                    box_gradient.Rotation = flags["filled_box_rotation"]
                                end 
                                
                            else 
                                box_gradient.Enabled = false 
                                line_holder.BackgroundTransparency = 1
                            end 
                        -- 
                            
                        -- names
                            if flags["show_names"] then 
                                player_name.Visible = true 
                                player_name.TextColor3 = flags["show_names_color"].Color
                            else 
                                player_name.Visible = false
                            end 
                        -- 
        
                        -- healthbar 
                            if flags["health_bar"] then 
                                local multiplier = humanoid.Health / humanoid.MaxHealth
                                local color = flags["health_bar_low"].Color:Lerp(flags["health_bar_high"].Color, multiplier)
        
                                health.Visible = true 
                                health_slider.Size = dim2(.5, 0, multiplier, multiplier > 0 and -2 or 0)
                                health_slider.Position = dim2(0, 1, 1 - multiplier, 1)
                                health_slider.BackgroundColor3 = color
                                
                                if flags["health_number"] and humanoid.Health ~= humanoid.MaxHealth and not armor.Visible then 
                                    health_text.Text = floor(humanoid.Health)
                                    health_text.TextColor3 = color
                                    health_text.Visible = true 
                                else 
                                    health_text.Visible = false 
                                end 

                                if flags["armor_bar"] and armor_value > 0 then 
                                    local multiplier = armor_value / 200
            
                                    armor.Visible = true 
                                    armor_slider.Size = dim2(.5, 0, multiplier, 1)
                                    armor_slider.Position = dim2(0, 1, 1 - multiplier, -2)
                                    armor_slider.BackgroundColor3 = flags["armor_bar_color"].Color

                                    if flags["armor_bar_number"] then 
                                        armor_text.Text = armor_value
                                        armor_text.Visible = true 
                                    else 
                                        armor_text.Visible = false 
                                    end 
                                else 
                                    armor.Visible = false 
                                    armor_text.Visible = false 
                                end 
                            else 
                                health.Visible = false  
                                armor.Visible = false 
                                health_text.Visible = false 
                            end 
                        --
        
                        -- reload bar, weapon text
                            if player_path.tool[1] ~= "None" and player_path.tool[2] == true then 
                                local tool = player_path.tool[1]
                                if flags["reload_bar"] and player_path.tool[2] == true then 
                                    bar_holder.Visible = true 
                                    
                                    local multiplier = tool.Ammo.Value / tool.MaxAmmo.Value
        
                                    reload_slider.Size = dim2(multiplier, multiplier > 0 and -2 or 0, 0, 2) 
        
                                    -- reload_bar_text.Text = tool.Ammo.Value

                                    reload_slider.BackgroundColor3 = flags["reload_bar_color1"].Color
                                else 
                                    bar_holder.Visible = false 
                                end 
                                
                                if flags["gun_text"] then 
                                    weapon.Text = tool.Name
                                    weapon.Visible = true 
                                    weapon.TextColor3 = flags["show_weapon_color"].Color
                                else 
                                    weapon.Visible = false 
                                end   

                                if flags["gun_icons"] then 
                                    gun_image.Visible = true 
                                    gun_image.ImageColor3 = flags["gun_icons_color"].Color
                                else 
                                    gun_image.Visible = false 
                                end 
                            else 
                                bar_holder.Visible = false 
                                weapon.Visible = false 
                                gun_image.Visible = false 
                            end 
                        -- 
                    else 
                        player_holder.Visible = false 
                    end 
                else 
                    player_holder.Visible = false 
                end 
            end))
             
            player_path.death_connection = library:connection(player.CharacterAdded, function()
                player_path.tool = {"None", false}
        
                library:connection(player.Character.ChildAdded, function(instance)
                    if instance:IsA("Tool") then 
                        player_path.tool = {instance, instance:FindFirstChild("GunScript") and true or false}
                        if images[instance.Name] then 
                            gun_image.Image = getcustomasset(images[instance.Name])
                        end 
                    end 
                end) 
        
                library:connection(player.Character.ChildRemoved, function(instance)
                    if instance:IsA("Tool") then 
                        player_path.tool = {"None", false}
                    end 
                end)
            end) 

            local character = player.Character or player.CharacterAdded:Wait()
        
            library:connection(character.ChildAdded, function(instance)
                if instance:IsA("Tool") then 
                    player_path.tool = {instance, instance:FindFirstChild("GunScript") and true or false}
                    if images[instance.Name] then 
                        gun_image.Image = getcustomasset(images[instance.Name])
                    end 
                end 
            end) 
            
            library:connection(character.ChildRemoved, function(instance)
                if instance:IsA("Tool") then 
                    player_path.tool = {"None", false}
                end 
            end)
        end

        esp.remove_player = LPH_NO_VIRTUALIZE(function(player) 
            local path = esp.players[player.Name]

            if path and path.connection then 
                path.connection:Disconnect()
                path.death_connection:Disconnect()
                path.instance:Destroy() 
            end 
            
            esp.players[player.Name] = nil 
        end)
        
        for _, player in next, players:GetPlayers() do 
            if player ~= lp then 
                esp:create_player(player)
            end 
        end      
    -- 

    -- visuals 
        local visuals = nebula.visuals 
    
        -- on_hit
            local hit_detection = visuals.hit_detection 

            hit_detection.update_data_table = (function()
                for _, player in next, players:GetPlayers() do 
                    if player and player.Character and player.Character:FindFirstChild("Humanoid") then 
                        hit_detection.data[player.Name] = player.Character.Humanoid.Health 
                    end 
                end 
            end)

            hit_detection.detect_closest_health_change = function(origin, max_distance) 
                local max_radius = max_distance
                local player_hit = nil 
                
                for name, health in next, hit_detection.data do 
                    local player = players:FindFirstChild(name) 
                    
                    if player and player.Character then 
                        local magnitude = (origin - player.Character.HumanoidRootPart.Position).Magnitude 
                        local current_health = player.Character.Humanoid.Health

                        if (magnitude < max_radius) and (current_health < health) then
                            max_radius = magnitude
                            player_hit = player
                            hit_detection.health_factor = health - current_health
                        end
                    end
                end
                
                return player_hit 
            end

            hit_detection.render_hit_effect = function() 
                local hit_effect = flags["hit_effect"]

                if hit_effect == "None" then 
                    return 
                end 

                local indicator = nebula.path["Hit Effects"][hit_effect]:Clone()
                indicator.Parent = ws
                debris:AddItem(indicator, 10)

                local hrp = hit_detection.current_player.Character.HumanoidRootPart

                if indicator:FindFirstChild("Attachment") then 
                    v.Parent = hrp 
                end 

                for _, v in next, indicator:GetDescendants() do 
                    if v:IsA("ParticleEmitter") then
                        v.Parent = hrp 
                        
                        v.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, flags["hit_effect_settings"].Color), -- Red at the start
                            ColorSequenceKeypoint.new(1, flags["hit_effect_settings"].Color) -- Blue at the end
                        })

                        local EmitCount 
                        
                        if hit_effect == "Detailed Slash" or hit_effect == "Electric 2" then 
                            EmitCount = 1 
                        elseif hit_effect == "Slash" or hit_effect == "Electric" then
                            EmitCount = 5
                        else 
                            EmitCount = 10
                        end

                        v:Emit(EmitCount)						
                    end
                end
            end

            hit_detection.play_sound = LPH_NO_VIRTUALIZE(function() 
                if not flags["hit_sound"] then 
                    return
                end 

                local sound = hit_sound_item:Clone()
                sound.Parent = sound_service
                sound:Play()

                debris:AddItem(sound, 10)
            end)

            hit_detection.render_hit_cham = function() 
                if not flags["hit_cham"] then 
                    return 
                end 

                local character = hit_detection.current_player.Character;
                character.Archivable = true;

                local model = character:Clone() 
                model.Parent = hit_cham_parent
                
                model:FindFirstChild("HumanoidRootPart"):Destroy()

                for _, part in next, model:GetChildren() do
                    if (part.Name == "CUFF" or part.Name == "HumanoidRootPart") then 
                        part:Destroy() 
                    end

                    if (part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("Part") and part.Name ~= "HumanoidRootPart") then
                        if part.Name == "HumanoidRootPart" or part.Name == "BOOMBOXHANDLE" then
                            continue 
                        end 

                        utility.apply_properties(part, {
                            Color = flags["hit_chams"].Color,
                            Transparency = 1 - flags["hit_chams"].Transparency,
                            CanCollide = false,
                            Anchored = true,
                            Material = Enum.Material[flags["hit_material"]],
                            Size = part.Size + vec3(0.01,0.01,0.01),
                            Reflectance = flags["hit_reflectance"],  
                        }) 		
                        

                    else
                        part:Destroy()
                    end		
                end 

                debris:AddItem(model, flags["on_hit_lifetime"])
            end

            hit_detection.render_3d_hit_marker = function() 
                if not flags["3d_hit_marker"] then 
                    return 
                end

                local indicator = nebula.path["Gui"].HitMarker:Clone()
                indicator.Parent = ws
                indicator.Position = hit_detection.end_point
                indicator.BillboardGui.Enabled = true 

                for _,v in next, indicator.BillboardGui:GetChildren() do 
                    v.BackgroundColor3 = flags["3d_hit_markers"].Color

                    tween_service:Create(v, TweenInfo.new(flags["on_hit_lifetime"], Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1 , false, 0), {BackgroundTransparency = 1}):Play()
                end

                debris:AddItem(indicator, flags["on_hit_lifetime"])
            end

            hit_detection.render_health_hit_marker = function()
                if not flags["health_indicator"] then 
                    return 
                end 

                local indicator = nebula.path["Gui"]["Dmg"]:Clone()
                indicator.Anchored = true 

                debris:AddItem(indicator, flags["on_hit_lifetime"])

                local text = indicator.BillboardGui.TextLabel
                text.Text = "-" .. floor(hit_detection.health_factor) .. ""
                text.FontFace = library.font 
                text.TextColor3 = flags["health_indicator_color"].Color
                text.TextStrokeTransparency = 0
                text.TextSize = 12
                
                library:create("UIStroke", {
                    Parent = text,
                    Name = "",
                    LineJoinMode = Enum.LineJoinMode.Miter
                })

                indicator.BillboardGui.Enabled = true
                indicator.BillboardGui.AlwaysOnTop = true 
                indicator.Position = hit_detection.end_point
                indicator.Parent = ws
                indicator.CanCollide = false 
                indicator.Position = hit_detection.end_point 
                --tween_service:Create(, TweenInfo.new(flags["on_hit_lifetime"], Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1 , true, 0), {}):Play()
                tween_service:Create(text, TweenInfo.new(flags["on_hit_lifetime"], Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1 , true, 0), {TextTransparency = 1, TextStrokeTransparency = 1}):Play()
            end	

            hit_detection.init = function() 
                hit_detection.render_hit_effect() 

                hit_detection.render_3d_hit_marker()

                hit_detection.render_health_hit_marker()

                hit_detection.render_hit_cham() 

                hit_detection.play_sound() 
            end
        -- 

        -- beams 
            local tracers_ids = {
                ["Double Helix"] = "rbxassetid://1134824633", 
                ["Electric"] = "rbxassetid://446111271",
                ["Electric + Glow"] = "rbxassetid://5864341017", 
                ["Fade"] = "rbxassetid://7136858729",
                ["Pulsate"] = "rbxassetid://5889875399", 
                ["Red Lazer"] = "rbxassetid://6333823534", 
                ["Smoke"] = "rbxassetid://3517446796", 
                ["Warp"] = "rbxassetid://7151778302", 
                ["1"] = "rbxassetid://9150663556",
                ["2"] = "rbxassetid://2950987173",
                ["3"] = "rbxassetid://6511613786",
            }

            visuals.new_beam = LPH_NO_VIRTUALIZE(function(origin, end_point)
                local beam_part = Instance.new("Part", ws)
                beam_part.Name = "BeamPart"
                beam_part.Transparency = 1

                local part0 = Instance.new("Part", beam_part)
                part0.Size = vec3(1, 1, 1)
                part0.Transparency = 1
                part0.CanCollide = false
                part0.CFrame = typeof(origin) == "CFrame" and origin or cfr(origin)
                part0.Anchored = true
                
                local attachment0 = Instance.new("Attachment", part0)

                local part1 = Instance.new("Part", beam_part)
                part1.Size = vec3(1, 1, 1)
                part1.Transparency = 1
                part1.CanCollide = false
                part1.CFrame = typeof(end_point) == "CFrame" and end_point or cfr(end_point)
                part1.Anchored = true
                part1.Color = rgb(255, 255, 255)

                local attachment1 = Instance.new("Attachment", part1)

                local beam = Instance.new("Beam", part0)
                beam.Attachment0 = attachment0
                beam.Attachment1 = attachment1

                -- properties 
                beam.FaceCamera = flags["beam_face_camera"]

                beam.Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0.00, flags["beam_settings0"].Color),
                    ColorSequenceKeypoint.new(1, flags["beam_settings1"].Color),
                }
                
                beam.Transparency = numseq{
                    numkey(0, 1 - flags["beam_settings0"].Transparency),
                    numkey(1, 1 - flags["beam_settings1"].Transparency),
                }

                beam.LightEmission = flags["beam_brightness"]
                beam.Segments = flags["beam_segments"] * 10
                beam.LightInfluence = flags["beam_influence"]
                beam.Width0 = flags["beam_width"]
                beam.Width1 = flags["beam_width"]
                beam.TextureLength = flags["beam_length"]
                beam.TextureSpeed = flags["beam_speed"]
                beam.Texture = tracers_ids[flags["beam_texture"]]
                beam.CurveSize0 = flags["beam_curve0"]
                beam.CurveSize1 = flags["beam_curve1"]
                
                debris:AddItem(beam_part, flags["beam_lifetime"])
            end)  
        -- 

        -- world visuals 
            local lighting_save = visuals.lighting_save 

            visuals.update_world = function() 
                if flags["ambient"] then 
                    lighting.Ambient = flags["outdoor_ambience"].Color 
                    lighting.OutdoorAmbient = flags["indoor_ambience"].Color 
                else 
                    lighting.Ambient = lighting_save["Ambient"]
                    lighting.OutdoorAmbient = lighting_save["OutdoorAmbient"]
                end 
            
                if flags["fog"] then 
                    lighting.FogColor = flags["fog_color"].Color 
                    lighting.FogEnd = flags["fog_end"] 
                    lighting.FogStart = flags["fog_start"] 
                else 
                    lighting.FogColor = lighting_save["FogColor"]
                    lighting.FogEnd = lighting_save["FogEnd"]
                    lighting.FogStart = lighting_save["FogStart"]
                end 
            
                local color_correction_effect = lighting:FindFirstChild("ColorCorrection")
                color_correction_effect.Enabled = flags["color_correction"]; 
                color_correction_effect.Saturation = flags["correction_saturation"]; 
                color_correction_effect.Contrast = flags["correction_contrast"]; 
                color_correction_effect.Brightness = flags["correction_brightness"];
                
                if flags["correction_tint"] then 
                    color_correction_effect.TintColor = flags["correction_tint"].Color; 
                end 
            
                if flags["atmosphere"] then 
                    atmosphere_parent.Parent = lighting 
                    atmosphere_parent.Color = flags["atmosphere_ambience"].Color
                    atmosphere_parent.Decay = flags["atmosphere_decay"].Color
                    atmosphere_parent.Density = flags["density"]
                    atmosphere_parent.Haze = flags["haze"]
                    atmosphere_parent.Glare = flags["glare"]
                else 
                    atmosphere_parent.Parent = coregui
                end 
            
                if flags["bloom"] then 
                    bloom_parent.Intensity = flags["bloom_intensity"]
                    bloom_parent.Size = flags["bloom_size"]
                    bloom_parent.Threshold = flags["bloom_threshold"]
                else 
                    bloom_parent.Intensity = .8
                    bloom_parent.Size = 24
                    bloom_parent.Threshold = 2 
                end 
            end   

            visuals.update_threaded_lighting = LPH_NO_VIRTUALIZE(function() 

            end) 
        -- 

        -- trails
            local trails = nebula.visuals.trails

            trails.refresh = LPH_NO_VIRTUALIZE(function() 
                if trails.trail then 
                    trails.trail:Destroy()
                end 

                for _, attachment in next, trails.attachments do 
                    attachment:Destroy()
                end 

                trails.attachments = {}
            end) 

            trails.apply_trail = function(trail)  
                trails.refresh() 

                if trail == "None" then 
                    return 
                end

                local AT2 = library:create("Attachment", {
                    Parent = lp.Character.HumanoidRootPart,
                    Name = "\0",
                    CFrame = cfr(0, 0, 0.687942505, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                })
                table.insert(trails.attachments, AT2)
                
                local AT1 = library:create("Attachment", {
                    Parent = lp.Character.HumanoidRootPart,
                    Name = "\0",
                    CFrame = cfr(0, 0, -0.677116394, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                })
                table.insert(trails.attachments, AT1)

                if trail == "Bright" then   
                    trails.trail = library:create("Trail", {
                        Parent = lp.Character.HumanoidRootPart,
                        Name = "\0",
                        FaceCamera = true,
                        WidthScale = NumberSequence.new{
                            NumberSequenceKeypoint.new(0, 1),
                            NumberSequenceKeypoint.new(1, 0)
                        },
                        Transparency = NumberSequence.new{
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(1, 0)
                        },
                        Attachment0 = AT1,
                        Lifetime = 1,
                        Brightness = 20,
                        Texture = "rbxassetid://9234319472",
                        Attachment1 = AT2
                    })
                elseif trail == "Dash" then
                    trails.trail = library:create("Trail", {
                        Parent = lp.Character.HumanoidRootPart,
                        Name = "\0",
                        FaceCamera = true,
                        WidthScale = NumberSequence.new{
                            NumberSequenceKeypoint.new(0, 1),
                            NumberSequenceKeypoint.new(1, 0)
                        },
                        Texture = "http://www.roblox.com/asset/?id=13703813488",
                        Transparency = NumberSequence.new{
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(1, 0)
                        },
                        Lifetime = 0.25,
                        LightEmission = 1,
                        Brightness = 20,
                        Attachment0 = AT1,
                        Attachment1 = AT2
                    })
                elseif trail == "Shadow" then
                    trails.trail = library:create("Trail", {
                        Parent = lp.Character.HumanoidRootPart,
                        Name = "\0",
                        FaceCamera = true,
                        WidthScale = NumberSequence.new{
                            NumberSequenceKeypoint.new(0, 1),
                            NumberSequenceKeypoint.new(1, 0)
                        },
                        Transparency = NumberSequence.new{
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(1, 0)
                        },
                        Attachment0 = AT1,
                        Lifetime = 1,
                        Texture = "rbxassetid://9234319472",
                        Attachment1 = AT2
                    })
                elseif trail == "Basic" then 
                    trails.trail = library:create("Trail", {
                        Parent = lp.Character.HumanoidRootPart,
                        Name = "\0",
                        FaceCamera = true,
                        Color = ColorSequence.new{
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 168, 28)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 168, 28))
                        },
                        WidthScale = NumberSequence.new{
                            NumberSequenceKeypoint.new(0, 0.03999999910593033),
                            NumberSequenceKeypoint.new(1, 0.03999999910593033)
                        },
                        MaxLength = 400,
                        Transparency = NumberSequence.new{
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(0.001, 0.5062500238418579),
                            NumberSequenceKeypoint.new(1, 0.512499988079071)
                        },
                        Attachment0 = AT1,
                        LightEmission = 1,
                        MinLength = 0,
                        TextureMode = Enum.TextureMode.Static,
                        Attachment1 = AT2
                    })
                end 
            end
        -- 

        -- localplayer 
            visuals.local_player = {} 
            local local_player = visuals.local_player 

            local local_highlight = Instance.new("Highlight", coregui) do 
                local_highlight.Enabled = false 
                local_highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop 
                local_highlight.FillColor = rgb(0,0,0) 
                local_highlight.OutlineColor = rgb(255, 255, 255) 
                local_highlight.OutlineTransparency = 0.5 
                local_highlight.FillTransparency = 0
                local_highlight.Adornee = lp.Character
            end 

            lp.CharacterAdded:Connect(function()
                local_highlight.Adornee = lp.Character
                
                if flags["no_jump_cooldown"] then 
                    lp.Character.Humanoid.UseJumpPower = false 
                end 

                task.wait(1)

                local_player.update_hats()
                local_player.update_visuals()

                lp.Character.ChildAdded:Connect(function(child)
                    if child:IsA("Tool") and child:FindFirstChild("Ammo") and child:FindFirstChild("GunScript") then 
                        library:connection(child.Ammo:GetPropertyChangedSignal("Value"), function()
                            nebula.misc.auto_reload()
                        end)
                    end 
                    
                    local_player.update_gun()
                end)

                if flags["local_trail"] ~= "None" then 
                    trails.apply_trail(flags["local_trail"])
                end 
            end)

            lp.Character.ChildAdded:Connect(function(child)
                if child:IsA("Tool") and child:FindFirstChild("Ammo") and child:FindFirstChild("GunScript") then 
                    library:connection(child.Ammo:GetPropertyChangedSignal("Value"), function()
                        nebula.misc.auto_reload() 
                    end)
                end 

                local_player.update_gun()
            end)

            local char_save = {}; 

            --for _, v in next, lp.Character:GetChildren() do 
            --    if v:IsA("BasePart") and v.Name ~= "Handle" and v.Name ~= "HumanoidRootPart" then 
            --        char_save[v.Name] = {v.Color, v.TextureId}
            --    elseif v:IsA("Accessory") then 
            --        char_save[v.Name] = v.Handle.TextureId
            --    end 
            --end 

            local_player.update_hats = LPH_NO_VIRTUALIZE(function() 

            end) 

            local_player.update_visuals = LPH_NO_VIRTUALIZE(function() 
            
                if flags["character_highlight"] and not flags["gun_highlight"] then
                    local_highlight.Enabled = true 
                    local_highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop 
                    local_highlight.FillColor = flags["character_fill"].Color 
                    local_highlight.OutlineColor = flags["character_outline"].Color 
                    local_highlight.OutlineTransparency = 1 - flags["character_outline"].Transparency 
                    local_highlight.FillTransparency = 1 - flags["character_fill"].Transparency
                    local_highlight.Adornee = lp.Character 
                else 
                    local_highlight.Enabled = false 
                end
            end) 

            local old_gun_textures = {}; 

            local_player.update_gun = LPH_NO_VIRTUALIZE(function() 
                local tool = lp.Character:FindFirstChildWhichIsA("Tool") 

                if not flags["gun_chams"] then 
                    for _, v in next, lp.Character:GetChildren() do 
                        if v:IsA("Tool") and v.Default then 
                            v.Default.Material = Enum.Material.Plastic


                        end 
                    end 

                    for _, v in next, lp.Backpack:GetChildren() do 
                        if v.Name ~= "[Wallet]" and v:IsA("Tool") and v:FindFirstChild("Default") then 
                            v.Default.Material = Enum.Material.Plastic


                        end 
                    end 
                        
                    return 
                end 

                if tool and tool.Default then 
                    tool.Default.Color = flags["gun_color"].Color
                    tool.Default.Transparency = 1 - flags["gun_color"].Transparency
                    tool.Default.Material = Enum.Material[flags["gun_material"]]


                end 

                if flags["gun_highlight"] then 
                    local_highlight.Enabled = true 
                    local_highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop 
                    local_highlight.FillColor = flags["character_fill"].Color 
                    local_highlight.OutlineColor = flags["character_outline"].Color 
                    local_highlight.OutlineTransparency = 1 - flags["character_outline"].Transparency 
                    local_highlight.FillTransparency = 1 - flags["character_fill"].Transparency
                    local_highlight.Adornee = tool
                elseif flags["gun_highlight"] == false and flags["character_highlight"] == false then 
                    local_highlight.Enabled = false 
                end 
            end) 
        -- 
    -- 

    -- misc 
        local misc = nebula.misc 
        
        misc.speed = LPH_NO_VIRTUALIZE(function() 
            if flags["cframe_speed"] and flags["cframe_speed_bind"].active then 
                local char = lp.Character 
                local move_dir = char.Humanoid.MoveDirection
                
                char.HumanoidRootPart.CFrame += (move_dir * (flags["speed_increments"] / 20))
            end 
        end) 

        misc.auto_armor = LPH_NO_VIRTUALIZE(function() 
            if not flags["auto_armor"] then return end 

            if lp.Character.BodyEffects.Armor.Value < 100 then
                misc.buying_armor = lp.Character.HumanoidRootPart.CFrame
                lp.Character.HumanoidRootPart.CFrame = ws.Ignored.Shop["[High-Medium Armor] - $2440"].Head.CFrame
                fireclickdetector(ws.Ignored.Shop["[High-Medium Armor] - $2440"].ClickDetector)
                run.RenderStepped:Wait()
                lp.Character.HumanoidRootPart.CFrame = misc.buying_armor 
            else 
                misc.buying_armor = nil
            end 
        end) 

        misc.no_slow = LPH_NO_VIRTUALIZE(function()
            if not flags["no_slow"] then 
                return 
            end 

            local body_effects = lp.Character.BodyEffects
            
            if body_effects then 
                if body_effects.Reload.Value then
                    body_effects.Reload.Value = false
                end

                local slowdown_factor = body_effects.Movement:FindFirstChild('NoJumping') 
                    or body_effects.Movement:FindFirstChild('NoWalkSpeed') 
                    or body_effects.Movement:FindFirstChild('ReduceWalk')

                if slowdown_factor then
                    slowdown_factor:Destroy()
                end
            end 
        end)    

        misc.auto_shoot = LPH_NO_VIRTUALIZE(function() 
            if flags["auto_shoot"] then 
                local handle = utility.get_tool_handle()
                local gun = handle and handle.Parent 

                if os.clock() - misc.auto_shoot_clock > flags["auto_shoot_delay"] / 1000 and gun then 
                    misc.auto_shoot_clock = os.clock() 
                    gun:Activate()
                end 
            end 
        end) 

        misc.edit_aspect_ratio = LPH_NO_VIRTUALIZE(function()
            if flags["aspect_ratio"] then 
                local X, Y, Z, R00, R01, R02, R10, R11, R12, R20, R21, R22 = camera.CFrame:GetComponents()
                camera.CFrame = CFrame.new(X, Y, Z, R00  * flags['horizontal_aspect_ratio'], R01 * flags["vertical_aspect_ratio"], R02, R10, R11 * flags["vertical_aspect_ratio"], R12, R20 * flags['horizontal_aspect_ratio'], R21 * flags["vertical_aspect_ratio"], R22)
            end 
        end) 

        misc.auto_jump = LPH_NO_VIRTUALIZE(function()
            if flags["auto_jump"] then 
                local hum = lp.Character.Humanoid 
                
                if hum:GetState() ~= Enum.HumanoidStateType.Freefall then 
                    hum:ChangeState(Enum.HumanoidStateType.Jumping) 
                end 
            end 
        end) 

        misc.auto_reload = function() 
            if not flags["auto_reload"] then 
                return 
            end 

            local handle = utility.get_tool_handle()
            local gun = handle and handle.Parent 
            local ammo = gun:FindFirstChild("Ammo").Value 

            if ammo <= 0 then 
                local args = {
                    [1] = "Reload",
                    [2] = gun
                }
                
                main_event(unpack(args))             
            end 
        end

        misc.is_safe_unit = LPH_NO_VIRTUALIZE(function(unit)
            if unit.Magnitude > 1e-8 then
                return unit
            end

            return Vector3.zero
        end)

        misc.fly = function(delta) 
            if flags["fly"] and flags["fly_bind"].active then 
                local char = lp.Character
                char.HumanoidRootPart.Velocity = Vector3.zero 

                local x = 0 
                local y = 0 
                local z = 0 

                if not nebula.typing_check then 
                    if uis:IsKeyDown(Enum.KeyCode.W) then
                        z -= 1
                    end

                    if uis:IsKeyDown(Enum.KeyCode.S) then
                        z += 1
                    end

                    if uis:IsKeyDown(Enum.KeyCode.D) then
                        x += 1
                    end

                    if uis:IsKeyDown(Enum.KeyCode.A) then
                        x -= 1
                    end

                    if uis:IsKeyDown(Enum.KeyCode.Space) then
                        y += 1
                    end

                    if uis:IsKeyDown(Enum.KeyCode.LeftShift) then
                        y -= 1
                    end
                end 

                local direction = misc.is_safe_unit(camera.CFrame:VectorToWorldSpace(vec3(x, 0, z)).Unit)
                char.HumanoidRootPart.CFrame += (direction + vec3(0, y, 0)) * (flags["fly_increments"] / 10) * (delta * 60)
            end 
        end
    -- 
-- 

-- documentation 
    local window = library:window({name = os.date('nebula.tech - Beta - %b %d %Y'), size = dim2(0, 614, 0, 639)})
    local watermark = library:watermark({default = os.date('nebula.tech - Beta - %b %d %Y - %H:%M:%S')})  

    local Aiming = window:tab({name = "Aiming"})
    local Rage = window:tab({name = "Rage"})
    local Misc = window:tab({name = "Misc"})
    local Visuals = window:tab({name = "Visuals"})
    --local Players = window:tab({name = "Players"})
    local Settings = window:tab({name = "Settings"})

    -- Aiming
        local column =  Aiming:column() 
            column:section({name = "Target Selection"})
                :toggle({name = "Enabled", flag = "target_selected", callback = function(bool)
                    lp.Character.Humanoid.AutoRotate = true
                    camera.CameraSubject = lp.Character.Humanoid
                    bounding_box_fill.CFrame = cfr(9e9, 9e9, 9e9)
                end})
                :keybind({name = "Aiming", flag = "target_selected_bind", callback = function(bool)
                    bounding_box_fill.CFrame = cfr(9e9, 9e9, 9e9)

                    if flags["target_selected"] and flags["target_selected_bind"].active then 
                        local distance = flags["target_selector_fov"] == 100 and math.huge or flags["target_selector_fov"]
                        target_selection.update_target(distance)
                    else 
                        target = nil
                        lp.Character.Humanoid.AutoRotate = true
                        camera.CameraSubject = lp.Character.Humanoid
                    end
                end})
                :toggle({name = "Auto Select", flag = "auto_select"})
                :slider({name = "Delay", min = 0, max = 1000, default = 40, interval = 1, suffix = "ms", flag = "target_selector_refresh_time"})
                :slider({name = "Fov", min = 0, max = 100, default = 100, interval = 1, suffix = "Â°", flag = "target_selector_fov"})
                :dropdown({name = "Checks", flag = "target_selected_checks", items = {"Knocked", "ForceField"}, multi = true})
                :toggle({name = "Look At", flag = "look_at", callback = function()
                    lp.Character.Humanoid.AutoRotate = false 
                end})
                :toggle({name = "Spectate", flag = "spectate"})
                :toggle({name = "Auto Stomp", flag = "target_auto_stomp"})
                :toggle({name = "Tracer", flag = "snap_line"})
                :colorpicker({name = "Tracer Inline", flag = "snap_line_color", color = Color3.fromHex("#7D0DC3"), callback = function(color, alpha) 
                    snapline.Color = color 
                    snapline.Transparency = alpha
                end})
                -- :colorpicker({flag = "Tracer Outline", color = Color3.fromHex("#000000"), callback = function(color, alpha) 
                --     snapline_outline.Color = color 
                --     snapline_outline.Transparency = alpha
                -- end})
                :slider({name = "Thickness", min = 1, max = 5, default = 1, interval = 1, suffix = "Â°", flag = "target_snap_line_thickness", callback = function(int)
                    snapline.Thickness = int
                end})
                :toggle({name = "Bounding Box", flag = "target_bounding_box"})
                :colorpicker({name = "Bounding Box Color", flag = "target_bounding_box_settings", color = Color3.fromHex("#000000"), callback = function(color, alpha) 
                    bounding_box.Color3 = color 
                    bounding_box.Transparency = 1 - alpha
                end})
                :toggle({name = "Fill", flag = "target_bounding_box_fill", callback = function(color, alpha) 
                    bounding_box_fill.CFrame = cfr(9e9, 9e9, 9e9)
                end})
                :colorpicker({name = "Bounding Box Fill", flag = "bounding_box_fill_settings", color = hex("#7D0DC3"), callback = function(color, alpha) 
                    bounding_box_fill.Color = color 
                    bounding_box_fill.Transparency = 1 - alpha
                end})
                :dropdown({name = "Material", flag = "target_bounding_box_material", items = {"ForceField", "Neon", "Plastic"}, multi = false, callback = function(option) 
                    bounding_box_fill.Material = Enum.Material[option] 
                end})                
        local column = Aiming:column()
            column:section({name = "Silent Aim"})  
                :toggle({name = "Enabled", flag = "silent_aim"})
                :dropdown({name = "Prediction Type", flag = "silent_aim_velocity_type", items = {"Recalculation", "Velocity"}, multi = false})
                :toggle({name = "Auto Prediction", flag = "silent_use_auto_prediction"})
                :slider({min = 0, max = 500, default = 500, interval = 1, suffix = "Â°", flag = "silent_ping_factor"})
                :dropdown({name = "Aim Bone", flag = "silent_aim_bone", items = {"Feet", "Hrp", "Arms", "Legs", "Torso", "Head"}, default = {"Hrp"}, multi = true})
                :dropdown({name = "Air Bone", flag = "silent_aim_air_bone", items = {"Feet", "Hrp", "Arms", "Legs", "Torso", "Head"}, default = {"Feet"}, multi = true})
                :textbox({name = "Manual Prediction", flag = "silent_manual_prediction"})
            column:section({name = "Aim Assist"})  
                :toggle({name = "Aim Assist", flag = "aim_assist"})
                :slider({name = "Smoothing", min = 0, max = 1, default = 0.01, interval = 0.01, suffix = "Â°", flag = "smoothing_factor"})
                :toggle({name = "Adjust For Jumping", flag = "adjust_for_jumping"})
                :dropdown({name = "Air Part", items = {"Feet", "Hrp", "Arms", "Legs", "Torso", "Head"}, flag = "aim_assist_air_bone", multi = true})
                :dropdown({name = "Hit Part", flag = "aim_assist_bone", items = {"Feet", "Hrp", "Arms", "Legs", "Torso", "Head"}, default = {"Torso"}, multi = true})
                :dropdown({name = "Prediction Type", flag = "aim_assist_velocity_type", items = {"Velocity", "Recalculation"}, multi = false})
                :toggle({name = "Auto Prediction", flag = "aim_assist_auto_prediction"})
                :slider({name = "Ping Factor", min = 0, max = 1500, default = 1500, interval = 1, flag = "aim_assist_ping_factor"})
                :textbox({name = "Manual Prediction", flag = "aim_assist_prediction"})
    -- 

    -- Rage
        local column =  Rage:column() 
            column:section({name = "Desync"})
                :toggle({name = "Enabled", flag = "hrp_spoof", callback = function(Bool)
                    if flags["hrp_spoof"] and flags["hrp_spoof_bind"].active then 
                        desync.main_enabled = true 
                    else 
                        desync.main_enabled = false 
                    end 
                end})
                :keybind({name = "Spoofer", flag = "hrp_spoof_bind", callback = function(Bool)
                    if flags["hrp_spoof"] and flags["hrp_spoof_bind"].active then 
                        desync.main_enabled = true 
                    else 
                        desync.main_enabled = false 
                    end 
                end})
                :dropdown({name = "Position Preset", items = {"None", "Target Strafe"}, default = "None", flag = "desync_position_preset"})
                :dropdown({name = "Rotation Preset", items = {"None", "Back", "Lay", "Shinji", "Jitter", "Spin", "Random"},  default = "None", flag = "desync_rotation_preset"})
                :dropdown({name = "Mode", items = {"Always", "Standing Only", "Moving Only", "Target Only"}, default = "Always", flag = "desync_mode"})
                :toggle({name = "Attach To Target", flag = "attach_to_target"}) 
                :toggle({name = "X", flag = "custom_x_enabled"})
                :slider({min = -100, max = 100, default = 0, interval = 1, suffix = "st", flag = "custom_x"})
                :dropdown({name = "Type", default = "Normal", items = {"Normal", "Lerp", "Random"}, flag = "custom_x_type"})
                :slider({name = "Lerp Speed", min = 0, max = 5, default = 0, interval = 0.05, suffix = "m/s", flag = "custom_x_lerp_speed"})
                :toggle({name = "Y", flag = "custom_y_enabled"})
                :slider({name = "Magnitude", min = -100, max = 100, default = 0, interval = 1, suffix = "st", flag = "custom_y"}) 
                :dropdown({name = "Type", items = {"Normal", "Lerp", "Random"}, default = "Normal", flag = "custom_y_type"})
                :slider({name = "Lerp Speed", min = 0, max = 5, default = 0, interval = 0.05, flag = "custom_y_lerp_speed"})
                :toggle({name = "Z", flag = "custom_z_enabled"})
                :slider({name = "Magnitude", min = -100, max = 100, default = 0, interval = 1, suffix = "st", flag = "custom_z"})
                :dropdown({name = "Type", items = {"Normal", "Lerp", "Random"}, default = "Normal", flag = "custom_z_type"})
                :slider({name = "Lerp Speed", min = 0, max = 5, default = 0, interval = 0.05, suffix = "m/s", flag = "custom_z_lerp_speed"})
                :toggle({name = "Custom Rotation", flag = "custom_rotation"})
                :slider({name = "Pitch", min = -180, max = 180, default = 0, interval = 1, suffix = "Â°", flag = "pitch"})
                :slider({name = "Yaw", min = -180, max = 180, default = 0, interval = 1, suffix = "Â°", flag = "yaw"})
                :slider({name = "Roll", min = -180, max = 180, default = 0, interval = 1, suffix = "Â°", flag = "roll"})
                :slider({name = "Spin & Strafe Speed", min = -100, max = 100, default = 0, interval = 1, suffix = "st", flag = "desync_strafe_speed"})
        local column =  Rage:column() 
                column:section({name = "Other"})
                    :toggle({name = "Visualize Hrp Spoofer", flag = "desync_visualize", callback = desync.update_cham_properties, default = true, default = true})
                    :colorpicker({name = "Visualizer Color", flag = "desync_part_color", color = rgb(255, 0, 0), callback = desync.update_cham_properties})
                    :toggle({name = "Highlight", flag = "desync_cham_highlight", default = true, callback = desync.update_cham_properties})
                    :colorpicker({name = "Fill Color", flag = "desync_visualizer_fill", color = rgb(0, 255, 255), alpha = 0.5, callback = desync.update_cham_properties})
                    :colorpicker({name = "Outline Color", flag = "desync_visualizer_outline", color = rgb(0, 0, 0), callback = desync.update_cham_properties})
                    :dropdown({name = "Material", flag = "desync_cham_material", items = {"ForceField", "Neon", "Plastic", "Glass"}, default = "ForceField", callback = desync.update_cham_properties})
                    :slider({name = "Reflectance", flag = 'desync_cham_reflectance', min = 0, max = 1, Default = 0, interval = 0.01, Suffix = "", callback = desync.update_cham_properties})
                    :dropdown({name = "Texture", flag = "desync_material_texture", items = {"Web", "Swirl", "Checkers", "CandyCane", "Dots", "Scanning", "Bubbles", "Normal", "Shield", "Water", "None"}, default = "None", callback = desync.update_cham_properties})
                    :toggle({name = "Destroy Cheaters", flag = "destroy_cheaters", callback = function(Bool)
                        if flags["destroy_cheaters"] and flags["destroy_cheaters_bind"].active then 
                            desync.dc_enabled = true 
                        else 
                            desync.dc_enabled = false 
                        end 
                    end})
                    :keybind({name = "Destroy Cheaters", flag = "destroy_cheaters_bind", callback = function(Bool)
                        if flags["destroy_cheaters"] and flags["destroy_cheaters_bind"].active then 
                            desync.dc_enabled = true 
                        else 
                            desync.dc_enabled = false 
                        end 
                    end})
                    :slider({name = "Interval", min = 1, max = 200, default = 0, interval = 1, suffix = "ms", flag = "destroy_cheaters_interval"})
                    :dropdown({name = "Type", items = {"Nan", "High Magnitude", "Line Rendering Zone", "Randomize"}, default = "Randomize", flag = "destroy_cheaters_type"})
                    :slider({name = "Minimum Health", min = 0, max = 100, default = 0, interval = 1, flag = "destroy_cheaters_min_health"})
    -- 

    -- Misc
        local column = Misc:column()
            column:section({name = "Combat"})
                :toggle({name = "Speed", flag = "cframe_speed"})
                :keybind({name = "Speed", flag = "cframe_speed_bind", mode = "toggle"})
                :slider({name = "Amount", flag = 'speed_increments', min = 0, max = 100, default = 10, interval = 1})
                :toggle({name = "Auto Jump", flag = "auto_jump"})
                :toggle({name = "Fly", flag = "fly"})
                :keybind({name = "Fly", flag = "fly_bind", mode = "toggle"})
                :slider({name = "Amount", flag = 'fly_increments', min = 0, max = 100, default = 20, interval = 1})
                :toggle({name = "No Slow", flag = "no_slow"})
                :toggle({name = "No Jump Cooldown", flag = "no_jump_cooldown", callback = function(bool)
                    lp.Character.Humanoid.UseJumpPower = not bool
                end})
                :toggle({name = "Auto Reload", flag = "auto_reload"})
                :toggle({name = "Auto Shoot", flag = "auto_shoot", callback = function(bool)
                    if not bool then 
                        local handle = utility.get_tool_handle()
                        local gun = handle and handle.Parent 
                        
                        if gun then 
                            gun:Deactivate()
                        end 
                    end 
                end})
                :slider({name = "Delay", flag = 'auto_shoot_delay', min = 0, max = 1000, default = 50, interval = 1, suffix = "ms"})
                :toggle({name = "Auto Armor", flag = "auto_armor"})
                :toggle({name = "Anti Void Kill", flag = "anti_void_kill", callback = function(bool)
                    ws.FallenPartsDestroyHeight = bool and -50000 or -500
                end})
                -- :toggle({name = "Anti Stomp", flag = "anti_stomp"})
                :toggle({name = "Infinite Zoom", flag = "infinite_zoom", callback = function(bool)
                    lp.CameraMaxZoomDistance = bool and 9e9 or 30
                end})
                :toggle({name = "Show Chat", flag = "show_chat", callback = function(bool)
                    lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = bool 
                end})
        local column = Misc:column()    
            column:section({name = "Other"})
                :toggle({name = "Hit Detection", flag = "hit_detection"})
                :toggle({name = "Hit Chams", flag = "hit_cham"})
                :colorpicker({color = rgb(255, 255, 255), flag = "hit_chams"})
                :toggle({name = "Highlight", flag = "hit_cham_highlight", callback = function(bool)
                    hit_cham_highlight.Enabled = bool 
                end})
                :colorpicker({name = "fill", color = rgb(255, 255, 255), flag = "hit_chams_fill", callback = function(color, alpha)
                    hit_cham_highlight.FillTransparency = 1 - alpha
                    hit_cham_highlight.FillColor = color  
                end})
                :colorpicker({name = "outline", color = rgb(255, 255, 255), flag = "hit_chams_outline", callback = function(color, alpha)
                    hit_cham_highlight.OutlineTransparency = alpha
                    hit_cham_highlight.OutlineColor = color  
                end})
                :dropdown({name = "Material", flag = "hit_material", items = {"ForceField", "Neon", "Plastic"}, default = "ForceField"})
                :slider({name = "Reflectance", flag = 'hit_reflectance', min = 0, max = 1, default = 0, interval = 0.01})
                :dropdown({name = "Texture", flag = "hit_texture", items = {"Web", "Swirl", "Checkers", "CandyCane", "Dots", "Scanning", "Bubbles", "Normal", "Shield", "Water", "None"}, default = "None", })
                :dropdown({name = "Hit Effect", flag = "hit_effect", items = {"None", "Detailed Slash", "Electric", "Electric 2", "Nova", "Slash", "Sparkle", "Splash"}, default = "None"})
                :colorpicker({color = rgb(255, 255, 255), flag = "hit_effect_settings"})
                -- :toggle({name = "Hit Logs", flag = "hit_logs"})
                :colorpicker({color = rgb(255, 255, 255), flag = "hit_logs_color"})
                --:toggle({name = "Hit Marker", flag = "hit_marker", })
                --:colorpicker({color = rgb(255, 255, 255), flag = "hit_marker_color"})
                :toggle({name = "3D Hit Marker", flag = "3d_hit_marker"})
                :colorpicker({color = rgb(255, 255, 255), flag = "3d_hit_markers"})
                :toggle({name = "Health Marker", flag = "health_indicator", })
                :colorpicker({color = rgb(255, 255, 255), flag = "health_indicator_color"})
                :slider({name = "Lifetime", flag = 'on_hit_lifetime', min = 0, max = 10, default = 2, interval = 0.05, suffix = "s"})
                :toggle({name = "Hit Sound", flag = "hit_sound"})
                :slider({name = "Volume", flag = 'hit_sound_volume', min = 0, max = 10, default = 1, interval = 0.05, callback = function(float)
                    hit_sound_item.Volume = float 
                end})
                :slider({name = "Pitch", flag = 'hit_sound_pitch', min = 0, max = 10, default = 1, interval = 0.05, callback = function(float)
                    hit_sound_pitch.Octave = float 
                end})
                :dropdown({name = "Hit Sound", flag = "Hit Sound", items = sounds, scrolling = true, default = "1nn.mp3", callback = function(option)
                    pcall(function()
                        hit_sound_item.SoundId = getcustomasset(library.directory .. "/sounds/" .. option)
                    end)
                end})
                -- :toggle({name = "Shit Talk", flag = "shit_talk"})
                -- :slider({name = "Delay", flag = 'shit_talk_delay', min = 0, max = 1, default = 0, interval = 0.01, suffix = "s"})
                -- :label({name = "GOTO NEBULA DIRECTORY TO EDIT"})
                :toggle({name = "Aspect Ratio", flag = "aspect_ratio"})
                :slider({name = "Horizontal", flag = 'horizontal_aspect_ratio', min = 0, max = 1, default = 1, interval = 0.01})
                :slider({name = "Vertical", flag = 'vertical_aspect_ratio', min = 0, max = 1, default = 1, interval = 0.01})  
    --  

    -- Visuals
        local column =  Visuals:column() 
            column:section({name = "Esp"})
                :toggle({name = "Enabled", flag = "esp_enabled", callback = function(bool)
                    esp_holder.Enabled = bool
                end})
                :toggle({name = "Names", flag = "show_names"})
                :colorpicker({color = rgb(255, 255, 255), flag = "show_names_color"})
                -- :toggle({name = "Distance", flag = "show_distance"})
                :colorpicker({color = rgb(255, 255, 255), flag = "show_distance_color"})
                :toggle({name = "Weapon", flag = "gun_text"})
                :colorpicker({color = rgb(255, 255, 255), flag = "show_weapon_color"})
                :toggle({name = "Bounding Boxes", flag = "bounding_box"})
                :colorpicker({name = "Fill Color", color = rgb(255, 255, 255), flag = "bounding_box_color1"})
                :toggle({name = "Box Fill", flag = "filled_box"})
                :colorpicker({name = "High Contrast", color = rgb(0, 0, 0), flag = "filled_box_color1"})
                :colorpicker({name = "Low Contrast", color = rgb(255, 255, 255), flag = "filled_box_color2"})
                :toggle({name = "Animation", flag = "filled_box_animation"})
                :slider({name = "Animation Speed", flag = 'filled_box_speed', min = -180, max = 180, default = 0, interval = 1, suffix = ""})
                :slider({name = "Custom Rotation", flag = 'filled_box_rotation', min = -180, max = 180, default = 0, interval = 1, suffix = ""})
                :dropdown({name = "Type", flag = "bounding_box_type", items = {"Corner", "Bounding"}, default = "Bounding"})
                :toggle({name = "Healthbar", flag = "health_bar"})        
                :colorpicker({color = rgb(0,255,0), flag = "health_bar_high"})
                :colorpicker({color = rgb(255,0,0), flag = "health_bar_low"})
                :toggle({name = "Health Number", flag = "health_number"})
                :toggle({name = "Armor Bar", flag = "armor_bar"})    
                :colorpicker({color = rgb(0,0,255), flag = "armor_bar_color"})
                :toggle({name = "Number", flag = "armor_bar_number"})
                :toggle({name = "Reload Bar", flag = "reload_bar"})    
                :colorpicker({color = rgb(0,255,255), flag = "reload_bar_color1"})
                :toggle({name = "Number", flag = "reload_bar_number"})
                :toggle({name = "Icons", flag = "gun_icons"})
                :colorpicker({name = "Gun Images Color", color = rgb(255,255,255), flag = "gun_icons_color"})
                :toggle({name = "Chams", callback = function(bool)
                    __cham__.Enabled = bool
                end})
                :colorpicker({name = "Chams Fill", color = rgb(102, 60, 153), alpha = 0.5, flag = "chams_fill", callback = function(color, alpha)
                    __cham__.FillColor = color
                    __cham__.FillTransparency = 1 - alpha
                end})
                :colorpicker({name = "Chams Outline", color = rgb(0, 0, 0), alpha = 1, flag = "chams_outline", callback = function(color, alpha)
                    __cham__.OutlineColor = color
                    __cham__.OutlineTransparency = 1 - alpha
                end})
            column:section({name = "Effects"})
                :toggle({name = "Character Chams", flag = "character_chams", callback = local_player.update_visuals})
                :colorpicker({color = rgb(255, 255, 255), flag = "character_chams_color",  callback = local_player.update_visuals})
                :dropdown({name = "Texture", flag = "localplayer_texture", items = {"Web", "Swirl", "Checkers", "CandyCane", "Dots", "Scanning", "Bubbles", "Normal", "Shield", "Water", "None"}, default = "None",  callback = local_player.update_visuals})
                :toggle({name = "Highlight", flag = "character_highlight"})
                :colorpicker({color = rgb(102, 60, 153), alpha = 0.5, flag = "character_fill",  callback = local_player.update_visuals})
                :colorpicker({color = rgb(0, 0, 0), alpha = 1, flag = "character_outline",  callback = local_player.update_visuals})
                :toggle({name = "Accessory Chams", flag = "accessory_chams",  callback = local_player.update_hats})
                :colorpicker({color = rgb(255, 255, 255), flag = "accessory_chams_color",  callback = local_player.update_hats})
                :toggle({name = "Gun Chams", flag = "gun_chams", callback = local_player.update_gun})
                :colorpicker({color = rgb(255, 255, 255), flag = "gun_color",  callback = local_player.update_gun})
                :dropdown({name = "Material", flag = "gun_material", items = {"ForceField", "Neon", "Plastic"}, default = "ForceField",  callback = local_player.update_gun})
                :slider({name = "Reflectance", flag = 'gun_reflectance', Min = 0, Max = 1, default = 0, interval = 0.01, suffix = "",  callback = local_player.update_gun})
                :dropdown({name = "Texture", flag = "gun_texture", items = {"Web", "Swirl", "Checkers", "CandyCane", "Dots", "Scanning", "Bubbles", "Normal", "Shield", "Water", "None"}, flag = "gun_texture", default = "None",  callback = local_player.update_gun})
                :toggle({name = "Only Highlight Gun", flag = "gun_highlight",  callback = local_player.update_gun})
                :dropdown({name = "Trail", flag = "local_trail", items = {"None", "Basic", "Bright", "Shadow", "Dash"}, default = "None", callback = trails.apply_trail})

        local column =  Visuals:column() 
            column:section({name = "World"})
                -- :label({name = "oops forgor :3 >_<"})
                :toggle({name = "Ambience", flag = "ambient", callback = visuals.update_world})
                :colorpicker({color = rgb(255, 255, 255), flag = "outdoor_ambience", callback = visuals.update_world})
                :colorpicker({color = rgb(255, 255, 255), flag = "indoor_ambience", callback = visuals.update_world})
                :toggle({name = "Force Time Of Day", flag = "force_day", callback = visuals.update_world})
                :slider({flag = 'time_of_day', min = 0, max = 24, default = 12, interval = 1, suffix = "hr", callback = visuals.update_world})
                :toggle({name = "Fog", flag = "fog", callback = visuals.update_world})
                :colorpicker({color = rgb(255, 255, 255), flag = "fog_color", callback = visuals.update_world})
                :slider({name = "Start", flag = 'fog_start', min = 0, max = 5000, default = 0, interval = 0.01, suffix = "st", callback = visuals.update_world})
                :slider({name = "End", flag = 'fog_end', min = 0, max = 5000, default = 1500, interval = 0.01, suffix = "st", callback = visuals.update_world})
                :toggle({name = "Color Correction", flag = "color_correction", callback = visuals.update_world})
                :toggle({name = "Tint", flag = "tint", callback = visuals.update_world})
                :colorpicker({color = rgb(255, 255, 255), flag = "correction_tint", callback = visuals.update_world})
                :slider({name = "Saturation", flag = 'correction_saturation', min = -2, max = 2, default = 0, interval = 0.01, callback = visuals.update_world})
                :slider({name = "Contrast", flag = 'correction_contrast', min = -1, max = 1, default = 0, interval = 0.01, callback = visuals.update_world})
                :slider({name = "Brightness", flag = 'correction_brightness', min = 0, max = 1, default = 0, interval = 0.01, callback = visuals.update_world})
                :toggle({name = "Atmosphere", flag = "atmosphere", callback = visuals.update_world})
                :colorpicker({name = "Atmospheric Ambience", color = rgb(255, 255, 255), flag = "atmosphere_ambience", callback = visuals.update_world})
                :colorpicker({name = "Atmospheric Decay", color = rgb(255, 255, 255), flag = "atmosphere_decay", callback = visuals.update_world})
                :slider({name = "Atmosphere Glare", flag = 'glare', min = 0, max = 1, default = 0, interval = 0.01, callback = visuals.update_world})
                :slider({name = "Atmosphere Haze", flag = 'haze', min = 0, max = 1, default = 0, interval = 0.01, callback = visuals.update_world})
                :slider({name = "Atmosphere Density", flag = 'density', min = 0, max = 1, default = 0, interval = 0.01, callback = visuals.update_world})
                :toggle({name = "Bloom", flag = "bloom", callback = visuals.update_world})
                :slider({name = "Threshold", flag = 'bloom_threshold', min = 0, max = 1, default = 0.3, interval = 0.01, callback = visuals.update_world})
                :slider({name = "Size", flag = 'bloom_size', min = 0, max = 1000, default = 1000, interval = 1, callback = visuals.update_world})
                :slider({name = "Intensity", flag = 'bloom_intensity', min = 0, max = 1000, default = 1, interval = 1, callback = visuals.update_world})
                :toggle({name = "Bullet Tracers", flag = "beam_enabled", callback = visuals.update_world})
                :colorpicker({color = rgb(255, 255, 255), flag = "beam_settings0", callback = visuals.update_world})
                :colorpicker({color = rgb(255, 255, 255), flag = "beam_settings1", callback = visuals.update_world})
                :slider({name = "Lifetime", flag = "beam_lifetime", min = 0, max = 10, default = 5, interval = 0.01, suffix = "s"})
                :slider({name = "Width", flag = "beam_width", min = 0, max = 10, default = 1, interval = 0.01, suffix = "studs"})
                :slider({name = "Brightness", flag = "beam_brightness", min = 0, max = 10, default = 1, interval = 0.01})
                :slider({name = "Light Emission", flag = "beam_emission", min = 0, max = 10, default = 1, interval = 0.01})
                :slider({name = "Light Influence", flag = "beam_influence", min = 0, max = 10, default = 1, interval = 0.01})
                :slider({name = "Texture Speed", flag = "beam_speed", min = 0, max = 10, default = 0.5, interval = 0.01})
                :slider({name = "Texture Length", flag = "beam_length", min = 0, max = 10, default = 2, interval = 0.01})
                :slider({name = "Start Curve", flag = "beam_curve0", min = 0, max = 10, default = 0.5, interval = 0.01})
                :slider({name = "End Curve", flag = "beam_curve1", min = 0, max = 10, default = 0.5, interval = 0.01})
                :slider({name = "Segments", flag = "beam_segments", min = 0, max = 100, default = 5, interval = 1})
                :toggle({name = "Face Camera", flag = "beam_face_camera", default = true})
                :dropdown({name = "Texture", flag = "beam_texture", items = {"Double Helix", "Electric", "Electric + Glow", "Fade", "Pulsate", "Red Lazer", "Smoke", "Warp", "1", "2", "3"}, default = "Double Helix"})
    --

    -- -- Players
    --     local column = Players:column()
    --         column:section({name = "Options"})
    --             :playerlist({})
    --             :toggle({name = "Auto Stomp"})
    --             :toggle({name = "Auto Grab"})
    --             :button_holder()
    --             :button({name = "Set Priority"})
    --             :button({name = "Set Friendly"})
    --             :button_holder()
    --             :button({name = "Set Friend"})
    --             :button({name = "Set Enemy"})
    -- -- 

    -- Settings
        local column = Settings:column()
            local section = column:section({name = "Options"})
                local old_config = library:get_config()
                _, config_holder = section:list({flag = "config_name_list"})
                section:textbox({flag = "config_name_text_box"})
                section:button_holder({})
                section:button({name = "Create", callback = function()
                    writefile(library.directory .. "/configs/" .. flags["config_name_text_box"] .. ".cfg", library:get_config())
                    library:config_list_update()
                end})
                section:button({name = "Delete", callback = function()
                    delfile(library.directory .. "/configs/" .. flags["config_name_list"] .. ".cfg")
                    library:config_list_update()
                end})
                section:button_holder({})
                section:button({name = "Load", callback = function()
                    library:load_config(readfile(library.directory .. "/configs/" .. flags["config_name_list"] .. ".cfg"))
                end})
                section:button({name = "Save", callback = function()
                    writefile(library.directory .. "/configs/" .. flags["config_name_text_box"] .. ".cfg", library:get_config())
                    library:config_list_update()
                end})
                section:button_holder({})
                section:button({name = "Unload Config", callback = function()
                    library:load_config(old_config)
                end})
                section:button({name = "Unload Menu", callback = function()
                    for _, gui in next, library.guis do 
                        gui:Destroy() 
                    end 

                    for _, connection in next, library.connections do 
                        connection:Disconnect() 
                    end     

                    for _, instance in next, nebula.instances do 
                        instance:Destroy() 
                    end 

                    for _, drawing in next, nebula.drawings do 
                        drawing:Remove()
                    end 
                end})
        local column = Settings:column()
            column:section({name = "Theme"})
                :label({name = "Accent"})
                :colorpicker({name = "Accent", color = themes.preset.accent, flag = "accent", callback = function(color, alpha)
                    library:update_theme("accent", color)
                end})
                :label({name = "Contrast"})
                :colorpicker({name = "Low", color = themes.preset.low_contrast, flag = "low_contrast", callback = function(color)
                    if (flags["high_contrast"] and flags["low_contrast"]) then 
                        library:update_theme("contrast", rgbseq{
                            rgbkey(0, flags["low_contrast"].Color),
                            rgbkey(1, flags["high_contrast"].Color)
                        })
                    end 
                end})
                :colorpicker({name = "High", color = themes.preset.high_contrast, flag = "high_contrast", callback = function(color)
                    library:update_theme("contrast", rgbseq{
                        rgbkey(0, flags["low_contrast"].Color),
                        rgbkey(1, flags["high_contrast"].Color)
                    })
                end})
                :label({name = "Inline"})
                :colorpicker({name = "Inline", color = themes.preset.inline, callback = function(color, alpha)
                    library:update_theme("inline", color)
                end})
                :label({name = "Outline"})
                :colorpicker({name = "Outline", color = themes.preset.outline, callback = function(color, alpha)
                    library:update_theme("outline", color)
                end})
                :label({name = "Text Color"})
                :colorpicker({name = "Main", color = themes.preset.text, callback = function(color, alpha)
                    library:update_theme("text", color)
                end})
                :colorpicker({name = "Outline", color = themes.preset.text_outline, callback = function(color, alpha)
                    library:update_theme("text_outline", color)
                end})
                :label({name = "Glow"})
                :colorpicker({name = "Glow", color = themes.preset.glow, callback = function(color, alpha)
                    library:update_theme("glow", color)
                end})
                :label({name = "UI Bind"})
                :keybind({callback = function(bool)
                    library.frame.Enabled = bool
                end})
                :toggle({name = "Keybind List", flag = "keybind_list", callback = function(bool)
                    library.keybind_list_frame.Visible = bool
                end})
                
    -- 

    Aiming.open_tab() 

    task.spawn(function()
        while task.wait(1) do 
            watermark.change_text(os.date('nebula.tech - Beta - %b %d %Y - %H:%M:%S'))
        end 
    end) 
-- 

-- looped code / hooks
    library:connection(run.heartbeat, LPH_NO_VIRTUALIZE(function(delta)
        nebula.delta = delta
        nebula.radians += flags["desync_strafe_speed"]

        -- aimbot frame work 
            target_selection.think()
        -- 

        -- desync frame work 
            desync.think()

            networking.think() -- network
        -- 
    end))

    library:connection(uis.InputBegan, LPH_NO_VIRTUALIZE(function(_, game_processed_event)
        nebula.typing_check = game_processed_event
    end))

    library:connection(run.heartbeat, LPH_NO_VIRTUALIZE(function(delta)
        misc.speed() 

        misc.auto_jump()
        
        misc.fly(delta) 

        misc.auto_shoot()

        misc.auto_armor()

        misc.no_slow() 
    end))
    
    library:connection(ws.Ignored.Siren.Radius.ChildAdded, LPH_NO_VIRTUALIZE(function(instance)
        if instance.Name == "explosion" then return end 
                
        local gun_beam = instance:WaitForChild("GunBeam") 
        local owner = instance:GetAttribute("OwnerCharacter")

        if owner == lp.Name then 
            hit_detection.origin = gun_beam.Attachment0.WorldCFrame.p
            hit_detection.end_point = gun_beam.Attachment1.WorldCFrame.p
            
            if flags["beam_enabled"] then 
                gun_beam.Transparency = numseq{
                    numkey(0, 1),
                    numkey(1, 1)
                }
                visuals.new_beam(hit_detection.origin, hit_detection.end_point)
            end 

            if flags["hit_detection"] then 
                local player = hit_detection.detect_closest_health_change(hit_detection.end_point, 20)

                if player then 
                    hit_detection.current_player = player 

                    hit_detection.init()
                end 
            end 
        end 
    end))

    library:connection(run.RenderStepped, function()
        hit_detection.update_data_table() 

        misc.edit_aspect_ratio() 
    end)

    library:connection(players.PlayerAdded, LPH_NO_VIRTUALIZE(function(player)
        esp:create_player(player)
    end))
    
    library:connection(players.PlayerRemoving, LPH_NO_VIRTUALIZE(function(player)
        esp:remove_player(player)
    end))
--

-- hooks 
    local old_namecall; 
    old_namecall = hookmetamethod(game, "__namecall", newcclosure(LPH_NO_VIRTUALIZE(function(self, ...)
        local method = getnamecallmethod() 

        if true then 
            if self.Name == "MainEvent" and flags["silent_aim"] and target and target.Character and method == "FireServer" then 
                local args = {...}

                silent_aim.calculate_destination()

                silent_aim.calculate_velocity(nebula.delta) 

                if args[1] == "UpdateMousePosI2" then 
                    if silent_aim.destination then 
                        args[2] = silent_aim.destination + (silent_aim.velocity * silent_aim.prediction)
                    end 
                end

                return old_namecall(self, unpack(args))
            end
        end 
        
        return old_namecall(self, ...)
    end)))

    -- camera hook
    local old 
    old = hookmetamethod(game, "__index", LPH_NO_VIRTUALIZE(function(self, key)
        if not checkcaller() then
            if key == "CFrame" and lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") and self == lp.Character.HumanoidRootPart and ((desync.is_enabled() or desync.is_dc()) and desync.state()) then 
                return desync.old_position
            end 
        end
        return old(self, key)
    end))
-- 

library:config_list_update()