loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua",true))()

getgenv().Sage = {
    ["Startup"] = {
        Intro = true, -- // Soon
        Stats = false,
        SerialKey = "ur_key_here", -- // ur whitelist key
        Internal = true, -- // A Gui
        BypassNewestAntiCheat = false, -- // Fuck Up Benoxa
        FPS_Boost = true, -- // the real fps booster
        Notification_Enabled = true,
        Notification_Type = "Xaxa",
        Notification_Duration = 3
    },
    ["Silent"] = {
        Enabled = true,
        Mode = "Namecall", --index,namecal
        Type = "Target", -- // Target, FOV
        Notify = true,
        LookAt = true,
        Hitbox = false,
        HitboxColor = Color3.new(1,1,1),
        HitboxMaterial = "ForceField",
        Forcefield = false,
        ForcefieldColor = Color3.new(1,1,1),
        ForcefieldMaterial = "ForceField",
        Line = true,
        Dot = true,
        BoxFOV = false,
        AutoStomp = false,
        Hit_Chance = 100,
        ViewAt = false,
        AntiCurve = false,
        ["AntiAimViewer"] = {
            -- // Dont Use This In Da Hood!! ( U Will Get 50% Banned )
            Enabled = false, -- // Break Silent Dont Use Rn! (Still Fixing)
            MouseArguments = "UpdateMousePosI"
        },
        ["AimPart"] = {
            Aimpart = "HumanoidRootPart",
            ClosestPart = false,
            ClosestPoint = false,
        },
        ["Resolving"] = {
            Enabled = true,
            Method = "Blackie",
            Positive = 70,
            Negative = -20
        },
        ["Prediction"] = {
            Horizontal = 0.1356875,
            Vertical = 0.1356875
        },
        ["FOV"] = {
            Enabled = false,
            Type = "Middle", -- // Middle, Mouse
            Size = 20,
            Filled = false,
            Thickness = 0.66,
            Transparency = 0.9,
            Color = Color3.fromRGB(255, 255, 255)
        },
        ["AutoPrediction"] = {
            Enabled = false,
            Type = "Normal", --//Normal, Custom
            ping20_30 = 0.12588,
            ping30_40 = 0.11911,
            ping40_50 = 0.12471,
            ping50_60 = 0.13766,
            ping60_70 = 0.13731,
            ping70_80 = 0.13951,
            ping80_90 = 0.14181,
            ping90_100 = 0.148,
            ping100_110 = 0.156,
            ping110_120 = 0.1567,
            ping120_130 = 0.1601,
            ping130_140 = 0.1637,
            ping140_150 = 0.173,
            ping150_160 = 0.1714,
            ping160_170 = 0.1863,
            ping170_180 = 0.1872,
            ping180_190 = 0.1848,
            ping190_200 = 0.1865
        }
    },
    ["Camlock"] = {
        Enabled = false,
        Locking = true,
        Type = "Target", -- // Target, FOV
        Notify = false,
        Unlock_On_KO = true, -- // Unlocks when target dies
        Unlock_Outside_FOV = false, -- // Will unlock when the target leaves your fov
        Unlock_Behind_Wall = false, -- // Will unlock when the target goes behind a wall
        Only_Enable_While_Holding_Gun = false,
        Disable_When_Typing = false,
        Disable_When_Reloading = false,
        ["AimPart"] = {
            Aimpart = "HumanoidRootPart",
            ClosestPart = true,
            ClosestPoint = false,
        },
        Frame = {
        ['Enabled'] = true,
        ['Prediction'] = 64,
        ['Strength'] = 87,
        ['Min'] = 28,
        ['Max'] = 174,
    },
        ["Smoothing"] = {
            SmoothnessValue = 0.6,
            EasingStyle = "Sine",
            EasingDirection = "InOut"
        },
        ["Prediction"] = {
            Horizontal = 0.185,
            Vertical = 0.1
        },
        ["Resolving"] = {
            Enabled = true,
            Method = "Blackie",
            Positive = 70,
            Negative = -20
        },
        ["FOV"] = {
            Enabled = false,
            Size = 60,
            Type = "Middle",
            Filled = false,
            Sides = 25,
            Thickness = 1,
            Transparency = 1,
            Color = Color3.fromRGB(0, 71, 171)
        },
        ["AutoPrediction"] = {
            Enabled = true,
            Type = "Normal", --//Normal, Custom
            ping20_30 = 0.12588,
            ping30_40 = 0.11911,
            ping40_50 = 0.12471,
            ping50_60 = 0.12766,
            ping60_70 = 0.12731,
            ping70_80 = 0.12951,
            ping80_90 = 0.13181,
            ping90_100 = 0.138,
            ping100_110 = 0.146,
            ping110_120 = 0.1367,
            ping120_130 = 0.1401,
            ping130_140 = 0.1437,
            ping140_150 = 0.153,
            ping150_160 = 0.1514,
            ping160_170 = 0.1663,
            ping170_180 = 0.1672,
            ping180_190 = 0.1848,
            ping190_200 = 0.1865
        },
        ["Shake"] = {
            Enabled = false,
            X = 100,
            Y = 100,
            Z = 100 --dont touch
        }
    },
    ["Distances"] = {
        -- // used for silent and camlock advanced pred (each number key from this table is gonna be a magnitude comparision)
        Far = 55,
        Mid = 25,
        Close = 15
    },
    ["TriggerBot"] = {
        Enabled = false,
        Delay = 0.1
    },
    RageBot = {
       Enabled = false,
       AutoShoot = true,
       Radius = 150,
    },
    ["Checks"] = {
        ["Silent"] = {
            ["Whitelist"] = {
                -- // Will only lock onto people whitelisted,
                Enabled = false,
                Usernames = {} -- // Ex "Username1", "Username2", "Username3"
            },
            ["Blacklist"] = {
                -- // Will not lock onto peopled blacklisted,
                Enabled = false,
                Usernames = {} -- // Ex "Username1", "Username2", "Username3"
            },
            Wall = true,
            KO = true,
            Knocked = true,
            Visible = true,
            Crew = false,
            Friend = false,
        },
        RageBot = {
           Wall = false,
           Knocked = false,
        },
        ["Camlock"] = {
            ["Whitelist"] = {
                -- // Will only lock onto people whitelisted,
                Enabled = false,
                Usernames = {}
            },
            ["Blacklist"] = {
                -- // Will not lock onto peopled blacklisted,
                Enabled = false,
                Usernames = {}
            },
            Wall = true,
            Visible = true,
            Forcefield = false,
            Knocked = true,
            Friend = false,
        },
        ["Distance"] = {
            -- // Not lock onto people if they are too far away ( camlock / silent )
            Enabled = false,
            Minimum = 10,
            Maximum = 829 -- // Studs
        }
    },
    ["Safety"] = {
        AntiGroundShots = true,
        AntiCurve = true,
        ["ModDetection"] = {
            Enabled = true, -- // Enables / Disable Mod Detection
            Delay = 3, -- // Makes It More Legit For Kick Method
            Rank = 200, -- // Detects If The Users Group Rank Is Higher Then The Number
            Method = "Kick" -- // What Detection It Sends (Kick Only Rn)
        }
    },
    ["Visuals"] = {
        ["OnHit"] = {
            ["HitSound"] = true,
            ["Sound"] = "Bubble", -- // Minecraft, Bameware, Bubble, Pick, Pop, Rust, Sans, Fart, Big, Vine, Bruh, Skeet, Neverlose, Fatality, Bonk
            ["Volume"] = 10,
            ["HitLogs"] = true, -- // Logs when you hit a player
            ["Hit Chams"] = true,
            ["Hit Chams Color"] = Color3.fromRGB(255, 255, 255),
            ["Hit Chams Fading Time"] = 5.0,
            ["Hit Chams Material"] = "Neon",
            ["Hit Effect Enabled"] = true,
            ["Hit Markers Enabled"] = true, -- // soon
            ["Hit Marker Type"] = "ThirdD",
            ["Hit Marker Color"] = Color3.fromRGB(255, 255, 255),
            ["Hit Marker Time"] = 1,
            ["Hit Effect"] = "Nova", -- // Nova, Sparkle, Confetti
            ["Hit Effects Color"] = Color3.fromRGB(255, 255, 255),
            ["Impact Points Enabled"] = true, -- // Only if u hit an player :v
            ["Impact Points Color"] = Color3.fromRGB(255, 255, 255),
            ["Impact Points Material"] = "Neon",
            CustomGunSFX = false,
            GunSoundSFX = "3124331820",
            Bullet_Tracers = true,
            BulletTracerColor = Color3.new(1, 1, 1)
        },
        World = {
            Enabled = false,
            Fog = {
                Enabled = true,
                Color = Color3.new(1, 1, 1),
                End = 1000,
                Start = 10000
            },
            Ambient = {
                Enabled = true,
                Color = Color3.new(1, 1, 1)
            },
            OutdoorAmbient = {
                Enabled = false,
                Color = Color3.new(1, 1, 1)
            },
            ColorShift = {
                Enabled = false,
                Color = Color3.new(1, 1, 1),
                Color2 = Color3.new(1, 1, 1)
            },
            Brightness = {
                Enabled = false,
                Value = 0
            },
            ClockTime = {
                Enabled = false,
                Value = 24
            },
            WorldExposure = {
                Enabled = false,
                Value = -0.1
            }
        },
        ["Local"] = {
            Trail = true,
            JumpCircle = true,
            Highlight = {
                Enabled = nil,
                FillColor = nil,
                OutlineColor = nil
            },
            StompEffect = {
                Enabled = false,
                Type = "Airstrike",
            },
            BodyChams = {
                Enabled = false
            },
            GunChams = {
                Enabled = false,
                Color = nil
            },
            CloneChams = {
                Enabled = nil,
                Duration = nil,
                Color = nil,
                Material = nil
            }
        },
        ["Crosshair"] = {
            Enabled = false,
            Color = Color3.new(1, 1, 1),
            Size = 20,
            Gap = 2,
            Position = "Middle", -- // "Follow Cursor" [DONE], "Follow Tool" [SOON]
            FollowGunOffset = 15,
            Rotation = {
                Enabled = true,
                Speed = 150,
                Max = 340,
                Style = Enum.EasingStyle.Bounce
            },
            Resize = {
                Enabled = true,
                Speed = 150,
                Min = 10,
                Max = 20
            },
            Text = {
                -- // Crosshair Position Must Be "Follow Cursor"
                Enabled = false,
                Pulse = true,
                AttachToTarget = false
            }
        },
        ["InGameCrosshair"] = {
            Enabled = false,
            Invisible = false,
            Rotation = {
                Enabled = false,
                Speed = 4
            }
        }
    },
    ["Displaying"] = {
        ["ESP"] = {
            Enabled = false,
            TeamCheck = true,
            MaxDistance = 200,
            FontSize = 11,
            FadeOut = {
                OnDistance = true,
                OnDeath = false,
                OnLeave = false
            },
            Options = {
                Teamcheck = false,
                TeamcheckRGB = Color3.fromRGB(0, 255, 0),
                Friendcheck = true,
                FriendcheckRGB = Color3.fromRGB(0, 255, 0),
                Highlight = false,
                HighlightRGB = Color3.fromRGB(255, 0, 0)
            },
            Drawing = {
                Chams = {
                    Enabled = true,
                    Thermal = true,
                    FillRGB = Color3.fromRGB(119, 120, 255),
                    Fill_Transparency = 100,
                    OutlineRGB = Color3.fromRGB(119, 120, 255),
                    Outline_Transparency = 100,
                    VisibleCheck = true
                },
                Names = {
                    Enabled = true,
                    RGB = Color3.fromRGB(255, 255, 255)
                },
                Flags = {
                    Enabled = true
                },
                Distances = {
                    Enabled = true,
                    Position = "Text",
                    RGB = Color3.fromRGB(255, 255, 255)
                },
                Weapons = {
            Enabled = true, WeaponTextRGB = Color3.fromRGB(119, 120, 255),
            Outlined = false,
            Icons = true, RGB = Color3.fromRGB(255, 255, 255),
            Gradient = false,
            GradientRGB1 = Color3.fromRGB(255, 255, 255), GradientRGB2 = Color3.fromRGB(119, 120, 255),
        },
                Healthbar = {
                    Enabled = true,
                    HealthText = true,
                    Lerp = false,
                    HealthTextRGB = Color3.fromRGB(119, 120, 255),
                    Width = 2.5,
                    Gradient = true,
                    GradientRGB1 = Color3.fromRGB(200, 0, 0),
                    GradientRGB2 = Color3.fromRGB(60, 60, 125),
                    GradientRGB3 = Color3.fromRGB(119, 120, 255)
                },
                Boxes = {
                    Animate = true,
                    RotationSpeed = 300,
                    Gradient = false,
                    GradientRGB1 = Color3.fromRGB(119, 120, 255),
                    GradientRGB2 = Color3.fromRGB(0, 0, 0),
                    GradientFill = true,
                    GradientFillRGB1 = Color3.fromRGB(119, 120, 255),
                    GradientFillRGB2 = Color3.fromRGB(0, 0, 0),
                    Filled = {
                        Enabled = true,
                        Transparency = 0.75,
                        RGB = Color3.fromRGB(0, 0, 0)
                    },
                    Full = {
                        Enabled = true,
                        RGB = Color3.fromRGB(255, 255, 255)
                    },
                    ThirdD = {
                        Enabled = true,
                        Color = Color3.new(1,1,1),
                        Thickness = 2,
                        Transparency = 1,
                    },
                    Corner = {
                        Enabled = true,
                        RGB = Color3.fromRGB(255, 255, 255)
                    }
                }
            }
        }
    },
    Misc = {
        ["Movement"] = {
            ["Speed"] = {
                ["Enabled"] = true,
                AutoJump = true,
                Float = false,
                FloatHeight = 1,
                ["Amount"] = 1
            }
        },
        ["Exploits"] = {
            ["Enabled"] = true,
            ["NoJumpCooldown"] = true,
            ["NoSlowDown"] = true,
            ["AutoShoot"] = true,
            AutoPickUpMonkey = true,
            AutoStomp = false,
            AutoReload = true,
            AspectRatio = false,
            RatioValue = 100
        }
    },
    ["Antilock"] = {
        Enabled = false, -- // Enable / Disable Desync
        HealthDeActivation = 7, -- // Disables The Desync When Your Health Is That Low
        Visualize = {Enabled = true, Color = Color3.fromRGB(255, 255, 255), Prediction = 0.135}, -- // Shows An Dot Where The Velocity Is
        Method = "", -- // setfflag, Network, Disabler, Underground, Over, Unhittable, Multiplier, Custom
        Power = 5, -- // This Is For Underground, Over, Multiplier, OTHER DOESNT NEED THIS!
        CustomValue = {
            X = 50, -- // How Much Power Is On X
            Y = 50, -- // How Much Power Is On Y
            Z = 50 -- // How Much Power Is On Z
        }
    },
    Desync = {
    PredictionBreaker = {
        Enabled = false,
        UsePreset = true,
        Preset = "Fluctate",
        Velocity = {
            X = 0,
            Y = 0,
            Z = 0
        }
    },
    CripWalk = {
        Enabled = false,
        Tick = 1
    }
},
    CSync = {
        Enabled = false,
        Type = "Random Target",
        Visualize = false,
        VisualizeColor = Color3.fromRGB(100, 81, 195),
        RandomDistance = 16,
        AtachTarget = false,
        Custom = {
            X = 5,
            Y = 5,
            Z = 5
        },
        TargetStrafe = {
            Speed = 10,
            Height = 10,
            Distance = 7
        }
    }
}



local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.Name = "aimlock"
Tool.Parent = game.Players.LocalPlayer.Backpack

local player = game.Players.LocalPlayer

local function connectCharacterAdded()
    player.CharacterAdded:Connect(onCharacterAdded)
end

connectCharacterAdded()

player.CharacterRemoving:Connect(function()
    Tool.Parent = game.Players.LocalPlayer.Backpack
end)

local Target
local AimBot
local LIONISASKID
getgenv().PredictionBackUp = Sage.Silent.Prediction.Horizontal
local mid = workspace.CurrentCamera.ViewportSize * 0.5
local Players, LocalPlayer, Mouse, Workspace, Camera, CoreGui, Lighting, RunService, enabled, CurrentCamera, RotationAngle, Tick, Find =
    game:GetService("Players"),
    game:GetService("Players").LocalPlayer,
    game:GetService("Players").LocalPlayer:GetMouse(),
    game:GetService("Workspace"),
    game:GetService("Workspace").CurrentCamera,
    game:GetService("CoreGui"),
    game:GetService("Lighting"),
    game:GetService("RunService"),
    false,
    game:GetService("Workspace").CurrentCamera,
    -45, 
    tick(),
    table.find
local Wanted, bodyParts, viewportSize = nil, {}, Camera.ViewportSize
local OldWanted = nil
local fakelagTick = 0
local sleepNet = false
local velocities = {}
local positions = {}
local oldVelocities = {}
local velocityDirection = false
local lastVelocities, lastCFrames = {}, {}
local velocityAmount = 1
local fuckyounigga = {"UpdateMousePosI", "UpdateMousePosI1", "GetMousePos", "MousePos", "MOUSE", "MousePosUpdate"}
local Script = {Functions = {}, Friends = {}, Drawing = {}, EspPlayers = {}, SavedValue = {}}
getgenv().cum = {
["sfx"] = {
        ["Bameware"] = "3124331820",
        ["Skeet"] = "4753603610",
        ["Bonk"] = "3765689841",
        ["Lazer Beam"] = "130791043",
        ["Windows XP Error"] = "160715357",
        ["TF2 Hitsound"] = "3455144981",
        ["TF2 Critical"] = "296102734",
        ["TF2 Bat"] = "3333907347",
        ['Bow Hit'] = "1053296915",
        ['Bow'] = "3442683707",
        ['OSU'] = "7147454322",
        ['Minecraft Hit'] = "4018616850",
        ['Steve'] = "5869422451",
        ['1nn'] = "7349055654",
        ['Rust'] = "3744371091",
        ["TF2 Pan"] = "3431749479",
        ["Neverlose"] = "8679627751",
        ["Mario"] = "5709456554",
    },
	["Characters"] = {
		AmongUs = {Vector3.new(0.15,0.15,0.15), "6686375937", "6686375902"}, 
		SpongeBob = {Vector3.new(5,5,5), "5408463358", "5408463211"},
		Patrick = {Vector3.new(0.4,0.4,0.4), "5730253510", "5730253467"}, 
		Maxell = {Vector3.new(0.2,0.2,0.2), "12303996609", "12303996327"},
		Brian = {Vector3.new(1.7,1.7,1.7), "512454212", "512454192"},
		CapyBara = {Vector3.new(2,2,2), "11255227067", "11255226712"},
		Chicken = {Vector3.new(3, 3, 3), "2114220248", "2114220154"},
		Sonic = {Vector3.new(0.15,0.15,0.15), "6901422268", "6901422170"},
	},
	World = {
    	FogColor = Lighting.FogColor,
        FogStart = Lighting.FogStart,
        FogEnd = Lighting.FogEnd,
        OutdoorAmbient = Lighting.OutdoorAmbient,
        ColorShift1 = Lighting.ColorShift_Top,
        ColorShift2 = Lighting.ColorShift_Bottom,
        Ambient = Lighting.Ambient,
        Brightness = Lighting.Brightness,
        ClockTime = Lighting.ClockTime,
        ExposureCompensation = Lighting.ExposureCompensation
     },
}

-- 
local Stomps = {}
do 
	function Stomps:Explode(VictimChar)
        spawn(function()
            local Explosion = game:GetObjects("rbxassetid://12843483581")[1]
            Explosion.Position = VictimChar.UpperTorso.Position
            for i,v in pairs(Explosion:GetChildren()) do
                if v:IsA('Part') then
                    local RandomOffsets = {
                        [3] = {
                            [1] = CFrame.new(0, 0, 0, 0.291951358, -0.454637647, 0.841468394, 0.837198734, -0.303921342, -0.454675913, 0.462452948, 0.837219477, 0.291891754),
                            [2] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                            [3] = CFrame.new(0, 0, 0, 0.980090559, 0.139680177, 0.141109571, -0.159390777, 0.977284014, 0.139680177, -0.118393585, -0.159390777, 0.980090559),
                            [4] = CFrame.new(0, 0, 0, 0.173127294, 0.378437281, 0.909292102, -0.722461104, -0.578677535, 0.378394246, 0.669385433, -0.722438574, 0.17322135),
                            [5] = CFrame.new(0, 0, 0, 0.427273333, 0.494663626, 0.756799459, -0.869062901, -0.00613296032, 0.494663626, 0.249333531, -0.869062901, 0.427273333)
                        },
                        [4] = {
                            [1] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                            [2] = CFrame.new(0, 0, 0, 0.291951358, 0.454619884, -0.841477931, -0.0720763057, 0.887764454, 0.454619884, 0.953713477, -0.0720763057, 0.291951358),
                            [3] = CFrame.new(0, 0, 0, 0.17322135, -0.378349423, -0.909310758, 0.0343255848, 0.925026178, -0.378349423, 0.98428458, 0.0343255848, 0.17322135),
                            [4] = CFrame.new(0, 0, 0, 0.980090559, -0.13969931, -0.141090572, 0.11998871, 0.982897162, -0.13969931, 0.158193409, 0.11998871, 0.980090559),
                            [5] = CFrame.new(0, 0, 0, 0.427273333, -0.494724542, -0.756759584, 0.120325297, 0.860679626, -0.494724542, 0.896079957, 0.120325297, 0.427273333)
                        },
                        [5] = {
                            [1] = CFrame.new(0, 0, 0, 0.291951358, 0.454619884, -0.841477931, -0.0720763057, 0.887764454, 0.454619884, 0.953713477, -0.0720763057, 0.291951358),
                            [2] = CFrame.new(0, 0, 0, 0.17322135, -0.378349423, -0.909310758, 0.0343255848, 0.925026178, -0.378349423, 0.98428458, 0.0343255848, 0.17322135),
                            [3] = CFrame.new(0, 0, 0, 0.980090559, -0.13969931, -0.141090572, 0.11998871, 0.982897162, -0.13969931, 0.158193409, 0.11998871, 0.980090559),
                            [4] = CFrame.new(0, 0, 0, 0.427273333, 0.494663626, 0.756799459, -0.869062901, -0.00613296032, 0.494663626, 0.249333531, -0.869062901, 0.427273333)
                        }
                    }
                    v.CFrame = Explosion.CFrame * RandomOffsets[i][math.random(1, #RandomOffsets[i])]
                end
            end
            Explosion.Parent = workspace.Ignored
            Explosion.Explosion:Play()
            spawn(function()
                local Tween1 = TweenService:Create(Explosion.Mesh, TweenInfo.new(5, Enum.EasingStyle.Circular), {Scale = Vector3.new(27.5, 27.5, 27.5)})
                Tween1:Play()
                for i,v in pairs(Explosion:GetChildren()) do
                    if v:FindFirstChild('Mesh') then
                        spawn(function()
                            local Tween1 = TweenService:Create(v.Mesh, TweenInfo.new(0.1125, Enum.EasingStyle.Circular), {Scale = Vector3.new(12.5, 12.5, 12.5)})
                            local Tween2 = TweenService:Create(v.Mesh, TweenInfo.new(1.5875, Enum.EasingStyle.Circular), {Scale = Vector3.new(13.75, 13.75, 13.75)})
                            local Tween3 = TweenService:Create(v, TweenInfo.new(0.165), {Transparency = 0.35})
                            local Tween4 = TweenService:Create(v, TweenInfo.new(0.9), {Transparency = 1})
                            Tween1:Play()
                            Tween3:Play()
                            Tween1.Completed:Connect(function()
                                Tween2:Play()
                            end)
                            delay(1.425, function()
                                Tween4:Play()
                            end)
                        end)
                    end
                end
                local Tween2 = TweenService:Create(Explosion, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {Transparency = 1})
                wait(0.8)
                Tween2:Play()
            end)
            game:GetService('Debris'):AddItem(Explosion, 5)
        end)
    end

    function Stomps:AirStrike(VictimChar)
        spawn(function()
            local Radio = Instance.new("Sound", VictimChar.UpperTorso)
            Radio.SoundId = "http://www.roblox.com/asset/?id=88858815"
            Radio.PlaybackSpeed = 1.5
            Radio.Volume = 1
            Radio:Play()
            local Jet = game:GetObjects("rbxassetid://12868291219")[1]
            Jet.Parent = workspace.Ignored
            Jet.Position = VictimChar.UpperTorso.CFrame.Position + Vector3.new(0, 200, -2000)
            Jet.Sound:Play()
            local function AddExplosion()
                local ExplosionSound = Instance.new("Sound", VictimChar.UpperTorso)
                ExplosionSound.SoundId = "rbxassetid://3802269741"
                local Explosion = Instance.new("Explosion", Jet)
                Explosion.DestroyJointRadiusPercent = 0
                Explosion.BlastPressure = 10000
                Explosion.Position = VictimChar.UpperTorso.Position + Vector3.new(math.random(0,50) * 0.1, 0, math.random(0,50) * 0.1)
                ExplosionSound:Play()
            end
            task.spawn(function()
                task.wait(2.78333333333)
                for i = 1,4 do
                    AddExplosion()
                    wait(math.random(0, 100) * 0.001)
                end
            end)
            local Tween = TweenService:Create(Jet, TweenInfo.new(5.566666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                Position = Jet.go.WorldPosition
            })
            Tween:Play()
            Tween.Completed:Wait()
            Jet:Destroy()
        end)
    end

    function Stomps:Heart(VictimChar)
        spawn(function()
            local Table = {}
            local Heart = game:GetObjects("rbxassetid://12868779018")[1]
            Heart.Parent = workspace.Ignored
            Heart.PartOne.Position = VictimChar.UpperTorso.Position + Vector3.new(0,7,0)
            Heart.PartOne.Anchored = true
            Heart.Part.Position = VictimChar.UpperTorso.Position
            Heart.Part.Anchored = true
            for i,v in pairs(Heart.PartOne:GetDescendants()) do
                if v:IsA("ParticleEmitter") then
                    table.insert(Table, v)
                end
            end
            for i, v in pairs(Heart.Part:GetDescendants()) do
                if v:IsA("ParticleEmitter") then
                    table.insert(Table, v);
                end;
            end;
            for i, v in pairs(Table) do
                if v:GetAttribute("EmitDelay") then
                    task.delay(v:GetAttribute("EmitDelay"), function()
                        v:Emit(v:GetAttribute("EmitCount"));
                    end);
                else
                    v:Emit(v:GetAttribute("EmitCount"));
                end;
            end;
            local Sound = Instance.new("Sound", Heart.PartOne)
            Sound.Volume = 1
            Sound.SoundId = "rbxassetid://1840977366"
            Sound.PlayOnRemove = true
            Sound:Destroy()
            task.wait(0.35)
            for i,v in pairs(VictimChar:GetDescendants()) do
                if v:IsA("BasePart") then
                    TweenService:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
                        Transparency = 1
                    }):Play()
                end
            end
            game.Debris:AddItem(Heart, 10)
        end)
    end

    function Stomps:UFO(VictimChar)
        spawn(function()
            local UFO = game:GetObjects("rbxassetid://12876678129")[1]
            UFO.Parent = workspace.Ignored

            local Sound = Instance.new("Sound", VictimChar.UpperTorso)
            Sound.SoundId = "rbxassetid://138207483"
            Sound:Play()
            game.Debris:AddItem(Sound, 5)
            local Effect = UFO.Effect
            Effect.CFrame = CFrame.new(VictimChar.UpperTorso.Position.X, VictimChar.UpperTorso.Position.Y + 35, VictimChar.UpperTorso.Position.Z)
            TweenService:Create(Effect, TweenInfo.new(0.5), {
                Transparency = 0
            }):Play()
            game.Debris:AddItem(Effect, 5)
            task.wait(0.5)
            local Main = UFO.Main
            Main.CFrame = CFrame.new(VictimChar.UpperTorso.Position.X, VictimChar.UpperTorso.Position.Y - 1, VictimChar.UpperTorso.Position.Z)
            game.Debris:AddItem(Main, 4)
            TweenService:Create(Main, TweenInfo.new(4), {
                CFrame = CFrame.new(Main.Position.X, Main.Position.Y + 20, Main.Position.Z)
            }):Play()
            TweenService:Create(Effect, TweenInfo.new(4), {
                CFrame = CFrame.new(Effect.Position.X, Effect.Position.Y + 20, Effect.Position.Z)
            }):Play()
            for i,v in pairs(VictimChar:GetDescendants()) do
                if not (not v:IsA("BasePart")) or not (not v:IsA("MEshPart")) or v:IsA("Decal") then
                    TweenService:Create(v, TweenInfo.new(4), {
                        Transparency = 1
                    }):Play()
                end
            end
            task.delay(4, function()
                TweenService:Create(Effect, TweenInfo.new(4), {
                    Transparency = 1
                }):Play()
            end)
        end)
    end

    function Stomps:Glitch(VictimChar)
        spawn(function()
            local Glitch = game:GetObjects("rbxassetid://12886574483")[1]
            Glitch.Parent = workspace.Ignored
            Glitch.CFrame = VictimChar.UpperTorso.CFrame + Vector3.new(0, -0.5, 0)
            Glitch.Orientation = VictimChar.UpperTorso.Orientation
            for i,v in pairs(VictimChar:GetDescendants()) do
                if not (not v:IsA("BasePart")) or not (not v:IsA("MEshPart")) or v:IsA("Decal") then
                    TweenService:Create(v, TweenInfo.new(4), {
                        Transparency = 1
                    }):Play()
                end
            end	
            game.Debris:AddItem(Glitch, 4.5)
            for i,v in pairs(Glitch:GetChildren()) do
                if v:IsA("ParticleEmitter") then
                    TweenService:Create(v, TweenInfo.new(4), {
                        Rate = 0
                    }):Play()
                end
            end
            local Sound = Instance.new("Sound", VictimChar.UpperTorso)
            Sound.SoundId = "rbxassetid://8880764455"
            Sound:Play()
        end)
    end

    function Stomps:CosmicSlash(VictimChar)
        spawn(function()
            local Tween = game:GetObjects("rbxassetid://12888729215")[1]
            local XSlash = game:GetObjects("rbxassetid://12888745636")[1]
            local Folder = Instance.new("Folder", workspace.Ignored)
            local sucess, err = pcall(function()
                for i,v in pairs(VictimChar:GetDescendants()) do
                    if not (not v:IsA("BasePart")) or not (not v:IsA("MeshPart")) or v:IsA("Decal") then
                        TweenService:Create(v, TweenInfo.new(4), {
                            Transparency = 1
                        }):Play()
                    end
                end
                local Part = Instance.new("Part")
                local HRP = VictimChar:FindFirstChild("HumanoidRootPart")
                Part.CFrame = CFrame.new(VictimChar.UpperTorso.CFrame.p) * CFrame.new(0,2.2,0)
                local Particles = XSlash.particles
                local Particles2 = XSlash.particles2
                local Beams = XSlash.Beams
                local Main = XSlash.Main
                Main.CFrame = Part.CFrame * CFrame.new(0, -2.7, 0)
                Main.Parent = Folder
                game.Debris:AddItem(Main, 3)
                Sound:Play()
                game.Debris:AddItem(Sound, 3)
                Particles2.CFrame = Part.CFrame * CFrame.Angles(0, -2.3935096295999836, 0)
                Particles2.Parent = Folder
                game.Debris:AddItem(Particles2, 3)
                Particles.CFrame = Part.CFrame * CFrame.Angles(0, -0.8226958495125671, 0)
                Particles.Parent = Folder
                game.Debris:AddItem(Particles, 3)
                Main.Attachment.OUT3:Emit(6)
                Main.Attachment.OUT2:Emit(6)
                Main.Attachment.OUT:Emit(4)
                Main.Attachment.ParticleEmitter:Emit(2)
                TweenService:Create(Main.PointLight, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {
                    Brightness = 5
                }):Play()
                wait(0.06)
                Main.Attachment.IN:Emit(4)
                wait(0.1)
                Main.Attachment2.ParticleEmitter:Emit(39)
                wait(0.28)
                Main.Attachment.OUTFX:Emit(4)
                Main.Attachment.OUTFX2:Emit(4)
                Main.Attachment2.ParticleEmitterOUT:Emit(39)
                for i,v in pairs(Particles:GetChildren()) do
                    v:Emit(v:GetAttribute("EmitCount"))
                end
                for i,v in pairs(Particles2:GetChildren()) do
                    v:Emit(v:GetAttribute("EmitCount"))
                end
                spawn(function()
                    Tween.Parent = game.Lighting
                    game.TweenService:Create(Tween, TweenInfo.new(0.2), {
                        TintColor = Color3.fromRGB(172, 78, 255), 
                        Brightness = 0.5, 
                        Contrast = 1, 
                        Saturation = -1
                    }):Play();
                    wait(0.2);
                    game.TweenService:Create(Tween, TweenInfo.new(0.3), {
                        TintColor = Color3.fromRGB(255, 255, 255), 
                        Brightness = 0, 
                        Contrast = 0, 
                        Saturation = 0
                    }):Play();
                    game.Debris:AddItem(Tween, 0.3);
                end)
                local PrimartyPart = Beams.PrimaryPart
                spawn(function()
                    PrimartyPart.CFrame = Part.CFrame * CFrame.new(0, -2.7, 0)
                    Beams.Parent = Folder
                    for i = 0, 1, 0.1 do
                        Beams:FindFirstChild("Part1").BEAM.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM1.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM2.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM3.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM4.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM5.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM6.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part1").BEAM7.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM1.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM2.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM3.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM4.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM5.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM6.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part2").BEAM7.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM1.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM2.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM3.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM4.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM5.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM6.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part3").BEAM7.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM1.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM2.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM3.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM4.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM5.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM6.Transparency = NumberSequence.new(i);
                        Beams:FindFirstChild("Part4").BEAM7.Transparency = NumberSequence.new(i);
                        wait(0.001);
                    end
                end)
                wait(0.4)
                TweenService:Create(Main.PointLight, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {
                    Brightness = 0
                }):Play();
        end)
            if sucess then
                task.delay(25, function()
                    Folder:Destroy()
                end)
                return
            end
            Folder:Destroy()
            Tween:Destroy()
        end)
    end
end 	
-- 

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local gggg = AkaliNotif.Notify;

local notificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/xaxas-notification/src.lua"))();
local notifications = notificationLibrary.new({            
    NotificationLifetime = 3, 
    NotificationPosition = "Middle",
    
    TextFont = Enum.Font.Code,
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 15,
    
    TextStrokeTransparency = 0, 
    TextStrokeColor = Color3.fromRGB(0, 0, 0)
});

notifications:BuildNotificationUI();


getgenv().notify = function(txt) 
    if Sage.Startup.Notification_Enabled then
        if string.lower(Sage.Startup.Notification_Type) == "akali" then 
            gggg({
                Description = txt;
                Title = "Notification";
                Duration = Sage.Startup.Notification_Duration;
            });
        elseif string.lower(Sage.Startup.Notification_Type) == "roblox" then
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Notification",
                Text = txt, 
                Icon = "rbxassetid://14270853092",
                Duration = Sage.Startup.Notification_Duration
            })
        elseif string.lower(Sage.Startup.Notification_Type) == "xaxa" then
            notifications:Notify(txt);
        end

    end
end

-- // Drawing Function!!!!

local Visualizer = Drawing.new("Circle")
Visualizer.Filled = true
Visualizer.Thickness = 1
Visualizer.Transparency = 1
Visualizer.Radius = 3
Visualizer.Color = Color3.new(1,1,1)

local Visualizer2 = Drawing.new("Line")
Visualizer2.Visible = false
Visualizer2.From = Vector2.new(0, 0)
Visualizer2.To = Vector2.new(200, 200)
Visualizer2.Color = Color3.new(1,1,1)
Visualizer2.Thickness = 1
Visualizer2.Transparency = 1

Script.Drawing.DesyncCircle = Drawing.new("Circle")
Script.Drawing.DesyncCircle.Color = Sage.Antilock.Visualize.Color
Script.Drawing.DesyncCircle.NumSides = 128
Script.Drawing.DesyncCircle.Transparency = 1
Script.Drawing.DesyncCircle.Radius = 10
Script.Drawing.DesyncCircle.Filled = true
Script.Drawing.DesyncCircle.Visible = false

local Hitbox = Instance.new("Part", game.Workspace)
Hitbox.Size = Vector3.new(5, 5, 5)
Hitbox.CanCollide = false 
Hitbox.Anchored = true
Hitbox.Shape = Enum.PartType.Block 
Hitbox.Name = "LionIsASkid"
Hitbox.Material = Sage.Silent.HitboxMaterial

local Forcefield = Instance.new("Part", game.Workspace)
Forcefield.Size = Vector3.new(14, 14, 14)
Forcefield.CanCollide = false 
Forcefield.Anchored = true
Forcefield.Shape = Enum.PartType.Ball
Forcefield.Transparency = 0
Forcefield.Name = "LionAndLagoostaWhydUPasteAzureV4"
Forcefield.Material = Sage.Silent.ForcefieldMaterial

local FOVCircle = Drawing.new("Circle")
local function updateFOV()
	FOVCircle.Radius = Sage.Silent.FOV.Size * 3.05
	FOVCircle.Visible = Sage.Silent.FOV.Enabled
	FOVCircle.Transparency = Sage.Silent.FOV.Transparency
	FOVCircle.Filled = Sage.Silent.FOV.Filled
	FOVCircle.Color = Sage.Silent.FOV.Color
	FOVCircle.Thickness = Sage.Silent.FOV.Thickness
	if getgenv().Sage.Silent.FOV.Type == "Middle" then
	FOVCircle.Position = mid
	else
	FOVCircle.Position = Vector2(Mouse.X,Mouse.Y)
	end
	return FOVCircle
end


local CamCircle = Drawing.new("Circle")

local function updateFOV2()
CamCircle.Color = getgenv().Sage.Camlock.FOV.Color
CamCircle.Thickness = getgenv().Sage.Camlock.FOV.Thickness
CamCircle.Transparency = getgenv().Sage.Camlock.FOV.Transparency
CamCircle.NumSides = getgenv().Sage.Camlock.FOV.Sides
CamCircle.Radius = getgenv().Sage.Camlock.FOV.Size
CamCircle.Visible = getgenv().Sage.Camlock.FOV.Enabled
CamCircle.Filled = getgenv().Sage.Camlock.FOV.Filled
if getgenv().Sage.Camlock.FOV.Type == "Middle" then
	CamCircle.Position = mid
	else
	CamCircle.Position = Vector2(Mouse.X,Mouse.Y)
	end
	return CamCircle
end
-- // function
Script.Functions.OnScreen = function(Object)
    local _, OnScreen = Camera:WorldToScreenPoint(Object.Position)
    return OnScreen
end

RayCastCheck = function(Part, PartDescendant)
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded.Wait(LocalPlayer.CharacterAdded)
    local Origin = CurrentCamera.CFrame.Position

    local RayCastParams = RaycastParams.new()
    RayCastParams.FilterType = Enum.RaycastFilterType.Blacklist
    RayCastParams.FilterDescendantsInstances = {Character, CurrentCamera}

    local Result = Workspace.Raycast(Workspace, Origin, Part.Position - Origin, RayCastParams)
    
    if (Result) then
        local PartHit = Result.Instance
        local Visible = (not PartHit or Instance.new("Part").IsDescendantOf(PartHit, PartDescendant))
        
        return Visible
    end
    return false
end

function CheckWall(head)
   if v == LocalPlayer then return false end
      

       local castPoints = {LocalPlayer.Character.Head.Position, head.Position}
       local ignoreList = {LocalPlayer.Character,head.Parent}
       a = workspace.CurrentCamera:GetPartsObscuringTarget(castPoints, ignoreList)
       if #a == 0 then return false end

   return true
end

local function check()
        return game:GetService("ReplicatedStorage"):FindFirstChild("MainEvent") or game:GetService("ReplicatedStorage"):FindFirstChild("MAINEVENT")
    end
    
    local ME = check()
    local EventN = nil
    if ME then
        if ME.Name == "MAINEVENT" then
            EventN              = "STOMP"
        else
            EventN              = "Stomp"
        end
    end

-- // Lol Tool Lol 
GetAGripNigga = function()
    if LocalPlayer.Character then
        local tool = LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
        return tool
    end
    return nil
end

-- // Function To Check Distance Between u and opponent
CheckDistance = function(Player)
    if (Player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > Sage.Checks.Distance.Maximum then 
        return true
    else
        return false
    end
end

-- // Check If Crew Folder Is A Thing
Script.Functions.FindCrew = function(Plr)
	if Plr:FindFirstChild("DataFolder") and Plr.DataFolder:FindFirstChild("Information") and Plr.DataFolder.Information:FindFirstChild("Crew") and LocalPlayer:FindFirstChild("DataFolder") and LocalPlayer.DataFolder:FindFirstChild("Information") and LocalPlayer.DataFolder.Information:FindFirstChild("Crew") then
        if LocalPlayer.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Plr.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Plr.DataFolder.Information:FindFirstChild("Crew").Value ~= ("") and LocalPlayer.DataFolder.Information:FindFirstChild("Crew").Value ~= ("") then 
			return true
		end
	end
	return false
end

-- // Advanced Prediction Kyaaah
local AdvancedPred = function(Ping, Range) 
    local cache_prediction = 0
    if string.lower(tostring(Range)) == 'far' then 
        cache_prediction = cache_prediction + 0.1 + (Ping / 1250) * 1.05 + ((Ping / 1000) * (Ping / 1500) * 1.040)
    elseif string.lower(tostring(Range)) == 'mid' then
        cache_prediction = cache_prediction + 0.1 + (Ping / 2000) + ((Ping / 1000) * (Ping / 1500) * 1.025)
    elseif string.lower(tostring(Range)) == 'close' then
        cache_prediction = cache_prediction + 0.1 + (Ping / 2500) * 0.95 + ((Ping / 1000) * (Ping / 1500) * 0.95)
    end
    return cache_prediction
end

-- // get gun Shi
Script.Functions.GetGunName = function(Name)
    local split = string.split(string.split(Name, "[")[2], "]")[1]
    return split
end

Script.Functions.GetCurrentWeaponName = function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
       local Tool = LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
       if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then
          return Script.Functions.GetGunName(Tool.Name)
       end
    end
    return nil
end

-- // Player Is Alive Function
local NiggerAlive = function(Plr)
    return (Plr and Plr.Character and Plr.Character:FindFirstChild("Humanoid") and Plr.Character:FindFirstChild("HumanoidRootPart")) and true or false
end

-- // Calculating The Chance
CalculateChance = function(Percentage)
    Percentage = math.floor(Percentage)
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

    return chance < Percentage / 100
end

-- Function to check if the Mouse is inside the box
function isMouseInsideBox(BoxX, BoxY, BoxWidth, BoxHeight, MouseX, MouseY)
    if MouseX >= BoxX and MouseX <= BoxX + BoxWidth and MouseY >= BoxY and MouseY <= BoxY + BoxHeight then
        return true
    else
        return false
    end
end

-- // Rotation Code
function FuckYou(angle, radius)
    return Vector2.new(
        math.sin(math.rad(angle)) * radius,
        math.cos(math.rad(angle)) * radius
    )
end

function AimViewerCalculator()
				if Target and Target.Character and Sage.Silent.AntiAimViewer.Enabled then 
				local endpoint = Target.Character[Sage.Silent.AimPart.Aimpart].Position + (Target.Character.HumanoidRootPart.Velocity * Sage.Silent.Prediction.Horizontal)
				game:GetService("ReplicatedStorage").MainEvent:FireServer("UpdateMousePosI", endpoint)
				end 
			end     
			
			function autoReload()
				local Tool = GetAGripNigga()
				if Sage.Misc.Exploits.AutoReload then 
					if Tool.Ammo.Value == 0 then 
						Remote:FireServer("Reload", Tool)
					end 
				end 
			end 
			-- 

-- // Auto Buy Code
Gun = function(Name)
      for Check = 1, 100000 do
         if game.Workspace.Ignored.Shop:FindFirstChild("[" .. Name .. "] - $" .. Check) then
            return tostring("[" .. Name .. "] - $" .. Check)
         end
      end
   end
   
   Ammo = function(Name)
      for Check1 = 1, 250 do
         for Check2 = 1, 500 do
            if game.Workspace.Ignored.Shop:FindFirstChild(Check1 .. " [" .. Name .. " Ammo] - $" .. Check2) then
               return tostring(Check1 .. " [" .. Name .. " Ammo] - $" .. Check2)
            end
         end
      end
   end
   
   Buy = function(Target, Delay, LagBack, Times)
      if Times == nil then Times = 3 end
      local item = game.Workspace.Ignored.Shop:FindFirstChild(Target)
      if item then
         savepos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
         for i = 1, Times do 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = item.Head.CFrame * CFrame.new(0, 3, 0)
            task.wait(0.5)
            for i = 1, 10 do
               fireclickdetector(item.ClickDetector)
            end
            task.wait(0.5)
         end
         if LagBack then
            task.wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savepos
         end
         if Delay ~= nil then
            task.wait(Delay)
         end
      end
   end
   
   BuyGunAndAmmo = function(GUN,times)
      if game.Players.LocalPlayer.Backpack:FindFirstChild("["..GUN.."]") or game.Players.LocalPlayer.Character:FindFirstChild("["..GUN.."]") then 
         Buy(Ammo(GUN),0.3,true,times)
      else
         Buy(Gun(GUN),0.5,true)
      end
   end

tp = function(v) 
   if v == "Uphill" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(482, 48, -602)
   elseif v == "Military" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(58.71923828125, 25.25499725341797, -869.0357055664062) 
   elseif v == "Park" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-268, 22, -754) 
   elseif v == "Admin" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800, -40, -887) 
   elseif v == "Admin Guns" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-872, -33, -536) 
   elseif v == "Downhill" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-565, 8, -737) 
   elseif v == "Double Barrel" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1042, 22, -261) 
   elseif v == "Casino" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-864, 22, -143) 
   elseif v == "Trailer" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-963, -1, 469) 
   elseif v == "School" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-653, 22, 257) 
   elseif v == "Revolver" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-642, 22, -124) 
   elseif v == "Bank" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-446, 39, -286) 
   elseif v == "Sewer" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(112, -27, -277) 
   elseif v == "Fire Station" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-150, 54, -94) 
   elseif v == "Hood Fitness" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76, 23, -638) 
   elseif v == "Hood Kicks"  then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-188, 22, -410) 
   elseif v == "Jail" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-299, 22, -91) 
   elseif v == "Church" then 
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205, 22, -80) 
   end
end


-- // The Get Closest Function :333
WTS = function(Object)
	local ObjectVector = CurrentCamera:WorldToScreenPoint(Object.Position)
	return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

Filter = function(obj)
	if (obj:IsA('BasePart')) then
		return true
	end
end

MousePosVector2 = function()
	return Vector2.new(Mouse.X, Mouse.Y) 
end

IsOnScreen2 = function(Object)
    local IsOnScreen = CurrentCamera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end

FilterObjs = function(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
        return true
    end
end

GetClosestBodyPart = function()
    local character = AimBot.Character
    local ClosestDistance = 1 / 0
    local BodyPart = nil
    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if FilterObjs(x) and IsOnScreen2(x) then
                local Distance = (WTS(x) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if (Distance < ClosestDistance) then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
            end
        end
    end
    if Sage.Camlock.AimPart.ClosestPart then
	Sage.Camlock.AimPart.Aimpart = tostring(BodyPart)
	else
	Sage.Camlock.AimPart.Aimpart = Sage.Camlock.AimPart.Aimpart
	end

end

GetClosestBodyPart2 = function()
    local character = Target.Character
    local ClosestDistance = 1 / 0
    local BodyPart = nil
    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if FilterObjs(x) and IsOnScreen2(x) then
                local Distance = (WTS(x) - FOVCircle.Position).Magnitude
                    if (Distance < ClosestDistance) then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
            end
        end
    end
    if Sage.Silent.AimPart.ClosestPart then
	Sage.Silent.AimPart.Aimpart = tostring(BodyPart)
	else
	Sage.Silent.AimPart.Aimpart = Sage.Silent.AimPart.Aimpart
	end
end

local function getClosestPlayerToCursor()
	local Nigga =  nil
	local Closest = FOVCircle.Radius+15
	local HitChance = CalculateChance(Sage.Silent.Hit_Chance)

    if not HitChance then
        return nil
    end
    
	for _, v in pairs(Players:GetPlayers()) do
		if v.Character and v ~= LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") then
			if not Script.Functions.OnScreen(v.Character.HumanoidRootPart) then 
				continue 
			end
			if Sage.Checks.Silent.Wall and not RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
				continue 
			end
			if Sage.Checks.Silent.KO and v.Character:FindFirstChild("BodyEffects") then
				local KO = v.Character.BodyEffects:FindFirstChild("K.O").Value
				local Grabbed = v.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
				if KO or Grabbed then
					continue
				end
			end
			if Sage.Checks.Silent.Knocked and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.health < 4 then
					continue
				end
			end
			if Sage.Checks.Silent.Visible and v.Character:FindFirstChild("Head") then
				if v.Character.Head.Transparency > 0.5 then
					continue
				end
			end
			if Sage.Checks.Silent.Crew and Script.Functions.FindCrew(v) and v.DataFolder.Information:FindFirstChild("Crew").Value == LocalPlayer.DataFolder.Information:FindFirstChild("Crew").Value then
				continue
			end
			if Sage.Checks.Silent.Friend then
				if not table.find(Script.Friends, v.UserId) then
					continue
				end
			end
			if Sage.Checks.Silent.Whitelist.Enabled and not table.find(Sage.Checks.Silent.Whitelist.Usernames,v.Name) then 
                continue 
            end
        if Sage.Checks.Silent.NoAmmo and LocalPlayer.Character:FindFirstChildWhichIsA("Tool") and LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
            if LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                continue;
            end
        end
            if Sage.Checks.Silent.Blacklist.Enabled and table.find(Sage.Checks.Silent.Blacklist.Usernames,v.Name) then 
                continue 
            end
            if Sage.Checks.Distance.Enabled and CheckDistance(v) then
                continue
            end
			local primaryPart = v.Character:FindFirstChild("HumanoidRootPart") or v.Character.PrimaryPart
                if primaryPart then
			local screenPos, CameraVisible = Camera:WorldToViewportPoint(primaryPart.Position)
                    if CameraVisible then
			local Distance = (Vector2.new(screenPos.X, screenPos.Y) - FOVCircle.Position).magnitude

			if Distance < Closest then
				Closest = Distance
				Nigga = v
			end
		end
	end
end
end

     Target = Nigga
end

function LockToPlayer()
    local Target = nil
    local Closest = math.huge
    
    for _, v in pairs(Players:GetPlayers()) do
        if v.Character and v ~= LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") then
        if not Script.Functions.OnScreen(v.Character.HumanoidRootPart) then 
				continue 
			end
			if Sage.Checks.Camlock.Wall and not RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
				continue 
			end
			if Sage.Checks.Camlock.KO and v.Character:FindFirstChild("BodyEffects") then
				local KO = v.Character.BodyEffects:FindFirstChild("K.O").Value
				local Grabbed = v.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
				if KO or Grabbed then
					continue
				end
			end
			if Sage.Checks.Camlock.Knocked and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.health < 4 then
					continue
				end
			end
			if Sage.Checks.Camlock.Visible and v.Character:FindFirstChild("Head") then
				if v.Character.Head.Transparency > 0.5 then
					continue
				end
			end
			if Sage.Checks.Camlock.Crew and Script.Functions.FindCrew(v) and v.DataFolder.Information:FindFirstChild("Crew").Value == LocalPlayer.DataFolder.Information:FindFirstChild("Crew").Value then
				continue
			end
			if Sage.Checks.Camlock.Friend then
				if not table.find(Script.Friends, v.UserId) then
					continue
				end
			end
            if Sage.Checks.Distance.Enabled and CheckDistance(v) then
                continue
            end
			if Sage.Checks.Camlock.Whitelist.Enabled and not table.find(Sage.Checks.Camlock.Whitelist.Usernames,v.Name) then 
                continue 
            end
            if Sage.Checks.Camlock.Blacklist.Enabled and table.find(Sage.Checks.Camlock.Blacklist.Usernames,v.Name) then 
                continue 
            end
           
        local pos = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local Distance = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
        if (Distance < Closest) then
                Closest = Distance
                Target = v
            end
        end
    end

    AimBot = Target
end

DoYouKnowWhyLionSkid = function()
    local Geek = nil
    
    for _,q in pairs (game:GetService("Players"):GetPlayers()) do 
        if q  ~= LocalPlayer and q and q.Character  then
            local RageBotD = (LocalPlayer.Character.HumanoidRootPart.Position - q.Character.HumanoidRootPart.Position).Magnitude
            if Sage.RageBot.Radius > RageBotD  and not CheckWall(q.Character.Head) then
                if q.Character.BodyEffects["K.O"].Value == false then 
                    Geek = q
                    
                end 
            end
        end
    end
Target = Geek
end

Tool.Activated:Connect(function()
if Sage.Silent.Enabled then
        if string.lower(Sage.Silent.Type) ==  "target" and Sage.RageBot.Enabled == false then 
        if Target == nil then 
                getClosestPlayerToCursor()
            else
                Target = nil
                if Sage.Silent.Notify then 
                    notify("Unlocked")
                end
            end
        end
    end
if getgenv().Sage.Camlock.Enabled then
if string.lower(Sage.Camlock.Type) ==  "target" then 
            if enabled == true then
                enabled = false
                AimBot = nil
                if Sage.Camlock.Notify then 
                    notify("Unlocked")
                end
            else
                LockToPlayer()
                enabled = true
                if Sage.Camlock.Notify then
                        notify("Locked onto: "..tostring(AimBot))
                end
            end
        end
        end
    end)


local BladLock = Instance.new("ScreenGui")
BladLock.Name = "BladLock"
BladLock.Parent = game.CoreGui
BladLock.ZIndexBehavior = Enum.ZIndexBehavior.Global

local Frame = Instance.new("Frame")
Frame.Parent = BladLock
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.133798108, 0, 0.20107238, 0)
Frame.Size = UDim2.new(0, 80, 0, 70)
Frame.Active = true
Frame.Draggable = true

local Logo = Instance.new("ImageLabel")
Logo.Name = "Logo"
Logo.Parent = Frame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 5.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.326732665, 0, 0, 0)
Logo.Size = UDim2.new(0, 43, 0, 43)
Logo.Image = "rbxassetid://YOUR_IMAGE_ID" -- Replace YOUR_IMAGE_ID
Logo.ImageTransparency = 0.200

local TextButton = Instance.new("TextButton")
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 5.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0792079195, 0, 0.18571429, 0)
TextButton.Size = UDim2.new(0, 80, 0, 44)
TextButton.Font = Enum.Font.SourceSansSemibold
TextButton.Text = "Lock"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame

local state = true

TextButton.MouseButton1Click:Connect(function()
    state = not state
    if state then
        TextButton.Text = "Lock ON"
        
        -- Sage Silent Aimbot
        if Sage.Silent.Enabled then
            if string.lower(Sage.Silent.Type) == "target" and Sage.RageBot.Enabled == false then
                if Target == nil then
                    getClosestPlayerToCursor()
                else
                    Target = nil
                    if Sage.Silent.Notify then
                        notify("Unlocked")
                    end
                end
            end
        end
        
        -- Sage Camlock
        if getgenv().Sage.Camlock.Enabled then
            if string.lower(Sage.Camlock.Type) == "target" then
                if enabled == true then
                    enabled = false
                    AimBot = nil
                    if Sage.Camlock.Notify then
                        notify("Unlocked")
                    end
                else
                    LockToPlayer()
                    enabled = true
                    if Sage.Camlock.Notify then
                        notify("Locked onto: "..tostring(AimBot))
                    end
                end
            end
        end
        
    else
        TextButton.Text = "Lock OFF"
        
        -- Reset Sage Silent Aimbot
        if Sage.Silent.Enabled then
            Target = nil
            if Sage.Silent.Notify then
                notify("Unlocked")
            end
        end
        
        -- Reset Sage Camlock
        if getgenv().Sage.Camlock.Enabled then
            enabled = false
            AimBot = nil
            if Sage.Camlock.Notify then
                notify("Unlocked")
            end
        end
    end
end)

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = TextButton
    

game:GetService("RunService").PostSimulation:connect(function()
if string.lower(Sage.Silent.Type) == "fov" and Sage.RageBot.Enabled == false then 
    getClosestPlayerToCursor()
    elseif Sage.RageBot.Enabled == true then 
    DoYouKnowWhyLionSkid()
    end
    
    if string.lower(Sage.Camlock.Type) == "fov" then
    LockToPlayer()
    end
end)

game:GetService("RunService").PostSimulation:connect(function()
	updateFOV()
	updateFOV2()
	Script.Functions.Desync()
	if Target ~= nil then 
            GetClosestBodyPart2()
        end
        
        if AimBot ~= nil then 
            GetClosestBodyPart()
        end
end)

local AntiCurvePos
-- // Silent RunService
do 
game:GetService("RunService").RenderStepped:connect(function()
if Sage.RageBot.Enabled then 
    
    
    local HAHAHAHHAAHAHHAHAHAHAHAHAHHAHAHAHAHAHHAHAHAHAJAHAJAHAHAHAHHA = GetAGripNigga()
    if HAHAHAHHAAHAHHAHAHAHAHAHAHHAHAHAHAHAHHAHAHAHAJAHAJAHAHAHAHHA ~= nil then
        if HAHAHAHHAAHAHHAHAHAHAHAHAHHAHAHAHAHAHHAHAHAHAJAHAJAHAHAHAHHA:FindFirstChild("Ammo") then
            if HAHAHAHHAAHAHHAHAHAHAHAHAHHAHAHAHAHAHHAHAHAHAJAHAJAHAHAHAHHA:FindFirstChild("Ammo").Value <= 0 then
                game:GetService("ReplicatedStorage").MainEvent:FireServer(
                "Reload",
                HAHAHAHHAAHAHHAHAHAHAHAHAHHAHAHAHAHAHHAHAHAHAJAHAJAHAHAHAHHA
                )
            end
        end
    end
    
    if Sage.RageBot.AutoShoot and Target ~= nil and HAHAHAHHAAHAHHAHAHAHAHAHAHHAHAHAHAHAHHAHAHAHAJAHAJAHAHAHAHHA then 
                        HAHAHAHHAAHAHHAHAHAHAHAHAHHAHAHAHAHAHHAHAHAHAJAHAJAHAHAHAHHA:Activate()
                    end 
end

if Target ~= nil then 
        
        char = CurrentCamera:WorldToViewportPoint(Target.Character[Sage.Silent.AimPart.Aimpart].Position)
        pos = workspace.CurrentCamera:WorldToViewportPoint(
        Target.Character[Sage.Silent.AimPart.Aimpart].Position +
            (Target.Character[Sage.Silent.AimPart.Aimpart].Velocity*
            getgenv().PredictionBackUp))
end

if Sage.Silent.Dot and Target ~= nil and pos then
        Visualizer.Visible = true
        Visualizer.Position = Vector2.new(pos.X, pos.Y)
    else
        Visualizer.Visible = false
    end
        
        if Sage.Silent.Line and Target ~= nil and pos then
        Visualizer2.Visible = true
        Visualizer2.To = Vector2.new(pos.X, pos.Y)
        Visualizer2.From = Vector2.new(char.X, char.Y)
    else
        Visualizer2.Visible = false
    end

    if getgenv().Sage.Silent.Enabled and getgenv().Sage.Silent.Hitbox and NiggerAlive(Target) then
            Hitbox.CFrame = CFrame.new(Target.Character[getgenv().Sage.Silent.AimPart.Aimpart].Position)
        else
            Hitbox.CFrame = CFrame.new(0,0,0)
        end
        Hitbox.Color = getgenv().Sage.Silent.HitboxColor
        
       if getgenv().Sage.Silent.Enabled and getgenv().Sage.Silent.Forcefield and NiggerAlive(Target) then
            Forcefield.CFrame = CFrame.new(Target.Character[getgenv().Sage.Silent.AimPart.Aimpart].Position)
        else
            Forcefield.CFrame = CFrame.new(0,0,0)
        end
        Forcefield.Color = getgenv().Sage.Silent.ForcefieldColor 
        
    if Sage.TriggerBot.Enabled then
        local Tool = GetAGripNigga()
        
        if Tool and Target then
        task.spawn(function()
        task.wait(Sage.TriggerBot.Delay)
            Tool:Activate()
            end)
        end
    end
   
    if Sage.Silent.AutoStomp and Target and Target.Character then
            local TargetHumanoid = Target.Character:FindFirstChildOfClass("Humanoid")
            local TargetHRP = Target.Character:FindFirstChild("HumanoidRootPart")
            if TargetHRP and TargetHumanoid and TargetHumanoid.Health < 4 then
                local UpperTorso = Target.Character:FindFirstChild("UpperTorso") or Target.Character:FindFirstChild("UpperTorso")
                if UpperTorso then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = UpperTorso.CFrame
                    wait(2)
                    game:GetService("ReplicatedStorage"):FindFirstChild(EventN):FireServer(Target)
                end
            end
        end
        
        if Sage.Silent.Enabled and Sage.Silent.LookAt and Target then
                    LocalPlayer.Character.Humanoid.AutoRotate = false
                    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.Position, Vector3.new(Target.Character.HumanoidRootPart.CFrame.X, LocalPlayer.Character.HumanoidRootPart.CFrame.Position.Y, Target.Character.HumanoidRootPart.CFrame.Z))
                else
                    LocalPlayer.Character.Humanoid.AutoRotate = true
                end
                
     if Sage.Silent.Enabled and Sage.Silent.ViewAt and Target then
                    Workspace:FindFirstChildWhichIsA("Camera").CameraSubject = Target.Character.Humanoid
                else
                    Workspace:FindFirstChildWhichIsA("Camera").CameraSubject = LocalPlayer.Character.Humanoid
                end
                
            if Sage.Silent.Enabled and Sage.Silent.AntiCurve and Target and Target.Character ~= nil and LocalPlayer ~= nil and NiggerAlive(Target) and NiggerAlive(LocalPlayer) then
		    Sage.Silent.AntiCurve = true
	    	AntiCurvePos = LocalPlayer.Character[Sage.Silent.AimPart.Aimpart].CFrame
            LocalPlayer.Character[Sage.Silent.AimPart.Aimpart].CFrame = CFrame.new(LocalPlayer.Character[Sage.Silent.AimPart.Aimpart].CFrame.Position, Vector3.new(Target.Character[Sage.Silent.AimPart.Aimpart].CFrame.X, LocalPlayer.Character[Sage.Silent.AimPart.Aimpart].CFrame.Position.Y, Target.Character[Sage.Silent.AimPart.Aimpart].CFrame.Z))
            RunService.RenderStepped:Wait()
            LocalPlayer.Character[Sage.Silent.AimPart.Aimpart].CFrame = AntiCurvePos
            Sage.Silent.AntiCurve = false
	end
        
pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
split = string.split(pingvalue,'(')
ping = tonumber(split[1])
if getgenv().Sage.Silent.AutoPrediction.Enabled then
    Sage.Silent.Prediction.Vertical = (ping/1700)
    if getgenv().Sage.Silent.AutoPrediction.Type == "Default" then
    Sage.Silent.Prediction.Horizontal = (ping / 225 * 0.1 + 0.1)
    elseif getgenv().Sage.Silent.AutoPrediction.Type == "Advanced"then
            if (Target and Target.Character and Target.Character.PrimaryPart) and (LocalPlayer.Character and LocalPlayer.Character.PrimaryPart) then
                local Magnitude = (LocalPlayer.Character.PrimaryPart.Position - Target.Character.PrimaryPart.Position).Magnitude
                local Type = ''
                if (Magnitude >= getgenv().Sage.Distances.Far) then 
                    Type = 'far'
                elseif (Magnitude < getgenv().Sage.Distances.Far and Magnitude >= getgenv().Sage.Distances.Mid) then
                    Type = 'mid'
                else
                    Type = 'close'
                end
               getgenv().Sage.Silent.Prediction.Horizontal = AdvancedPred(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue(), Type or 'close')
            end
    elseif getgenv().Sage.Silent.AutoPrediction.Type == "Normal" then
    if ping > 300 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.434
    elseif ping > 290 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.422
    elseif ping > 280 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.44
    elseif ping > 270 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.4385
    elseif ping > 260 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.4158
    elseif ping > 250 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.3148
    elseif ping > 240 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.34
    elseif ping > 230 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.33
    elseif ping > 220 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.30
    elseif ping > 210 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.295
    elseif ping > 200 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.2915
    elseif ping > 190 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.2911
    elseif ping > 180 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.28291198328
    elseif ping > 180 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.25291198328
    elseif ping > 170 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.28
    elseif ping > 160 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.2754
    elseif ping  >150 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.271
    elseif ping  >140 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.25
       elseif ping > 130 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.2057
    elseif ping > 120 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.1966
    elseif ping > 110 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.18642271
    elseif ping > 100 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.18533
    elseif ping > 90 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.1749573
    elseif ping > 80 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.1745
    elseif ping > 70 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.1642
    elseif ping > 50 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.14267
    elseif ping > 40 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.142
    elseif ping > 30 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.1312
   elseif ping > 20 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.1312
   elseif ping > 10 then
        getgenv().Sage.Silent.Prediction.Horizontal = 0.1287
   end
   elseif Sage.Silent.AutoPrediction.Type == "Old" then
   if ping < 130 then
                Sage.Silent.Prediction.Horizontal = (ping / 1000 + 0.037)
            else
                Sage.Silent.Prediction.Horizontal = (ping / 1000 + 0.033)
            end
      elseif Sage.Silent.AutoPrediction.Type == "V2" then
     Sage.Silent.Prediction.Horizontal = (0.1 + (ping / 2000) + ((ping / 1000) * (ping / 1500) * 1.025))
            --[[if ping < 360 then
                Sage.Silent.Prediction.Horizontal = 0.16537
            elseif ping < 270 then
                Sage.Silent.Prediction.Horizontal = 0.195566
            elseif ping < 260 then
                Sage.Silent.Prediction.Horizontal = 0.175566
            elseif ping < 250 then
                Sage.Silent.Prediction.Horizontal = 0.1651
            elseif ping < 240 then
                Sage.Silent.Prediction.Horizontal = 0.16780
            elseif ping < 230 then
                Sage.Silent.Prediction.Horizontal = 0.15692
            elseif ping < 220 then
                Sage.Silent.Prediction.Horizontal = 0.165566
            elseif ping < 210 then
                Sage.Silent.Prediction.Horizontal = 0.16780
            elseif ping < 200 then
                Sage.Silent.Prediction.Horizontal = 0.165566
            elseif ping < 190 then
                Sage.Silent.Prediction.Horizontal = 0.166547
            elseif ping < 180 then
                Sage.Silent.Prediction.Horizontal = 0.19284
            elseif ping < 170 then
                Sage.Silent.Prediction.Horizontal = 0.1923111 
            elseif ping < 160 then
                Sage.Silent.Prediction.Horizontal = 0.16
            elseif ping < 150 then
                Sage.Silent.Prediction.Horizontal = 0.15
            elseif ping < 140 then
                Sage.Silent.Prediction.Horizontal = 0.1223333
            elseif ping < 130 then
                Sage.Silent.Prediction.Horizontal = 0.156692
            elseif ping < 120 then
                Sage.Silent.Prediction.Horizontal = 0.143765
            elseif ping < 110 then
                Sage.Silent.Prediction.Horizontal = 0.1455
            elseif ping < 100 then
                Sage.Silent.Prediction.Horizontal = 0.130340
            elseif ping < 90 then
                Sage.Silent.Prediction.Horizontal = 0.136
            elseif ping < 80 then
                Sage.Silent.Prediction.Horizontal = 0.1347
            elseif ping < 70 then
                Sage.Silent.Prediction.Horizontal = 0.119
            elseif ping < 60 then
                Sage.Silent.Prediction.Horizontal = 0.12731
            elseif ping < 50 then
                Sage.Silent.Prediction.Horizontal = 0.127668
            elseif ping < 40 then
                Sage.Silent.Prediction.Horizontal = 0.125
            elseif ping < 30 then
                Sage.Silent.Prediction.Horizontal = 0.11
            elseif ping < 20 then
                Sage.Silent.Prediction.Horizontal = 0.12588
            elseif ping < 10 then
                Sage.Silent.Prediction.Horizontal = 0.9
            end]]
    elseif getgenv().Sage.Silent.AutoPrediction.Type == "Custom" then
      if ping <= 40 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping30_40
           elseif ping <= 50 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping40_50
           elseif ping <= 60 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping50_60
           elseif ping <= 70 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping60_70
           elseif ping <= 80 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping70_80
           elseif ping <= 90 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping80_90
           elseif ping <= 100 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping90_100
           elseif ping <= 110 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping100_110
           elseif ping <= 120 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping110_120
           elseif ping <= 130 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping120_130
           elseif ping <= 140 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping130_140
           elseif ping <= 150 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping140_150
           elseif ping <= 160 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping150_160
           elseif ping <= 170 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping160_170
           elseif ping <= 180 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping170_180
           elseif ping <= 190 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping180_190
           elseif ping <= 200 then
               getgenv().Sage.Silent.Prediction.Horizontal = getgenv().Sage.Silent.AutoPrediction.ping190_200
           end
end
end
end)
end

-- // Camlock Runservice
do
game:GetService"RunService".Stepped:connect(function()
pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
split = string.split(pingvalue,'(')
ping = tonumber(split[1])
if getgenv().Sage.Camlock.AutoPrediction.Enabled then
if getgenv().Sage.Camlock.AutoPrediction.Type == "Default" then
    Sage.Camlock.Prediction.Horizontal = (ping / 225 * 0.1 + 0.1)
   elseif Sage.Camlock.AutoPrediction.Type == "Old" then
   if ping < 130 then
                Sage.Camlock.Prediction.Horizontal = (ping / 1000 + 0.037)
            else
                Sage.Camlock.Prediction.Horizontal = (ping / 1000 + 0.033)
            end
       elseif getgenv().Sage.Camlock.AutoPrediction.Type == "Advanced"then
            if (Target and Target.Character and Target.Character.PrimaryPart) and (LocalPlayer.Character and LocalPlayer.Character.PrimaryPart) then
                local Magnitude = (LocalPlayer.Character.PrimaryPart.Position - Target.Character.PrimaryPart.Position).Magnitude
                local Type = ''
                if (Magnitude >= getgenv().Sage.Distances.Far) then 
                    Type = 'far'
                elseif (Magnitude < getgenv().Sage.Distances.Far and Magnitude >= getgenv().Sage.Distances.Mid) then
                    Type = 'mid'
                else
                    Type = 'close'
                end
               getgenv().Sage.Camlock.Prediction.Horizontal = AdvancedPred(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue(), Type or 'close')
            end
      elseif Sage.Camlock.AutoPrediction.Type == "V2" then
     Sage.Camlock.Prediction.Horizontal = (0.1 + (ping / 2000) + ((ping / 1000) * (ping / 1500) * 1.025))
            --[[if ping < 360 then
                Sage.Camlock.Prediction.Horizontal = 0.16537
            elseif ping < 270 then
                Sage.Camlock.Prediction.Horizontal = 0.195566
            elseif ping < 260 then
                Sage.Camlock.Prediction.Horizontal = 0.175566
            elseif ping < 250 then
                Sage.Camlock.Prediction.Horizontal = 0.1651
            elseif ping < 240 then
                Sage.Camlock.Prediction.Horizontal = 0.16780
            elseif ping < 230 then
                Sage.Camlock.Prediction.Horizontal = 0.15692
            elseif ping < 220 then
                Sage.Camlock.Prediction.Horizontal = 0.165566
            elseif ping < 210 then
                Sage.Camlock.Prediction.Horizontal = 0.16780
            elseif ping < 200 then
                Sage.Camlock.Prediction.Horizontal = 0.165566
            elseif ping < 190 then
                Sage.Camlock.Prediction.Horizontal = 0.166547
            elseif ping < 180 then
                Sage.Camlock.Prediction.Horizontal = 0.19284
            elseif ping < 170 then
                Sage.Camlock.Prediction.Horizontal = 0.1923111 
            elseif ping < 160 then
                Sage.Camlock.Prediction.Horizontal = 0.16
            elseif ping < 150 then
                Sage.Camlock.Prediction.Horizontal = 0.15
            elseif ping < 140 then
                Sage.Camlock.Prediction.Horizontal = 0.1223333
            elseif ping < 130 then
                Sage.Camlock.Prediction.Horizontal = 0.156692
            elseif ping < 120 then
                Sage.Camlock.Prediction.Horizontal = 0.143765
            elseif ping < 110 then
                Sage.Camlock.Prediction.Horizontal = 0.1455
            elseif ping < 100 then
                Sage.Camlock.Prediction.Horizontal = 0.130340
            elseif ping < 90 then
                Sage.Camlock.Prediction.Horizontal = 0.136
            elseif ping < 80 then
                Sage.Camlock.Prediction.Horizontal = 0.1347
            elseif ping < 70 then
                Sage.Camlock.Prediction.Horizontal = 0.119
            elseif ping < 60 then
                Sage.Camlock.Prediction.Horizontal = 0.12731
            elseif ping < 50 then
                Sage.Camlock.Prediction.Horizontal = 0.127668
            elseif ping < 40 then
                Sage.Camlock.Prediction.Horizontal = 0.125
            elseif ping < 30 then
                Sage.Camlock.Prediction.Horizontal = 0.11
            elseif ping < 20 then
                Sage.Camlock.Prediction.Horizontal = 0.12588
            elseif ping < 10 then
                Sage.Camlock.Prediction.Horizontal = 0.9
            end]]
    elseif getgenv().Sage.Camlock.AutoPrediction.Mode == "Normal" then
    getgenv().Sage.Camlock.Prediction.Vertical = (ping/2000)
    if ping > 300 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.434
    elseif ping > 290 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.422
    elseif ping > 280 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.44
    elseif ping > 270 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.4385
    elseif ping > 260 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.4158
    elseif ping > 250 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.3148
    elseif ping > 240 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.34
    elseif ping > 230 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.33
    elseif ping > 220 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.30
    elseif ping > 210 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.295
    elseif ping > 200 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.2915
    elseif ping > 190 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.2911
    elseif ping > 180 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.28291198328
    elseif ping > 180 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.25291198328
    elseif ping > 170 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.28
    elseif ping > 160 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.2754
    elseif ping  >150 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.271
    elseif ping  >140 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.25
       elseif ping > 130 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.2057
    elseif ping > 120 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.1966
    elseif ping > 110 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.18642271
    elseif ping > 100 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.18533
    elseif ping > 90 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.1749573
    elseif ping > 80 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.1745
    elseif ping > 70 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.1642
    elseif ping > 50 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.14267
    elseif ping > 40 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.142
    elseif ping > 30 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.1312
   elseif ping > 20 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.1312
   elseif ping > 10 then
        getgenv().Sage.Camlock.Prediction.Horizontal = 0.1287
   end
    elseif getgenv().Sage.Camlock.AutoPrediction.Mode == "Custom" then
   if ping <= 40 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping30_40
           elseif ping <= 50 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping40_50
           elseif ping <= 60 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping50_60
           elseif ping <= 70 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping60_70
           elseif ping <= 80 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping70_80
           elseif ping <= 90 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping80_90
           elseif ping <= 100 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping90_100
           elseif ping <= 110 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping100_110
           elseif ping <= 120 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping110_120
           elseif ping <= 130 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping120_130
           elseif ping <= 140 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping130_140
           elseif ping <= 150 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping140_150
           elseif ping <= 160 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping150_160
           elseif ping <= 170 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping160_170
           elseif ping <= 180 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping170_180
           elseif ping <= 190 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping180_190
           elseif ping <= 200 then
               getgenv().Sage.Camlock.Prediction.Horizontal = getgenv().Sage.Camlock.AutoPrediction.ping190_200
           end
   end
  end
  
    if enabled and getgenv().Sage.Camlock.Enabled then
        if AimBot ~= nil and AimBot.Character then
            local shakeOffset = Vector3.new(
                math.random(-getgenv().Sage.Camlock.Shake.X, getgenv().Sage.Camlock.Shake.X),
                math.random(-getgenv().Sage.Camlock.Shake.Y, getgenv().Sage.Camlock.Shake.Y),
                math.random(-getgenv().Sage.Camlock.Shake.Z, getgenv().Sage.Camlock.Shake.Z)
            )*0.1
            if Sage.Camlock.Shake.Enabled then
HorizontalLookPosition = CFrame.new(Camera.CFrame.p, AimBot.Character[Sage.Camlock.AimPart.Aimpart].CFrame.Position+Vector3.new(AimBot.Character.HumanoidRootPart.AssemblyLinearVelocity.X*getgenv().Sage.Camlock.Prediction.Horizontal,math.clamp(AimBot.Character.HumanoidRootPart.AssemblyLinearVelocity.Y,-5,10)*getgenv().Sage.Camlock.Prediction.Vertical,AimBot.Character.HumanoidRootPart.AssemblyLinearVelocity.Z*getgenv().Sage.Camlock.Prediction.Horizontal)+shakeOffset)
Camera.CFrame = Camera.CFrame:Lerp(HorizontalLookPosition, getgenv().Sage.Camlock.Smoothing.SmoothnessValue, Enum.EasingStyle[Sage.Camlock.Smoothing.EasingStyle], Enum.EasingDirection[Sage.Camlock.Smoothing.EasingDirection])
else
HorizontalLookPosition = CFrame.new(Camera.CFrame.p, AimBot.Character[Sage.Camlock.AimPart.Aimpart].CFrame.Position+Vector3.new(AimBot.Character.HumanoidRootPart.AssemblyLinearVelocity.X*getgenv().Sage.Camlock.Prediction.Horizontal,math.clamp(AimBot.Character.HumanoidRootPart.AssemblyLinearVelocity.Y,-5,10)*getgenv().Sage.Camlock.Prediction.Vertical,AimBot.Character.HumanoidRootPart.AssemblyLinearVelocity.Z*getgenv().Sage.Camlock.Prediction.Horizontal))
Camera.CFrame = Camera.CFrame:Lerp(HorizontalLookPosition, getgenv().Sage.Camlock.Smoothing.SmoothnessValue, Enum.EasingStyle[Sage.Camlock.Smoothing.EasingStyle], Enum.EasingDirection[Sage.Camlock.Smoothing.EasingDirection])
    end
end
end

if
    Sage.Camlock.Unlock_Outside_FOV and AimBot and AimBot.Character and
        AimBot.Character:FindFirstChild(Sage.Camlock.AimPart.Aimpart)
 then
    if
        CamCircle.Radius <
            (Vector2.new(
                CurrentCamera:WorldToScreenPoint(AimBot.Character.HumanoidRootPart.Position).X,
                CurrentCamera:WorldToScreenPoint(AimBot.Character.HumanoidRootPart.Position).Y
            ) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
     then
        AimBot = nil
    end
end

local EquippedWeapon = Script.Functions.GetCurrentWeaponName(LocalPlayer)

if getgenv().Sage.Camlock.Only_Enable_While_Holding_Gun then
    if EquippedWeapon == nil or not GunsTable[EquippedWeapon] then
        AimBot = nil
    end
end

if getgenv().Sage.Camlock.Disable_When_Typing then
    if game:GetService("UserInputService"):GetFocusedTextBox() then
        AimBot = nil
    end
end

if getgenv().Sage.Camlock.Disable_When_Reloading then
    local bodyEffects = LocalPlayer.Character:FindFirstChild("BodyEffects")
    if bodyEffects then
        local reload = bodyEffects:FindFirstChild("Reload").Value
        if reload then
            AimBot = nil
        end
    end
end

if
    Sage.Camlock.Unlock_On_KO == true and AimBot ~= nil and AimBot.Character and
        AimBot.Character:FindFirstChild(Sage.Camlock.AimPart.Aimpart)
 then
    if AimBot.Character:FindFirstChild("BodyEffects") then
        local KO
        if AimBot.Character.BodyEffects:FindFirstChild("KO") then
            KO = AimBot.Character.BodyEffects:FindFirstChild("KO").Value
        elseif AimBot.Character.BodyEffects:FindFirstChild("K.O") then
            KO = AimBot.Character.BodyEffects:FindFirstChild("K.O").Value
        end

        if KO then
            AimBot = nil
        end
    end
end
if
    Sage.Camlock.Unlock_Behind_Wall == true and string.lower(Sage.Camlock.Mode) ~= "fov" and AimBot ~= nil and
        AimBot.Character and
        AimBot.Character:FindFirstChild(Sage.Camlock.AimPart.Aimpart)
 then
    if not RayCastCheck(AimBot.Character[Sage.Camlock.AimPart.Aimpart], AimBot.Character) then
        AimBot = nil
    end
end
end)
end

-- // Resolving

local function NewVelocity(TENKAAAAAAAAAAAAAAAA)
        local currentPosition = TENKAAAAAAAAAAAAAAAA.Position
        local currentTime = tick()
    
        if previousPosition and previousTime then
            local deltaTime = currentTime - previousTime
            local velocity = (currentPosition - previousPosition) / deltaTime
    
            TENKAAAAAAAAAAAAAAAA.Velocity = velocity
        end
    
        previousPosition = currentPosition
        previousTime = currentTime
    end
    
    RunService.Heartbeat:Connect(function()
        if Target and Target.Character and Target.Character:FindFirstChild(Sage.Silent.AimPart.Aimpart).Target.Character:FindFirstChild(Sage.Silent.AimPart.Aimpart).Velocity.magnitude > Sage.Silent.Resolving.Magnitude then
            NewVelocity(Target.Character[Sage.Silent.AimPart.Aimpart])
        end
    end)
    
    RunService.Heartbeat:Connect(function()
        if AimBot and AimBot.Character and AimBot.Character:FindFirstChild(Sage.Camlock.AimPart.Aimpart) and AimBot.Character and AimBot.Character:FindFirstChild(Sage.Camlock.AimPart.Aimpart).Velocity.magnitude > Sage.Camlock.Resolving.Magnitude then
            NewVelocity(AimBot.Character[Sage.Camlock.AimPart.Aimpart])
        end
    end)    

-- // Velocity
do
local clearTable = function(tab)
    for _, ent in next, tab do
        ent = nil 
    end
end
spawn(function()
    while true do
        fl_info = {}
        if Sage.Desync.CripWalk.Enabled then  
            if NiggerAlive(LocalPlayer) then
                fakelagTick += 1
                fl_info[1] = LocalPlayer.Character.HumanoidRootPart.CFrame


                if sleepNet == false then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(555,0,5)
                end
                sethiddenproperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", sleepNet)
                LocalPlayer.Character.HumanoidRootPart.CFrame = fl_info[1]
                if fakelagTick >= Sage.Desync.CripWalk.Tick then
                    sleepNet = false
                    fakelagTick = 0
                else
                    sleepNet = true
                end
            end
        end



        if Sage.Desync.PredictionBreaker.Enabled == true then
            if NiggerAlive(LocalPlayer) then
                fakeVelocity = Vector3.new(Sage.Desync.PredictionBreaker.Velocity.X, Sage.Desync.PredictionBreaker.Velocity.Y, Sage.Desync.PredictionBreaker.Velocity.Z)
                realVelocity = LocalPlayer.Character["HumanoidRootPart"].Velocity

                for index, part in next, LocalPlayer.Character:GetChildren() do
                    if part and part:IsA("BasePart") then 
                        lastVelocities[part] = part.Velocity
                        part.Velocity = fakeVelocity
    
                    end
                end
                
                
                RunService.RenderStepped:wait()
                
                for index, part in next, LocalPlayer.Character:GetChildren() do
                    if part and part:IsA("BasePart") then 
                        part.Velocity = lastVelocities[part];

                    end
                end
                clearTable(lastVelocities);
                clearTable(lastCFrames);

                if Sage.Desync.PredictionBreaker.UsePreset == true then
                    if Sage.Desync.PredictionBreaker.Preset == "Random" then
                        Sage.Desync.PredictionBreaker.Velocity.X = math.random(-600, 600)
                        Sage.Desync.PredictionBreaker.Velocity.Y = math.random(-600, 600)
                        Sage.Desync.PredictionBreaker.Velocity.Z = math.random(-600, 600)
                    else
                        if Sage.Desync.PredictionBreaker.Velocity.X >= 600 then
                            velocityDirection = true
                        elseif Sage.Desync.PredictionBreaker.Velocity.X <= -600 then
                            velocityDirection = false
                        end
                        Sage.Desync.PredictionBreaker.Velocity.X = velocityAmount
                        Sage.Desync.PredictionBreaker.Velocity.Y = velocityAmount
                        Sage.Desync.PredictionBreaker.Velocity.Z = velocityAmount

                        

                        if velocityDirection then
                            velocityAmount -= 1
                        else
                            velocityAmount += 1
                        end

                    end
                end
            end
        end
        
        RunService.Heartbeat:Wait()
    end
end)

Script.Drawing["R6Dummy"] = game:GetObjects("rbxassetid://9474737816")[1]; Script.Drawing["R6Dummy"].Head.Face:Destroy(); for i, v in pairs(Script.Drawing["R6Dummy"]:GetChildren()) do v.Transparency = v.Name == "HumanoidRootPart" and 1 or 0.70; v.Material = "Neon"; v.Color = Color3.fromRGB(100,81,195); v.CanCollide = false; v.Anchored = false end

RunService.Heartbeat:Connect(function()
if Sage.CSync.Enabled then
        LilNigga = LocalPlayer.Character.HumanoidRootPart.CFrame
        local cframe = (Sage.CSync.AttachTarget and Target and Target.Character and Target.Character.HumanoidRootPart.CFrame) or LocalPlayer.Character.HumanoidRootPart.CFrame
        if Sage.CSync.Enabled then
            if Sage.CSync.Type == "Random" then
                cframe = cframe * CFrame.new(math.random(-Sage.CSync.RandomDistance, Sage.CSync.RandomDistance), math.random(-Sage.CSync.RandomDistance, Sage.CSync.RandomDistance), math.random(-Sage.CSync.RandomDistance, Sage.CSync.RandomDistance))
            elseif Sage.CSync.Type == "Custom" then
                cframe = cframe * CFrame.new(Sage.CSync.Custom.X, Sage.CSync.Custom.Y, Sage.CSync.Custom.Z)
            elseif Sage.CSync.Type == "Target Strafe" and Sage.Silent.Enabled and Target then
                local CurrentTime = tick() 
                cframe = CFrame.new(Target.Character.HumanoidRootPart.Position) * CFrame.Angles(0, 2 * math.pi * CurrentTime * Sage.CSync.TargetStrafe.Speed % (2 * math.pi), 0) * CFrame.new(0, Sage.CSync.TargetStrafe.Height, Sage.CSync.TargetStrafe.Distance)
             elseif Sage.CSync.Type == "Destroy Cheaters" then
             cframe = cframe * CFrame.new(9e9, 0/0, math.huge)
            elseif Sage.CSync.Type == "Local Strafe" then
                local currentTime = tick() 
                cframe = CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.Angles(0, 2 * math.pi * currentTime * Sage.CSync.TargetStrafe.Speed % (2 * math.pi), 0) * CFrame.new(0, Sage.CSync.TargetStrafe.Height, Sage.CSync.TargetStrafe.Distance)
                elseif Sage.CSync.Type == "Random Target" and NiggerAlive(Target) then
             cframe = CFrame.new(Target.Character.HumanoidRootPart.Position + Vector3.new(math.random(-Sage.CSync.RandomDistance, Sage.CSync.RandomDistance), math.random(-Sage.CSync.RandomDistance, Sage.CSync.RandomDistance), math.random(-Sage.CSync.RandomDistance, Sage.CSync.RandomDistance))) * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                end

        if Sage.CSync.Visualize then
            Script.Drawing["R6Dummy"].Parent = workspace
            Script.Drawing["R6Dummy"].HumanoidRootPart.Velocity = Vector3.new()
            Script.Drawing["R6Dummy"]:SetPrimaryPartCFrame(cframe)
            for i, v in pairs(Script.Drawing["R6Dummy"]:GetChildren()) do v.Transparency = v.Name == "HumanoidRootPart" and 1 or 0.70; v.Material = "Neon"; v.Color = Sage.CSync.VisualizeColor; v.CanCollide = false; v.Anchored = false end
        else
            Script.Drawing["R6Dummy"].Parent = nil
        end
        LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
        RunService.RenderStepped:Wait()
        LocalPlayer.Character.HumanoidRootPart.CFrame = LilNigga
    else
        if Script.Drawing["R6Dummy"].Parent ~= nil then
            Script.Drawing["R6Dummy"].Parent = nil
        end
    end
end
end)

     desyncInit = function() -- thanks wendigo for this or whoever made it 
				local Root = LocalPlayer.Character.HumanoidRootPart
				local rootVel = Root.Velocity;
				local rootAng = Random(-180, 180)
				local rootOffset do
					local X = -Random(64^2, 128^2);
					local Y = -Random(0, 128^2);
					local Z = -Random(64^2, 128^2);
			
					rootOffset = NewVector3(X, -Y, Z);
				end;
				
				LocalPlayer.Character.HumanoidRootPart.CFrame *= Angle(0, Rad(rootAng), 0);
				LocalPlayer.Character.HumanoidRootPart.Velocity = rootOffset; 
			
				RunService.RenderStepped:Wait();
				
				LocalPlayer.Character.HumanoidRootPart.CFrame *= Angle(0, Rad(-rootAng), 0);
				LocalPlayer.Character.HumanoidRootPart.Velocity = rootVel;
			end;
			--
Script.Functions.Desync = function()

local ShowVisualizerDot = Sage.Antilock.Enabled and Sage.Antilock.Visualize.Enabled
Script.Drawing.DesyncCircle.Visible = ShowVisualizerDot
    if Sage.Antilock.Enabled and NiggerAlive(LocalPlayer) and LocalPlayer.Character.Humanoid.health > Sage.Antilock.HealthDeActivation then
            local SaveVelocity = LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity
            local SaveRotVelocity = LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity
            if Sage.Antilock.Method == "Unhittable" then
                LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (2^16)
                LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(1,1,1) * (2^16)
            elseif Sage.Antilock.Method == "Multiplier" then
                LocalPlayer.Character.HumanoidRootPart.Velocity = LocalPlayer.Character.HumanoidRootPart.Velocity * Sage.Antilock.Power
            elseif Sage.Antilock.Method == "Custom" then
                LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(Sage.Antilock.CustomValue.X, Sage.Antilock.CustomValue.Y, Sage.Antilock.CustomValue.Z)
            elseif Sage.Antilock.Method == "Underground" then
                LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, -Sage.Antilock.Power, 0)
            elseif Sage.Antilock.Method == "Over" then
                LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, Sage.Antilock.Power, 0)
            elseif Sage.Antilock.Method == "Disabler" then
                LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero
                elseif Sage.Antilock.Method == "Spinbot" then
                LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,Sage.Antilock.Power * 0.01234,0)
                elseif Sage.Antilock.Method == "Jitter" then
                local RandomJit =  math.random(30, 90)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.Position) * CFrame.Angles(0, math.rad(180) + math.rad((math.random(1, 2) == 1 and RandomJit or -RandomJit)), 0) 
            end
            
            if ShowVisualizerDot then
                local ScreenPosition = CurrentCamera:WorldToScreenPoint(LocalPlayer.Character.HumanoidRootPart.Position + LocalPlayer.Character.HumanoidRootPart.Velocity * Sage.Antilock.Visualize.Prediction)
                Script.Drawing.DesyncCircle.Position = ScreenPosition
                Script.Drawing.DesyncCircle.Color = Sage.Antilock.Visualize.Color
            end
            
            RunService.RenderStepped:Wait()
            
            LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = SaveVelocity
            LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = SaveRotVelocity
        end
    end
end

-- // On Hit Src
local hitSounds = {
    Bameware = "rbxassetid://3124331820",
    Bell = "rbxassetid://6534947240",
    Bubble = "rbxassetid://6534947588",
    Pick = "rbxassetid://1347140027",
    Pop = "rbxassetid://198598793",
    Rust = "rbxassetid://1255040462",
    Sans = "rbxassetid://3188795283",
    Fart = "rbxassetid://130833677",
    Big = "rbxassetid://5332005053",
    Vine = "rbxassetid://5332680810",
    Bruh = "rbxassetid://4578740568",
    Skeet = "rbxassetid://5633695679",
    Neverlose = "rbxassetid://6534948092",
    Fatality = "rbxassetid://6534947869",
    Bonk = "rbxassetid://5766898159",
    Minecraft = "rbxassetid://4018616850",
}
local hitSoundsNames = {"Bameware", "Bubble", "Pick", "Pop", "Rust", "Sans", "Fart", "Big", "Vine", "Bruh", "Skeet", "Neverlose", "Fatality", "Bonk","Minecraft"}
nigger = Instance.new("Folder", Workspace); 
local Utility = {}
local NewVector2, NewVector3, NewCFrame, NewAngle, NewRGB, NewHex, NewInstance, Spawn, Wait, Create, Resume, SpinAngle, SpinSize, SpinSpeed, Huge, Pi, Clamp, Round, Abs, Floor, Random, Sin, Cos, Rad, Halfpi, Find, Clear, Sub, Upper, Lower, Insert = Vector2.new, Vector3.new, CFrame.new, CFrame.Angles, Color3.fromRGB, Color3.fromHex, Instance.new, task.spawn, task.wait, coroutine.create, coroutine.resume, 0, 25, 0, math.huge, math.pi, math.clamp, math.round, math.abs, math.floor, math.random, math.sin, math.cos, math.rad, math.pi/2, table.find, table.clear, string.sub, string.upper, string.lower, table.insert
local Sparkles = game:GetObjects("rbxassetid://16883621036")[1]; Sparkles.Parent = ReplicatedStorage; -- this doesnt exist
local SparklesEffect = Sparkles.LevelParticle;

do
function Utility:HitEffect(Type, Character)
		local function convert(color)
			return color.r/5, color.g/5, color.b/5
		end 
		-- 
		local function Weld(x,y)
			local W = Instance.new("Weld")
			W.Part0 = x
			W.Part1 = y
			local CJ = CFrame.new(x.Position)
			local C0 = x.CFrame:inverse()*CJ
			local C1 = y.CFrame:inverse()*CJ
			W.C0 = C0
			W.C1 = C1
			W.Parent = x
		end
		-- 
		if Type == "Confetti" then 
			task.spawn(function()
				local Confetti_Amount = 20000
				local RootPart = Character.HumanoidRootPart
				local ConfettiClone = hitmodule:Clone()
				ConfettiClone.RainbowParticles.Rate = Confetti_Amount
				ConfettiClone.Parent = workspace
				ConfettiClone.CanCollide = false
				ConfettiClone.CFrame = RootPart.CFrame
				-- 
				for i = Confetti_Amount, 0 , -(Confetti_Amount/50) do 
					task.wait()
					ConfettiClone.RainbowParticles.Rate = i
				end 
				-- 
				delay(5, function()
					ConfettiClone:Destroy()
				end)
			end)
		elseif Type == "Nova" then
			local Effect = Nova:Clone() 
			Effect.Parent = Character.HumanoidRootPart
			--	
			for i,v in pairs(Effect:GetChildren()) do 
				v.Rate = 0
				v.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.new(convert(getgenv().Sage.Visuals.OnHit["Hit Effects Color"]))),ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0)),})
				v:Emit()
			end 
			-- 	
			delay(2, function()
				Effect:Destroy()
			end)
			else
			local Clone = SparklesEffect:Clone() 
					Clone.Parent = Character.HumanoidRootPart
					Clone.LockedToPart = false 
					Clone.Acceleration = Vector3.new(0,-100,0)
					-- 
					Clone:Emit(15)
					--
					delay(5, function() Clone:Destroy() end)
		end 
	end 
	-- 
	Utility:HitEffect("Confetti", LocalPlayer.Character)
	--
	function Utility:drawObject(type, prop)
				local obj = Drawing.new(type)
				--
				if prop then
					for i,v in next, prop do
						obj[i] = v;
					end
				end
				return obj  
			end        
			-- 
     function Utility:CreateBeam(Origin, End, Color1, Color2, Texture)
        local BeamPart = NewInstance("Part", workspace)
        BeamPart.Name = "BeamPart"
        BeamPart.Transparency = 1
        --
        local Part = NewInstance("Part", BeamPart)
        Part.Size = NewVector3(1, 1, 1)
        Part.Transparency = 1
        Part.CanCollide = false
        Part.CFrame = typeof(Origin) == "CFrame" and Origin or CFrame.new(Origin)
        Part.Anchored = true
        local Attachment = NewInstance("Attachment", Part)
        local Part2 = NewInstance("Part", BeamPart)
        Part2.Size = NewVector3(1, 1, 1)
        Part2.Transparency = 1
        Part2.CanCollide = false
        Part2.CFrame = typeof(End) == "CFrame" and End or CFrame.new(End)
        Part2.Anchored = true
        Part2.Color = Color3.fromRGB(255, 255, 255)
        local Attachment2 = NewInstance("Attachment", Part2)
        local Beam = NewInstance("Beam", Part)
        Beam.FaceCamera = true
        Beam.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0.00, Color1),
            ColorSequenceKeypoint.new(1, Color2),
        }
        Beam.Attachment0 = Attachment
        Beam.Attachment1 = Attachment2
        Beam.LightEmission = 6
        Beam.LightInfluence = 1
        Beam.Width0 = 1
        Beam.Width1 = 0.6
        Beam.Texture = "rbxassetid://".. Texture ..""
        Beam.LightEmission = 1
        Beam.LightInfluence = 1
        Beam.TextureMode = Enum.TextureMode.Wrap 
        Beam.TextureLength = 3 
        Beam.TextureSpeed = 3
        delay(1, function()
			for i = 0.5, 1, 0.02 do
				wait()
				Beam.Transparency = NumberSequence.new(i)
			end
			Part:Destroy()
			Part2:Destroy()
			BeamPart:Destroy()
        end)
    end
    -- 
	function characterClone(Player, Color, Material, Transparency, Parent)
				for i,v in pairs(Player.Character:GetChildren()) do 
					if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then 
						if v.Name == "UpperTorso" or v.Name == "LowerTorso" then 
							local ClonedPart = Instance.new("Part")
							ClonedPart.Anchored = true 
							ClonedPart.CanCollide = false 
							ClonedPart.Position = v.Position
							ClonedPart.Parent = Parent
							ClonedPart.Material = Enum.Material[Material]
							ClonedPart.Transparency = Transparency 
							ClonedPart.Color = Color
							ClonedPart.Size = v.Size + Vector3.new(0.01,0.01,0.01)
							ClonedPart.Name = v.Name
							ClonedPart.Rotation = v.Rotation
							ClonedPart.Shape = "Block"
						else 
							local ClonedPart = Instance.new("MeshPart")
							ClonedPart.Anchored = true 
							ClonedPart.CanCollide = false 
							ClonedPart.Position = v.Position
							ClonedPart.Parent = Parent
							ClonedPart.Material = Enum.Material[Material]
							ClonedPart.Transparency = Transparency 
							ClonedPart.Color = Color
							ClonedPart.Size = v.Size + Vector3.new(0.01,0.01,0.01)
							ClonedPart.Name = v.Name
							ClonedPart.Rotation = v.Rotation
							ClonedPart.MeshId = v.MeshId
						end 
					end 
				end
			end 
			-- 
end

function setuphitmarker(plr) 
    plr.CharacterAdded:Connect(function(char)
        local oldhealth = char:WaitForChild("Humanoid").Health
        local connection
        connection = char:WaitForChild("Humanoid").HealthChanged:Connect(function(health)
            if health < oldhealth then 
                if plr == Target or plr == AimBot then 
                    if Sage.Visuals.OnHit.HitSound then 
                        local Sound = Instance.new('Sound', CurrentCamera)
                        local SoundName = Sage.Visuals.OnHit.Sound
                        local SoundID = hitSounds[SoundName]
                        Sound.SoundId = SoundID
                        Sound.Volume = Sage.Visuals.OnHit.Volume
                        Sound:Play()
                        delay(10,function()
                            Sound:Destroy()
                        end)
                    end
                    if Sage.Visuals.OnHit["Hit Chams"] then 
														local Model = Instance.new("Model", nigger) 
														characterClone(plr, Sage.Visuals.OnHit["Hit Chams Color"], Sage.Visuals.OnHit["Hit Chams Material"], Sage.Visuals.OnHit["Hit Chams Transparency"], Model);
														delay(Sage.Visuals.OnHit["Hit Chams Fading Time"], function()
															Model:Destroy()
														end)
													end
                    if getgenv().Sage.Visuals.OnHit["Hit Effect Enabled"] then
													Utility:HitEffect(getgenv().Sage.Visuals.OnHit["Hit Effect"], plr.Character)
												end 
												if Sage.Visuals.OnHit.HitLogs then 
                        notify(tostring(math.floor(oldhealth) - math.floor(health)).." damage inflicted on "..char.Humanoid.DisplayName.." "..math.floor(health).."/"..math.floor(char.Humanoid.MaxHealth))
                    end
				    if Sage.Visuals.OnHit["Impact Points Enabled"] then 
						local Impact = NewInstance("Part")
						Impact.Anchored = true 
						Impact.CanCollide = false 
						Impact.Parent = game.Workspace
						Impact.Material = Enum.Material[tostring(Sage.Visuals.OnHit["Impact Points Material"])]
						Impact.Shape = Enum.PartType.Block 
						Impact.Transparency = Sage.Visuals.OnHit["Impact Points Transparency"]
						Impact.Color = Sage.Visuals.OnHit["Impact Points Color"]
						Impact.Size = NewVector3(0.5, 0.5, 0.5)
						Impact.CFrame = CFrame.new(LocalPlayer.Character.BodyEffects.MousePos.Value)
						delay(3, function()
							Impact:Destroy()
						end)
					end					
                end
            end
            oldhealth = health
            if health == 0 then 
                connection:Disconnect()
            end
        end)
    end)
end

for i,v in pairs(game.Players:GetChildren()) do 
    setuphitmarker(v)
end

for i,plr in pairs(game.Players:GetChildren()) do 
    local char = plr.Character
    local oldhealth = char:WaitForChild("Humanoid").Health
    local connection
    connection = char:WaitForChild("Humanoid").HealthChanged:Connect(function(health)
        if health < oldhealth then 
            if plr == Target or plr == AimBot then 
                if Sage.Visuals.OnHit.HitSound then 
                    local Sound = Instance.new('Sound', CurrentCamera)
                    local SoundName = Sage.Visuals.OnHit.Sound
                    local SoundID = hitSounds[SoundName]
                    Sound.SoundId = SoundID
                    Sound.Volume = Sage.Visuals.OnHit.Volume
                    Sound:Play()
                    delay(10,function()
                        Sound:Destroy()
                    end)
                end
                if Sage.Visuals.OnHit["Hit Chams"] then 
														local Model = Instance.new("Model", nigger) 
														characterClone(plr, Sage.Visuals.OnHit["Hit Chams Color"], Sage.Visuals.OnHit["Hit Chams Material"], Sage.Visuals.OnHit["Hit Chams Transparency"], Model);
														delay(Sage.Visuals.OnHit["Hit Chams Fading Time"], function()
															Model:Destroy()
														end)
													end
                if getgenv().Sage.Visuals.OnHit["Hit Effect Enabled"] then
													Utility:HitEffect(getgenv().Sage.Visuals.OnHit["Hit Effect"], plr.Character)
												end 
												if Sage.Visuals.OnHit.HitLogs then 
                        notify(tostring(math.floor(oldhealth) - math.floor(health)).." damage inflicted on "..char.Humanoid.DisplayName.." "..math.floor(health).."/"..math.floor(char.Humanoid.MaxHealth))
                    end
				if Sage.Visuals.OnHit["Impact Points Enabled"] then 
						local Impact = NewInstance("Part")
						Impact.Anchored = true 
						Impact.CanCollide = false 
						Impact.Parent = game.Workspace
						Impact.Material = Enum.Material[tostring(Sage.Visuals.OnHit["Impact Points Material"])]
						Impact.Shape = Enum.PartType.Block 
						Impact.Transparency = Sage.Visuals.OnHit["Impact Points Transparency"]
						Impact.Color = Sage.Visuals.OnHit["Impact Points Color"]
						Impact.Size = NewVector3(0.5, 0.5, 0.5)
						Impact.CFrame = CFrame.new(LocalPlayer.Character.BodyEffects.MousePos.Value)
						delay(3, function()
							Impact:Destroy()
						end)
					end					
                
            end
        end
        oldhealth = health
        if health == 0 then 
            connection:Disconnect()
        end
    end)
end

game.Players.PlayerAdded:Connect(function(plr)
    setuphitmarker(plr)
end)
 
-- // Crosshair And Esp!!!
    Script.Functions.NewDrawing = function(Type, Properties)
    local NewDrawing = Drawing.new(Type)

    for i,v in next, Properties or {} do
        NewDrawing[i] = v
    end
    return NewDrawing
end

local ILoveLatinas = {}

Script.Drawing.Sub = Script.Functions.NewDrawing("Text", {Outline = true, Text = "Suicide.", Color = Color3.new(1, 1, 1)})
Script.Drawing.Domain = Script.Functions.NewDrawing("Text", {Outline = true, Text = "lol", Color = Color3.fromRGB(255, 0, 0)})

for KYS = 1, 8 do
    ILoveLatinas[KYS] = Drawing.new('Line')
end

    -- Functions
local Functions = {}
do
    function Functions:Create(Class, Properties)
        local _Instance = typeof(Class) == 'string' and Instance.new(Class) or Class
        for Property, Value in pairs(Properties) do
            _Instance[Property] = Value
        end
        return _Instance;
    end
    --
    function Functions:GetPlayerTool(Character)
        for _, value in pairs(Character:GetChildren()) do
            if value.Name ~= "HolsterModel" and value:IsA("Model") and value.Name ~= "Hair" and (value:FindFirstChild("Detail") or value:FindFirstChild("Main") or value:FindFirstChild("Handle") or value:FindFirstChild("Attachments") or value:FindFirstChild("ArrowAttach") or value:FindFirstChild("Attach")) and value.PrimaryPart then
                return value.Name;
            end
        end
        return "none"
    end    
    function Functions:GetPlayerToolImg(Character)
        for _, value in pairs(Character:GetChildren()) do
            if value.Name ~= "HolsterModel" and value:IsA("Model") and value.Name ~= "Hair" and (value:FindFirstChild("Detail") or value:FindFirstChild("Main") or value:FindFirstChild("Handle") or value:FindFirstChild("Attachments") or value:FindFirstChild("ArrowAttach") or value:FindFirstChild("Attach")) and value.PrimaryPart then
                return Weapon_Icons[value.Name] ;
            end
        end
        return nil
    end     
    --
    function Functions:FadeOutOnDist(element, distance)
        local transparency = math.max(0.1, 1 - (distance / Sage.Displaying.ESP.MaxDistance))
        if element:IsA("TextLabel") then
            element.TextTransparency = 1 - transparency
        elseif element:IsA("ImageLabel") then
            element.ImageTransparency = 1 - transparency
        elseif element:IsA("UIStroke") then
            element.Transparency = 1 - transparency
        elseif element:IsA("Frame") and (element == Healthbar or element == BehindHealthbar) then
            element.BackgroundTransparency = 1 - transparency
        elseif element:IsA("Frame") then
            element.BackgroundTransparency = 1 - transparency
        elseif element:IsA("Highlight") then
            element.FillTransparency = 1 - transparency
            element.OutlineTransparency = 1 - transparency
        end;
    end;  
end;

do -- Initalize
    local ScreenGui = Functions:Create("ScreenGui", {
        Parent = CoreGui,
        Name = "ESPHolder",
    });

    local DupeCheck = function(plr)
        if ScreenGui:FindFirstChild(plr.Name) then
            ScreenGui[plr.Name]:Destroy()
        end
    end

    local ESP = function(plr)
        coroutine.wrap(DupeCheck)(plr) -- Dupecheck
        local Name = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, -11), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = Sage.Displaying.ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), RichText = true})
        local Distance = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, 11), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = Sage.Displaying.ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), RichText = true})
        local Weapon = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, 31), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = Sage.Displaying.ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), RichText = true})
        local Box = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 0.75, BorderSizePixel = 0})
        local Gradient1 = Functions:Create("UIGradient", {Parent = Box, Enabled = Sage.Displaying.ESP.Drawing.Boxes.GradientFill, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Sage.Displaying.ESP.Drawing.Boxes.GradientFillRGB1), ColorSequenceKeypoint.new(1, Sage.Displaying.ESP.Drawing.Boxes.GradientFillRGB2)}})
        local Outline = Functions:Create("UIStroke", {Parent = Box, Enabled = Sage.Displaying.ESP.Drawing.Boxes.Gradient, Transparency = 0, Color = Color3.fromRGB(255, 255, 255), LineJoinMode = Enum.LineJoinMode.Miter})
        local Gradient2 = Functions:Create("UIGradient", {Parent = Outline, Enabled = Sage.Displaying.ESP.Drawing.Boxes.Gradient, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Sage.Displaying.ESP.Drawing.Boxes.GradientRGB1), ColorSequenceKeypoint.new(1, Sage.Displaying.ESP.Drawing.Boxes.GradientRGB2)}})
        local Healthbar = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0})
        local BehindHealthbar = Functions:Create("Frame", {Parent = ScreenGui, ZIndex = -1, BackgroundColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 0})
        local HealthbarGradient = Functions:Create("UIGradient", {Parent = Healthbar, Enabled = Sage.Displaying.ESP.Drawing.Healthbar.Gradient, Rotation = -90, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Sage.Displaying.ESP.Drawing.Healthbar.GradientRGB1), ColorSequenceKeypoint.new(0.5, Sage.Displaying.ESP.Drawing.Healthbar.GradientRGB2), ColorSequenceKeypoint.new(1, Sage.Displaying.ESP.Drawing.Healthbar.GradientRGB3)}})
        local HealthText = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, 31), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = Sage.Displaying.ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        local Chams = Functions:Create("Highlight", {Parent = ScreenGui, FillTransparency = 1, OutlineTransparency = 0, OutlineColor = Color3.fromRGB(119, 120, 255), DepthMode = "AlwaysOnTop"})
        local WeaponIcon = Functions:Create("ImageLabel", {Parent = ScreenGui, BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), BorderSizePixel = 0, Size = UDim2.new(0, 40, 0, 40)})
        local Gradient3 = Functions:Create("UIGradient", {Parent = WeaponIcon, Rotation = -90, Enabled = Sage.Displaying.ESP.Drawing.Weapons.Gradient, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Sage.Displaying.ESP.Drawing.Weapons.GradientRGB1), ColorSequenceKeypoint.new(1, Sage.Displaying.ESP.Drawing.Weapons.GradientRGB2)}})
        local LeftTop = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Sage.Displaying.ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local LeftSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Sage.Displaying.ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local RightTop = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Sage.Displaying.ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local RightSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Sage.Displaying.ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Sage.Displaying.ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomDown = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Sage.Displaying.ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomRightSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Sage.Displaying.ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomRightDown = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Sage.Displaying.ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local Flag1 = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(1, 0, 0, 0), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = Sage.Displaying.ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        local Flag2 = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(1, 0, 0, 0), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = Sage.Displaying.ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        --local DroppedItems = Functions:Create("TextLabel", {Parent = ScreenGui, AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = Sage.Displaying.ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        --
        local Updater = function()
            local Connection;
            local function HideESP()
                Box.Visible = false;
                Name.Visible = false;
                Distance.Visible = false;
                Weapon.Visible = false;
                Healthbar.Visible = false;
                BehindHealthbar.Visible = false;
                HealthText.Visible = false;
                WeaponIcon.Visible = false;
                LeftTop.Visible = false;
                LeftSide.Visible = false;
                BottomSide.Visible = false;
                BottomDown.Visible = false;
                RightTop.Visible = false;
                RightSide.Visible = false;
                BottomRightSide.Visible = false;
                BottomRightDown.Visible = false;
                Flag1.Visible = false;
                Chams.Enabled = false;
                Flag2.Visible = false;
                if not plr then
                    ScreenGui:Destroy();
                    Connection:Disconnect();
                end
            end
            --
            Connection = RunService.RenderStepped:Connect(function()
                if Sage.Displaying.ESP.Enabled and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    local HRP = plr.Character.HumanoidRootPart
                    local Humanoid = plr.Character:WaitForChild("Humanoid");
                    local Pos, OnScreen = Camera:WorldToScreenPoint(HRP.Position)
                    local Dist = (Camera.CFrame.Position - HRP.Position).Magnitude / 3.5714285714
                    LionIsSuchAMidget = (plr:FindFirstChildOfClass("Tool") and plr:FindFirstChildOfClass("Tool").Name) or "None"
                    
                    if OnScreen and Dist <= Sage.Displaying.ESP.MaxDistance then
                        local Size = HRP.Size.Y
                        local scaleFactor = (Size * Camera.ViewportSize.Y) / (Pos.Z * 2)
                        local w, h = 3 * scaleFactor, 4.5 * scaleFactor

                        -- Fade-out effect --
                        if Sage.Displaying.ESP.FadeOut.OnDistance then
                            Functions:FadeOutOnDist(Box, Dist)
                            Functions:FadeOutOnDist(Outline, Dist)
                            Functions:FadeOutOnDist(Name, Dist)
                            Functions:FadeOutOnDist(Distance, Dist)
                            Functions:FadeOutOnDist(Weapon, Dist)
                            Functions:FadeOutOnDist(Healthbar, Dist)
                            Functions:FadeOutOnDist(BehindHealthbar, Dist)
                            Functions:FadeOutOnDist(HealthText, Dist)
                            Functions:FadeOutOnDist(WeaponIcon, Dist)
                            Functions:FadeOutOnDist(LeftTop, Dist)
                            Functions:FadeOutOnDist(LeftSide, Dist)
                            Functions:FadeOutOnDist(BottomSide, Dist)
                            Functions:FadeOutOnDist(BottomDown, Dist)
                            Functions:FadeOutOnDist(RightTop, Dist)
                            Functions:FadeOutOnDist(RightSide, Dist)
                            Functions:FadeOutOnDist(BottomRightSide, Dist)
                            Functions:FadeOutOnDist(BottomRightDown, Dist)
                            Functions:FadeOutOnDist(Chams, Dist)
                            Functions:FadeOutOnDist(Flag1, Dist)
                            Functions:FadeOutOnDist(Flag2, Dist)
                        end

                        -- Teamcheck
                        if Sage.Displaying.ESP.TeamCheck and plr ~= LocalPlayer and ((LocalPlayer.Team ~= plr.Team and plr.Team) or (not LocalPlayer.Team and not plr.Team)) and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") then

                            do -- Chams
                                Chams.Adornee = plr.Character
                                Chams.Enabled = Sage.Displaying.ESP.Drawing.Chams.Enabled
                                Chams.FillColor = Sage.Displaying.ESP.Drawing.Chams.FillRGB
                                Chams.OutlineColor = Sage.Displaying.ESP.Drawing.Chams.OutlineRGB
                                do -- Breathe
                                    if Sage.Displaying.ESP.Drawing.Chams.Thermal then
                                        local breathe_effect = math.atan(math.sin(tick() * 2)) * 2 / math.pi
                                        Chams.FillTransparency = Sage.Displaying.ESP.Drawing.Chams.Fill_Transparency * breathe_effect * 0.01
                                        Chams.OutlineTransparency = Sage.Displaying.ESP.Drawing.Chams.Outline_Transparency * breathe_effect * 0.01
                                    end
                                end
                                if Sage.Displaying.ESP.Drawing.Chams.VisibleCheck then
                                    Chams.DepthMode = "Occluded"
                                else
                                    Chams.DepthMode = "AlwaysOnTop"
                                end
                            end;

                            do -- Corner Boxes
                                LeftTop.Visible = Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled
                                LeftTop.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                                LeftTop.Size = UDim2.new(0, w / 5, 0, 1)
                                
                                LeftSide.Visible = Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled
                                LeftSide.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                                LeftSide.Size = UDim2.new(0, 1, 0, h / 5)
                                
                                BottomSide.Visible = Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled
                                BottomSide.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y + h / 2)
                                BottomSide.Size = UDim2.new(0, 1, 0, h / 5)
                                BottomSide.AnchorPoint = Vector2.new(0, 5)
                                
                                BottomDown.Visible = Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled
                                BottomDown.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y + h / 2)
                                BottomDown.Size = UDim2.new(0, w / 5, 0, 1)
                                BottomDown.AnchorPoint = Vector2.new(0, 1)
                                
                                RightTop.Visible = Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled
                                RightTop.Position = UDim2.new(0, Pos.X + w / 2, 0, Pos.Y - h / 2)
                                RightTop.Size = UDim2.new(0, w / 5, 0, 1)
                                RightTop.AnchorPoint = Vector2.new(1, 0)
                                
                                RightSide.Visible = Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled
                                RightSide.Position = UDim2.new(0, Pos.X + w / 2 - 1, 0, Pos.Y - h / 2)
                                RightSide.Size = UDim2.new(0, 1, 0, h / 5)
                                RightSide.AnchorPoint = Vector2.new(0, 0)
                                
                                BottomRightSide.Visible = Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled
                                BottomRightSide.Position = UDim2.new(0, Pos.X + w / 2, 0, Pos.Y + h / 2)
                                BottomRightSide.Size = UDim2.new(0, 1, 0, h / 5)
                                BottomRightSide.AnchorPoint = Vector2.new(1, 1)
                                
                                BottomRightDown.Visible = Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled
                                BottomRightDown.Position = UDim2.new(0, Pos.X + w / 2, 0, Pos.Y + h / 2)
                                BottomRightDown.Size = UDim2.new(0, w / 5, 0, 1)
                                BottomRightDown.AnchorPoint = Vector2.new(1, 1)                                                            
                            end

                            do -- Boxes
                                Box.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                                Box.Size = UDim2.new(0, w, 0, h)
                                Box.Visible = Sage.Displaying.ESP.Drawing.Boxes.Full.Enabled;

                                -- Gradient
                                if Sage.Displaying.ESP.Drawing.Boxes.Filled.Enabled then
                                    Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                    if Sage.Displaying.ESP.Drawing.Boxes.GradientFill then
                                        Box.BackgroundTransparency = Sage.Displaying.ESP.Drawing.Boxes.Filled.Transparency;
                                    else
                                        Box.BackgroundTransparency = 1
                                    end
                                    Box.BorderSizePixel = 1
                                else
                                    Box.BackgroundTransparency = 1
                                end
                                -- Animation
                                RotationAngle = RotationAngle + (tick() - Tick) * Sage.Displaying.ESP.Drawing.Boxes.RotationSpeed * math.cos(math.pi / 4 * tick() - math.pi / 2)
                                if Sage.Displaying.ESP.Drawing.Boxes.Animate then
                                    Gradient1.Rotation = RotationAngle
                                    Gradient2.Rotation = RotationAngle
                                else
                                    Gradient1.Rotation = -45
                                    Gradient2.Rotation = -45
                                end
                                Tick = tick()
                            end

                            -- Healthbar
                            do  
                                local health = Humanoid.Health / Humanoid.MaxHealth;
                                Healthbar.Visible = Sage.Displaying.ESP.Drawing.Healthbar.Enabled;
                                Healthbar.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2 + h * (1 - health))  
                                Healthbar.Size = UDim2.new(0, Sage.Displaying.ESP.Drawing.Healthbar.Width, 0, h * health)  
                                --
                                BehindHealthbar.Visible = Sage.Displaying.ESP.Drawing.Healthbar.Enabled;
                                BehindHealthbar.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2)  
                                BehindHealthbar.Size = UDim2.new(0, Sage.Displaying.ESP.Drawing.Healthbar.Width, 0, h)
                                -- Health Text
                                do
                                    if Sage.Displaying.ESP.Drawing.Healthbar.HealthText then
                                        local healthPercentage = math.floor(Humanoid.Health / Humanoid.MaxHealth * 100)
                                        HealthText.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2 + h * (1 - healthPercentage / 100) + 3)
                                        HealthText.Text = tostring(healthPercentage)
                                        HealthText.Visible = Humanoid.Health < Humanoid.MaxHealth
                                        if Sage.Displaying.ESP.Drawing.Healthbar.Lerp then
                                            local color = health >= 0.75 and Color3.fromRGB(0, 255, 0) or health >= 0.5 and Color3.fromRGB(255, 255, 0) or health >= 0.25 and Color3.fromRGB(255, 170, 0) or Color3.fromRGB(255, 0, 0)
                                            HealthText.TextColor3 = color
                                        else
                                            HealthText.TextColor3 = Sage.Displaying.ESP.Drawing.Healthbar.HealthTextRGB
                                        end
                                    end                        
                                end
                            end

                            do -- Names
                                Name.Visible = Sage.Displaying.ESP.Drawing.Names.Enabled
                                if Sage.Displaying.ESP.Options.Friendcheck and LocalPlayer:IsFriendsWith(plr.UserId) then
                                    Name.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s', Sage.Displaying.ESP.Options.FriendcheckRGB.R * 255, Sage.Displaying.ESP.Options.FriendcheckRGB.G * 255, Sage.Displaying.ESP.Options.FriendcheckRGB.B * 255, plr.Name)
                                else
                                    Name.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s', 255, 0, 0, plr.Name)
                                end
                                Name.Position = UDim2.new(0, Pos.X, 0, Pos.Y - h / 2 - 9)
                            end
                            
                            do -- Flags
                                Flag1.Position = UDim2.new(0, Pos.X + w / 2 + 20, 0, Pos.Y - h / 2 + 3)                                
                                if Sage.Displaying.ESP.Drawing.Flags.Enabled then
                                    if false then
                                        Flag1.Visible = true;
                                        Flag1.TextColor3 = Color3.fromRGB(55, 200, 55)
                                    else
                                        Flag1.Visible = false;
                                        Flag1.Text = "";
                                    end
                                    Flag2.Position = UDim2.new(0, Pos.X + w / 2 + 16, 0, Pos.Y - h / 2 + 14)       
                                    if false then
                                        Flag2.Visible = true;                      
                                    else
                                        Flag2.Visible = false;
                                        Flag2.Text = "";
                                    end
                                end
                            end
                            
                            do -- Distance
                                if Sage.Displaying.ESP.Drawing.Distances.Enabled then
                                    if Sage.Displaying.ESP.Drawing.Distances.Position == "Bottom" then
                                        Weapon.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 18)
                                        WeaponIcon.Position = UDim2.new(0, Pos.X - 21, 0, Pos.Y + h / 2 + 15);
                                        Distance.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 7)
                                        Distance.Text = string.format("%d meters", math.floor(Dist))
                                        Distance.Visible = true
                                    elseif Sage.Displaying.ESP.Drawing.Distances.Position == "Text" then
                                        Weapon.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 8)
                                        WeaponIcon.Position = UDim2.new(0, Pos.X - 21, 0, Pos.Y + h / 2 + 5);
                                        Distance.Visible = false
                                        if Sage.Displaying.ESP.Options.Friendcheck and LocalPlayer:IsFriendsWith(plr.UserId) then
                                            Name.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s [%d]', Sage.Displaying.ESP.Options.FriendcheckRGB.R * 255, Sage.Displaying.ESP.Options.FriendcheckRGB.G * 255, Sage.Displaying.ESP.Options.FriendcheckRGB.B * 255, plr.Name, math.floor(Dist))
                                        else
                                            Name.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s [%d]', 255, 0, 0, plr.Name, math.floor(Dist))
                                        end
                                        Name.Visible = Sage.Displaying.ESP.Drawing.Names.Enabled
                                    end
                                end
                            end

                            do -- Weapons
                                local currentTool = plr.Character:FindFirstChildWhichIsA("Tool")
                                if currentTool then
                                Weapon.Text = Sage.Displaying.ESP.Drawing.Weapons.Enabled and string.format('[<font color="rgb(%d, %d, %d)">'.. currentTool.Name ..'</font>]', Sage.Displaying.ESP.Drawing.Weapons.WeaponTextRGB.R * 255, Sage.Displaying.ESP.Drawing.Weapons.WeaponTextRGB.G * 255, Sage.Displaying.ESP.Drawing.Weapons.WeaponTextRGB.B * 255) or ""
                                Weapon.Visible = Sage.Displaying.ESP.Drawing.Weapons.Enabled
                                
                                do -- Weapon icons
                                    local WeaponImage = plr.Character:FindFirstChildWhichIsA("Tool").Name
                                    local WeaponRah = Weapon_Icons
                                    
                                    if WeaponRah[WeaponImage] then
                                        WeaponIcon.Visible = Sage.Displaying.ESP.Drawing.Weapons.Icons
                                        WeaponIcon.Image = WeaponRah[WeaponImage] 
                                    else
                                        WeaponIcon.Visible = false
                                    end
                                end
                            end                          
                        end
                        else
                            HideESP();
                        end
                    else
                        HideESP();
                    end
                else
                    HideESP();
                end
            end)
        end
        coroutine.wrap(Updater)();
    end
    
    do -- Update ESP
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= LocalPlayer.Name then
                coroutine.wrap(ESP)(v)
            end      
        end
        --
        game:GetService("Players").PlayerAdded:Connect(function(v)
            coroutine.wrap(ESP)(v)
        end);
    end;
end

-- // ThirdD Box ESP
local players = game:GetService("Players")
local runService = game:GetService("RunService")
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera

local newVector2 = Vector2.new
local newColor3 = Color3.new
local newDrawing = Drawing.new

local espCache = {}
local _3DColor = Color3.new(1, 0, 0)
local _3DThickness = 2
local _3DTransparency = 1
local ESPEnabled = false

local function createOrUpdateBoxEsp(player)
if player == localPlayer then return end

local function updateEspBox(character)
    if not espCache[player] then
        espCache[player] = {}
        for i = 1, 12 do
            local line = newDrawing("Line")
            line.Color = _3DColor
            line.Thickness = _3DThickness
            line.Transparency = _3DTransparency
            table.insert(espCache[player], line)
        end
    end
    
    local lines = espCache[player]

    local primaryPart = character.PrimaryPart
    if not primaryPart then
        for _, line in ipairs(lines) do
            line.Visible = false
        end
        return
    end
    
    local size = character:GetExtentsSize()
    local cframe = character:GetModelCFrame()
    local halfSize = size / 2

    local corners = {
        cframe * Vector3.new(-halfSize.X, -halfSize.Y, -halfSize.Z),
        cframe * Vector3.new(-halfSize.X, -halfSize.Y, halfSize.Z),
        cframe * Vector3.new(-halfSize.X, halfSize.Y, -halfSize.Z),
        cframe * Vector3.new(-halfSize.X, halfSize.Y, halfSize.Z),
        cframe * Vector3.new(halfSize.X, -halfSize.Y, -halfSize.Z),
        cframe * Vector3.new(halfSize.X, -halfSize.Y, halfSize.Z),
        cframe * Vector3.new(halfSize.X, halfSize.Y, -halfSize.Z),
        cframe * Vector3.new(halfSize.X, halfSize.Y, halfSize.Z)
    }

    local screenCorners = {}
    local onScreen = false
    
    for _, corner in ipairs(corners) do
        local screenPos, visible = camera:WorldToViewportPoint(corner)
        table.insert(screenCorners, newVector2(screenPos.X, screenPos.Y))
        if visible then
            onScreen = true
        end
    end

    if not onScreen then
        for _, line in ipairs(lines) do
            line.Visible = false
        end
        return
    end

    local connections = {
        {1, 2}, {2, 4}, {4, 3}, {3, 1},
        {5, 6}, {6, 8}, {8, 7}, {7, 5},
        {1, 5}, {2, 6}, {3, 7}, {4, 8}
    }

    for i, conn in ipairs(connections) do
        local line = lines[i]
        line.From = screenCorners[conn[1]]
        line.To = screenCorners[conn[2]]
        line.Visible = ESPEnabled
    end
end

local function onCharacterAdded(character)
    local espConnection
    espConnection = runService.RenderStepped:Connect(function()
        if not player.Parent or not character.Parent then
            for _, line in ipairs(espCache[player] or {}) do
                line:Remove()
            end
            espCache[player] = nil
            if espConnection then
                espConnection:Disconnect()
            end
            return
        end
        updateEspBox(character)
    end)
end

player.CharacterAdded:Connect(onCharacterAdded)
if player.Character then
    onCharacterAdded(player.Character)
end
end

-- Connect function to player added and removing events
players.PlayerAdded:Connect(function(player)
createOrUpdateBoxEsp(player)
player.CharacterRemoving:Connect(function(character)
    if espCache[player] then
        for _, line in ipairs(espCache[player]) do
            line:Remove()
        end
        espCache[player] = nil
    end
end)
end)

players.PlayerRemoving:Connect(function(player)
if espCache[player] then
    for _, line in ipairs(espCache[player]) do
        line:Remove()
    end
    espCache[player] = nil
end
end)
local function toggleESP(enabled)
ESPEnabled = enabled
for player, lines in pairs(espCache) do
    for _, line in ipairs(lines) do
        line.Visible = enabled
    end
end
end
local jointsToDraw = {
{"Head", "UpperTorso"},
{"UpperTorso", "LowerTorso"},
{"UpperTorso", "LeftUpperArm"},
{"UpperTorso", "RightUpperArm"},
{"LowerTorso", "LeftUpperLeg"},
{"LowerTorso", "RightUpperLeg"},
{"LeftUpperArm", "LeftLowerArm"},
{"RightUpperArm", "RightLowerArm"},
{"LeftUpperLeg", "LeftLowerLeg"},
{"RightUpperLeg", "RightLowerLeg"}
}

local skeletons = {}

local function updateLine(line, screenPosition1, screenPosition2, isVisible)
if getgenv().SkeletonESP and isVisible then
    line.From = screenPosition1
    line.To = screenPosition2
    line.Visible = true
    
    local color = Color3.fromHSV(tick() % 5 / 5, 0.7, 1)
    line.Color = Color3.new(color.r, color.g, color.b)
    line.Thickness = 2
    line.Transparency = 0.5
else
    line.Visible = false
end
end

local function drawSkeleton(player)
local character = player.Character
if not character then return end

local humanoid = character:FindFirstChildOfClass("Humanoid")
if not humanoid then return end

local rootPart = character:FindFirstChild("HumanoidRootPart")
if not rootPart then return end

if not skeletons[player] then
    skeletons[player] = {}
    for _, joints in ipairs(jointsToDraw) do
        local line = Drawing.new("Line")
        line.Visible = false
        skeletons[player][joints] = line
    end
end

for joints, line in pairs(skeletons[player]) do
    local part1 = character:FindFirstChild(joints[1])
    local part2 = character:FindFirstChild(joints[2])
    
    if part1 and part2 then
        local jointPosition1 = part1.Position
        local jointPosition2 = part2.Position
        
        local screenPosition1, onScreen1 = game.Workspace.CurrentCamera:WorldToViewportPoint(jointPosition1)
        local screenPosition2, onScreen2 = game.Workspace.CurrentCamera:WorldToViewportPoint(jointPosition2)
        
        local adjustedScreenPosition1 = Vector2.new(screenPosition1.X, screenPosition1.Y)
        local adjustedScreenPosition2 = Vector2.new(screenPosition2.X, screenPosition2.Y)
        
        if joints[2] == "LeftLowerArm" or joints[2] == "RightLowerArm" or joints[2] == "LeftLowerLeg" or joints[2] == "RightLowerLeg" then
            adjustedScreenPosition2 = Vector2.new(screenPosition2.X, screenPosition2.Y + 20)
        end
        
        updateLine(line, adjustedScreenPosition1, adjustedScreenPosition2, onScreen1 and onScreen2)
    else
        line.Visible = false
    end
end
end

local function onPlayerAdded(player)
if player ~= game.Players.LocalPlayer then
    drawSkeleton(player)
end
end

local function onPlayerRemoving(player)
if skeletons[player] then
    for _, line in pairs(skeletons[player]) do
        line:Remove()
    end
    skeletons[player] = nil
end
end

for _, player in ipairs(game.Players:GetPlayers()) do
if player ~= game.Players.LocalPlayer then
    drawSkeleton(player)
end
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerRemoving)

game:GetService("RunService").RenderStepped:Connect(function()
for player, _ in pairs(skeletons) do
    drawSkeleton(player)
end
end)


local last_render = 0

RunService.RenderStepped:Connect(function()

local _tick = tick()

    if _tick - last_render > 0 then
        last_render = _tick

local position = (
            Sage.Visuals.Crosshair.Position == "Middle" and Camera.ViewportSize / 2 or
            Sage.Visuals.Crosshair.Position == "Mouse" and game:GetService('UserInputService'):GetMouseLocation()
        )
        
        local sub = Script.Drawing.Sub 
        local domain = Script.Drawing.Domain
        
        
       if Sage.Visuals.Crosshair.Enabled then
            
            for KYS = 1, 4 do
                local outline = ILoveLatinas[KYS]
                local inline = ILoveLatinas[KYS + 4]
    
                local angle = (KYS - 1) * 90
                local length = Sage.Visuals.Crosshair.Size
    
                if Sage.Visuals.Crosshair.Rotation.Enabled then
                    local spin_angle = -_tick * Sage.Visuals.Crosshair.Rotation.Speed % Sage.Visuals.Crosshair.Rotation.Max
                    angle = angle + game:GetService('TweenService'):GetValue(spin_angle / 360, Sage.Visuals.Crosshair.Rotation.Style, Enum.EasingDirection.InOut) * 360
                end
    
                if Sage.Visuals.Crosshair.Resize.Enabled then
                    local resize_length = tick() * Sage.Visuals.Crosshair.Resize.Speed % 180
                    length = Sage.Visuals.Crosshair.Resize.Min + math.sin(math.rad(resize_length)) * Sage.Visuals.Crosshair.Resize.Max
                end
    
                inline.Visible = true
                inline.Color = Sage.Visuals.Crosshair.Color
                inline.From = position + FuckYou(angle, Sage.Visuals.Crosshair.Gap)
                inline.To = position + FuckYou(angle, Sage.Visuals.Crosshair.Gap + length)
                inline.Thickness = 1.5
    
                outline.Visible = true
                outline.From = position + FuckYou(angle, Sage.Visuals.Crosshair.Gap - 1)
                outline.To = position + FuckYou(angle, Sage.Visuals.Crosshair.Gap + length + 1)
                outline.Thickness = 1.5 + 1.5    
            end
        else
            for KYS = 1, 8 do
                ILoveLatinas[KYS].Visible = false
            end
        end
    end
    
    if Sage.Visuals.Crosshair.Text.Pulse and Sage.Visuals.Crosshair.Text.Enabled then 
						local sub = Script.Drawing.Sub
						-- 
						Sine = Sage.Visuals.Crosshair.Text.Pulse and math.abs(math.sin(tick() * 4)) or 1 
						sub.Transparency = Sine
					end
				-- // In-Game Crosshair Shit 
				do 
					if Sage.Visuals.InGameCrosshair.Rotation.Enabled and not Sage.Visuals.InGameCrosshair.Invisible then 
						LocalPlayer.PlayerGui.MainScreenGui.Aim.Rotation += Sage.Visuals.InGameCrosshair.Rotation.Speed
					end 
					-- 
					if Sage.Visuals.InGameCrosshair.Invisible and LocalPlayer.PlayerGui.MainScreenGui.Aim.Visible == true then 
						LocalPlayer.PlayerGui.MainScreenGui.Aim.Visible = false 
					end 
				end 
end)

-- // Checks Everyone In The Server And Puts It In A Table
for _, Player in ipairs(Players:GetPlayers()) do
    if (Player ~= LocalPlayer and LocalPlayer:IsFriendsWith(Player.UserId)) then
        table.insert(Script.Friends, Player)
    end
end

-- // Checks When Players Joins And Adds Them To A Table
Players.PlayerAdded:Connect(function(Player)
    if (LocalPlayer:IsFriendsWith(Player.UserId)) then
        table.insert(Script.Friends, Player)
    end
end)
-- // Local visuals
do 
Script.Functions.CharacterMaterial = function()
		if Sage.Visuals.Local.BodyChams.Enabled then 
			for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.Material = "ForceField"
                        end
                    end
                else
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.Material = "Plastic"
                        end
                    end
                end
	end 
	-- 
	Script.Functions.GunMaterial = function()
		if Sage.Visuals.Local.GunChams.Enabled then
			if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Default.Material = "ForceField"
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Default.Color = Sage.Visuals.Local.GunChams.Color
                    end
                else
                    if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Default.Material = "Plastic"
                    end
                end
	end 
	-- 
	Script.Functions.CloneChamsLOL = function()
	if Sage.Visuals.Local.CloneChams.Enabled then
                    repeat
                        game.Players.LocalPlayer.Character.Archivable = true
                        local Clone = game.Players.LocalPlayer.Character:Clone()
                        for _,Obj in next, Clone:GetDescendants() do
                        if Obj.Name == "HumanoidRootPart" or Obj:IsA("Humanoid") or Obj:IsA("LocalScript") or Obj:IsA("Script") or Obj:IsA("Decal") then
                            Obj:Destroy()
                        elseif Obj:IsA("BasePart") or Obj:IsA("Meshpart") or Obj:IsA("Part") then
                            if Obj.Transparency == 1 then
                            Obj:Destroy()
                            else
                            Obj.CanCollide = false
                            Obj.Anchored = true
                            Obj.Material = Sage.Visuals.Local.CloneChams.Material
                            Obj.Color = Sage.Visuals.Local.CloneChams.Color
                            Obj.Transparency = 0
                            Obj.Size = Obj.Size + Vector3.new(0.03, 0.03, 0.03)   
                        end
                    end
                        pcall(function()
                            Obj.CanCollide = false
                        end)
                    end
                    Clone.Parent = game.Workspace
                    wait(Sage.Visuals.Local.CloneChams.Duration)
                    Clone:Destroy()  
                    until Sage.Visuals.Local.CloneChams.Enabled == false
                end
          end
     --
	Script.Functions.GunSound = function() 
		if LocalPlayer.Character:FindFirstChildWhichIsA("Tool") ~= nil and LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Handle") ~= nil and Sage.Visuals.OnHit.CustomGunSFX then 
                for _,v in pairs(LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Handle:GetChildren()) do 
                    if v:IsA("Sound") and v.Name ~= "NoAmmo" then 
                        v.SoundId = "rbxassetid://"..cum.sfx[Sage.Visuals.OnHit.GunSoundSFX]
                    end 
                end 
            end 
	end 
	--
	Script.Functions.UpdateAtmosphere = function()
                Lighting.FogColor = Sage.Visuals.World.Enabled and Sage.Visuals.World.Fog.Enabled and Sage.Visuals.World.Fog.Color or cum.World.FogColor
                Lighting.FogStart = Sage.Visuals.World.Enabled and Sage.Visuals.World.Fog.Enabled and Sage.Visuals.World.Fog.Start or cum.World.FogStart
                Lighting.FogEnd = Sage.Visuals.World.Enabled and Sage.Visuals.World.Fog.Enabled and Sage.Visuals.World.Fog.End or cum.World.FogEnd
                Lighting.Ambient = Sage.Visuals.World.Enabled and Sage.Visuals.World.Ambient.Enabled and Sage.Visuals.World.Ambient.Color or cum.World.Ambient
                Lighting.ColorShift_Top = Sage.Visuals.World.Enabled and Sage.Visuals.World.ColorShift.Enabled and Sage.Visuals.World.ColorShift.Color or cum.World.ColorShift1
                Lighting.ColorShift_Bottom = Sage.Visuals.World.Enabled and Sage.Visuals.World.ColorShift.Enabled and Sage.Visuals.World.ColorShift.Color2 or cum.World.ColorShift2
                Lighting.OutdoorAmbient = Sage.Visuals.World.Enabled and Sage.Visuals.World.OutdoorAmbient.Enabled and Sage.Visuals.World.OutdoorAmbient.Color or cum.World.OutdoorAmbient
                Lighting.Brightness = Sage.Visuals.World.Enabled and Sage.Visuals.World.Brightness.Enabled and Sage.Visuals.World.Brightness.Value or cum.World.Brightness
                Lighting.ClockTime = Sage.Visuals.World.Enabled and Sage.Visuals.World.ClockTime.Enabled and Sage.Visuals.World.ClockTime.Value or cum.World.ClockTime
                Lighting.ExposureCompensation = Sage.Visuals.World.Enabled and Sage.Visuals.World.WorldExposure.Enabled and Sage.Visuals.World.WorldExposure.Value or cum.World.ExposureCompensation
            end
        --
   Script.Functions.Speed = function()
                if Sage.Misc.Movement.Speed.Enabled and NiggerAlive(LocalPlayer) then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + LocalPlayer.Character.Humanoid.MoveDirection * Sage.Misc.Movement.Speed.Amount
                end
            end
           --
            Script.Functions.NoSlowdown = function()
                if Sage.Misc.Exploits.NoSlowDown then
                    for _, Slowdown in pairs(LocalPlayer.Character.BodyEffects.Movement:GetChildren()) do
                        Slowdown:Destroy()
                    end
                end
            end
-- Define __newindex at the top so it is accessible within the function
local __newindex

-- Hook the __newindex metamethod
__newindex = hookmetamethod(game, "__newindex", function(Self, Property, Value)
    -- Get the calling script
    local CallingScript = getcallingscript()
    
    -- Check conditions before proceeding
    if CallingScript.Name == "Framework" and 
       Self == LocalPlayer.Character.Humanoid and 
       Property == "JumpPower" and 
       Sages.Misc.Exploits.Enabled and 
       Sage.Misc.Exploits.NoJumpCooldown then
        return
    end

    -- Call the original __newindex function
    return __newindex(Self, Property, Value)
end)
--
            Script.Functions.HighlightNigger = function()
            local LocalHL = Instance.new("Highlight")
            if Sage.Visuals.Local.Highlight.Enabled then
                    LocalHL.Parent = LocalPlayer.Character
                    LocalHL.FillColor = Sage.Visuals.Local.Highlight.FillColor
                    LocalHL.OutlineColor = Sage.Visuals.Local.Highlight.OutlineColor
                else
                    LocalHL.Parent = game.CoreGui
                end
            end
            --
        function HaGripPosition()
		if GripPosition and GetAGripNigga() ~= nil and GetAGripNigga().GripPos ~= Vector3.new(NiggerXX,NiggerYY,NiggerZZ) then 
			local tool = GetAGripNigga()
			if tool ~= nil then 
				tool.Parent = LocalPlayer.Backpack
				tool.GripPos = Vector3.new(NiggerXX,NiggerYY,NiggerZZ)
				tool.Parent = LocalPlayer.Character
			end 
		end 
	end  
	-- 
            
   function createBeam(v1, v2)
                local Part = Instance.new("Part", BeamPart)
                Part.Size = Vector3.new(1, 1, 1)
                Part.Transparency = 1
                Part.CanCollide = false
                Part.CFrame = CFrame.new(v1)
                Part.Anchored = true
                local Attachment = Instance.new("Attachment", Part)
                local Part2 = Instance.new("Part", BeamPart)
                Part2.Size = Vector3.new(1, 1, 1)
                Part2.Transparency = 1
                Part2.CanCollide = false
                Part2.CFrame = CFrame.new(v2)
                Part2.Anchored = true
                Part2.Color = Color3.fromRGB(255, 255, 255)
                local Attachment2 = Instance.new("Attachment", Part2)
                local Beam = Instance.new("Beam", Part)
                Beam.FaceCamera = true
                Beam.Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0.00 ,Sage.Visuals.OnHit.BulletTracerColor),
                    ColorSequenceKeypoint.new(1 ,Sage.Visuals.OnHit.BulletTracerColor),
                }
                Beam.Attachment0 = Attachment
                Beam.Attachment1 = Attachment2
                Beam.LightEmission = 6
                Beam.LightInfluence = 1
                Beam.Width0 = 1
                Beam.Width1 = 0.6
                Beam.Texture = "rbxassetid://7136858729"
                Beam.LightEmission = 1
                Beam.LightInfluence = 1
                Beam.TextureMode = Enum.TextureMode.Wrap 
                Beam.TextureLength = 3 
                Beam.TextureSpeed = 3
                delay(1, function()
                for i = 0.5, 1, 0.02 do
                wait()
                Beam.Transparency = NumberSequence.new(i)
                end
                Part:Destroy()
                Part2:Destroy()
                end)
            end
          end
          --
    task.defer(function()
    game:GetService("RunService").Heartbeat:Connect(function()

        if not LocalPlayer.Character then
            return
        end

        if Sage.Visuals.Local.Trail then
            local trail = game:GetObjects("rbxassetid://17483658369")[1]

            trail.Name = 'Fucking_Retard'

            if LocalPlayer.Character.PrimaryPart:FindFirstChild('Fucking_Retard') then
                return
            end

            local Attachment0 = Instance.new("Attachment", LocalPlayer.Character.PrimaryPart)
            local Attachment1 = Instance.new("Attachment", LocalPlayer.Character.PrimaryPart)

            Attachment0.Position = Vector3.new(0, -2.411, 0)
            Attachment1.Position = Vector3.new(0, 2.504, 0)

            trail.Parent = LocalPlayer.Character.PrimaryPart
            trail.Attachment0 = Attachment0
            trail.Attachment1 = Attachment1
        else
            
            if LocalPlayer.Character.PrimaryPart:FindFirstChild('Fucking_Retard') then
                LocalPlayer.Character.PrimaryPart['Fucking_Retard']:Destroy()
            end
        end

    end)
end)
             
            do
            RunService.Heartbeat:Connect(function()
                Script.Functions.Speed()
                Script.Functions.NoSlowdown()
                HaGripPosition()
            end)
        end
        
        RunService.RenderStepped:Connect(function()
        Script.Functions.UpdateAtmosphere()
        end)
        
        task.spawn(function ()
            while true do
                wait()
                Script.Functions.CharacterMaterial()
                Script.Functions.GunMaterial()
                Script.Functions.HighlightNigger()
                Script.Functions.CloneChamsLOL()
                
if Sage.Visuals.OnHit.BulletTracers then
local ColourSequence = ColorSequence.new({
    ColorSequenceKeypoint.new(0,  Sage.Visuals.OnHit.BulletTracerColor),
    ColorSequenceKeypoint.new(1,  Sage.Visuals.OnHit.BulletTracerColor),
})

    for _,v in pairs(game:GetService("Workspace").Ignored:GetDescendants()) do 
        if v.Name == "BULLET_RAYS" then 
            if 100 > (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then 
            v.GunBeam.Texture = "http://www.roblox.com/asset/?id=9150561638"
            v.GunBeam.Width0 = BulletWidth
            v.GunBeam.Width1 = BulletWidth
            v.GunBeam.Color = ColourSequence
        end 
        end 
end 
end 
         end
   end)

-- // Auto Console Clear
game:GetService("RunService").RenderStepped:Connect(function()
    for _, child in pairs(game:GetService("CoreGui"):WaitForChild("DevConsoleMaster"):WaitForChild("DevConsoleWindow"):WaitForChild("DevConsoleUI"):WaitForChild("MainView"):WaitForChild("ClientLog"):GetChildren()) do
        if child:IsA("GuiObject") and child.Name == child.Name:match("%d+") then
            child:Destroy()
        end
    end
end)
-- // Gun Handling
	do  
		local function Aimbot() 
			AimViewerCalculator()
		end 	
		-- 	
		local function Ammo()
			autoReload()            
		end 	
		AntiAzureV4PasterViewer = {} 
		AHAHAHAGAGSHAHAHHAHAHAH = {}
		for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") and v:FindFirstChild("Ammo") then
				if not AntiAzureV4PasterViewer[v] then 
					AntiAzureV4PasterViewer[v] = v.Activated:Connect(Aimbot)
				end 
				--
				if not AHAHAHAGAGSHAHAHHAHAHAH[v] then 
					AHAHAHAGAGSHAHAHHAHAHAH[v] = v.Ammo:GetPropertyChangedSignal("Value"):Connect(Ammo)
				end 
			end
		end
		for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") and v:FindFirstChild("Ammo") then
				if not AntiAzureV4PasterViewer[v] then 
					AntiAzureV4PasterViewer[v] = v.Activated:Connect(Aimbot)
				end 
				--
				if not AHAHAHAGAGSHAHAHHAHAHAH[v] then 
					AHAHAHAGAGSHAHAHHAHAHAH[v] = v.Ammo:GetPropertyChangedSignal("Value"):Connect(Ammo)
				end 
			end
		end
		LocalPlayer.Character.ChildAdded:connect(function(v)
			if v:IsA("Tool") and v:FindFirstChild("Ammo") then
				if not AntiAzureV4PasterViewer[v] then 
					AntiAzureV4PasterViewer[v] = v.Activated:Connect(Aimbot)
				end 
				--
				if not AHAHAHAGAGSHAHAHHAHAHAH[v] then 
					AHAHAHAGAGSHAHAHHAHAHAH[v] = v.Ammo:GetPropertyChangedSignal("Value"):Connect(Ammo)
				end 
			end
		end)
		LocalPlayer.CharacterAdded:connect(function(v)
			for i = 1, #AntiAzureV4PasterViewer, 1 do
				AntiAzureV4PasterViewer[i]:Disconnect()
				AntiAzureV4PasterViewer[i] = nil
				AHAHAHAGAGSHAHAHHAHAHAH[i]:Disconnect()
				AHAHAHAGAGSHAHAHHAHAHAH[i] = nil
			end
			v.ChildAdded:connect(function(v)
				if v:IsA("Tool") and v:FindFirstChild("Ammo") then
					if not AntiAzureV4PasterViewer[v] then 
						AntiAzureV4PasterViewer[v] = v.Activated:Connect(Aimbot)
					end 
					--
					if not AHAHAHAGAGSHAHAHHAHAHAH[v] then 
						AHAHAHAGAGSHAHAHHAHAHAH[v] = v.Ammo:GetPropertyChangedSignal("Value"):Connect(Ammo)
					end 
				end
			end)
		end)
	end 	
	--
	
	-- // Hooks
	do
	local __namecall
	local __index
	local Hooks = {}
	
	__namecall = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
            local Arguments = {...}
            local Method = tostring(getnamecallmethod()):lower()
            
            if not checkcaller() and tostring(Self.Name):lower() == "mainevent" and Method == "fireserver" then
                for Index, Argument in pairs(Arguments) do
                    if type(Argument[Index][1]) == "string" and typeof(Argument) == "Vector3" then
                        if Target and Sage.Silent.Enabled and Sage.Silent.Mode == "Namecall" and not Sage.Silent.AntiAimViewer.Enabled then
                            Arguments[Index] = Target.Character[Sage.Silent.AimPart.Aimpart].Position + (Target.Character[Sage.Silent.AimPart.Aimpart].Velocity * Sage.Silent.Prediction.Horizontal)
                        end
                        return __namecall(Self, unpack(Arguments))
                    end
                end
            end
            return __namecall(Self, ...)
        end))
        
local LocalPlayer = game.Players.LocalPlayer
Hooks[1] = hookmetamethod(LocalPlayer:GetMouse(), "__index", newcclosure(function(self, index)
    if index == "Hit" and getgenv().Sage.Silent.Mode == "Index" and Target.Character ~= nil and getgenv().Sage.Silent.Enabled then
            local position = CFrame.new(Target.Character[Sage.Silent.AimPart.Aimpart].CFrame.Position+Vector3.new(Target.Character.HumanoidRootPart.AssemblyLinearVelocity.X*getgenv().Sage.Silent.Prediction.Horizontal,math.clamp(Target.Character.HumanoidRootPart.AssemblyLinearVelocity.Y,-5,10)*getgenv().Sage.Silent.Prediction.Vertical,Target.Character.HumanoidRootPart.AssemblyLinearVelocity.Z*getgenv().Sage.Silent.Prediction.Horizontal))
            return position
        
    end
    return Hooks[1](self, index)
end))

--// CSync Hooks

    __index = hookmetamethod(game, "__index", newcclosure(function(Self, Index)
            if not checkcaller() and Sage.CSync.Enabled and LilNigga and Index == "CFrame" and Self == LocalPlayer.Character.HumanoidRootPart then
                return LilNigga
            end
            return __index(Self, Index)
        end))
end

-- // Stats
do
local Text = {
    Invite = "hol",
    Version = "Beta",
    Fringe = {
        Start = "{",
        End = "}"
    }
}

local Pred = Drawing.new("Text")
Pred.Text = "Prediction: "
Pred.Color = Color3.new(1, 1, 1)
Pred.Visible = true
Pred.Size = 16
Pred.Outline = true
Pred.Font = 3
Pred.Position = Vector2.new(20, 210)
Pred.ZIndex = 1500

local Ping22 = Drawing.new("Text")
Ping22.Text = "Ping: "
Ping22.Color = Color3.new(1, 1, 1)
Ping22.Visible = true
Ping22.Size = 16
Ping22.Outline = true
Ping22.Font = 3
Ping22.Position = Vector2.new(20, 225)
Ping22.ZIndex = 1500

local silenttarg = Drawing.new("Text")
silenttarg.Text = "Silent Aim Target: "
silenttarg.Color = Color3.new(1, 1, 1)
silenttarg.Visible = true
silenttarg.Size = 16
silenttarg.Outline = true
silenttarg.Font = 3
silenttarg.Position = Vector2.new(20, 240)
silenttarg.ZIndex = 1500


local camlocktarg = Drawing.new("Text")
camlocktarg.Text = "Camlock Target: "
camlocktarg.Color = Color3.new(1, 1, 1)
camlocktarg.Visible = true
camlocktarg.Size = 16
camlocktarg.Outline = true
camlocktarg.Font = 3
camlocktarg.Position = Vector2.new(20, 255)
camlocktarg.ZIndex = 1500

game:GetService("RunService").Heartbeat:Connect(function()
    local ping = math.floor(game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
    Ping = ping

    if Sage.Startup.Stats then 
        
        Pred.Visible = true
        Pred.Text = Text.Fringe.Start .. "Prediction: "..tostring(getgenv().Sage.Silent.Prediction.Horizontal) .. Text.Fringe.End
        Ping22.Visible = true
        Ping22.Text =  Text.Fringe.Start .. "Ping: "..tostring(Ping).."ms" .. Text.Fringe.End
        silenttarg.Visible = true
        silenttarg.Text = Text.Fringe.Start .. "Silent Aim Target: "..tostring(Target).." | "..Sage.Silent.AimPart.Aimpart.."" .. Text.Fringe.End
        camlocktarg.Visible = true
        camlocktarg.Text = Text.Fringe.Start .. "Camlock Target: "..tostring(AimBot).." | "..Sage.Camlock.AimPart.Aimpart.."" .. Text.Fringe.End
    else
        
        Pred.Visible = false
        Ping22.Visible = false
        silenttarg.Visible = false
        camlocktarg.Visible = false
    end
end)
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AvionMc/uhmm/main/Ui%20Library.txt"))()
local ThemeManager = loadstring(game:HttpGet('https://pastebin.com/raw/vKQ6A7gk'))()
local SaveManager = loadstring(
    game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/addons/SaveManager.lua")
)()

--// Main Window
local Window =
    Library:CreateWindow(
    {
        Title = "Suicide.lol",
        Center = true,
        AutoShow = true,
        TabPadding = 8,
        MenuFadeTime = 0.2
    }
)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
Frame.BackgroundTransparency = 0
Frame.Position = UDim2.new(1, -120, 0, 0)
Frame.Size = UDim2.new(0, 100, 0, 50)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0,0,200)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Lion#1"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 30
TextButton.TextStrokeColor3 = Color3.fromRGB(0,0,200)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true
local Toggnaled = true
TextButton.MouseButton1Down:Connect(function()
task.spawn(Library.Toggle)
end)
UITextSizeConstraint.Parent = TextButton
UITextSizeConstraint.MaxTextSize = 30
local playeruh = game.Players.LocalPlayer
local function onCharacterAdded(character)
    ScreenGui.Parent = playeruh.PlayerGui
end
local function connectCharacterAdded()
    playeruh.CharacterAdded:Connect(onCharacterAdded)
end
connectCharacterAdded()
playeruh.CharacterRemoving:Connect(function()
    ScreenGui.Parent = nil
end)
--task.spawn(Library.Toggle)


local Tabs = {
    Combat = Window:AddTab("Combat"),
    Visuals = Window:AddTab("Visuals"),
    AntiAim = Window:AddTab("Anti Aim"),
    Misc = Window:AddTab("Misc"),
    ['UI Settings'] = Window:AddTab('Options'),
}

local Sections = {
    Combat = {
        Main = Tabs.Combat:AddLeftGroupbox("Silent"),
        Checks = Tabs.Combat:AddRightGroupbox("Checks"),
        CamLockTab = Tabs.Combat:AddLeftGroupbox("Camlock"),
        Resolver = Tabs.Combat:AddRightGroupbox("Resolver"),
        RageBot = Tabs.Combat:AddLeftGroupbox("Rage Bot"),
        TriggerBotTab = Tabs.Combat:AddLeftGroupbox("TriggerBot"),
        Safety = Tabs.Combat:AddRightGroupbox("Safety"),
    },
    Visuals = {
        Atmosphere = Tabs.Visuals:AddLeftGroupbox("World"),
        Crosshair = Tabs.Visuals:AddLeftGroupbox("Crosshair"),
        Local = Tabs.Visuals:AddLeftGroupbox("Local"),
        BulletTracers = Tabs.Visuals:AddRightGroupbox("Bullet Tracers"),
        OnHit = Tabs.Visuals:AddRightGroupbox("On Hit"),
        Esp = Tabs.Visuals:AddRightGroupbox("Esp")
    },
    AntiAim = {
         CSync = Tabs.AntiAim:AddLeftGroupbox("C-Sync"),
         VelocitySpoofer = Tabs.AntiAim:AddRightGroupbox("Anti Aim"),
         Desync = Tabs.AntiAim:AddRightGroupbox("Desync"), 
      },
      Misc = {
        Speed = Tabs.Misc:AddLeftGroupbox("CFrame Speed"),
        Exploits = Tabs.Misc:AddRightGroupbox("Exploits"),
        AutoBuy = Tabs.Misc:AddLeftGroupbox("Auto Buy"),
        Teleport = Tabs.Misc:AddRightGroupbox("Teleport"),
        Player = Tabs.Misc:AddLeftGroupbox("Player Target"),
    }
}
local HitpartTable = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",  "LeftUpperLeg", "RightLowerLeg", "RightFoot",  "RightUpperLeg"}
        local EasingStyles = {"Linear","Sine","Back","Quad","Quart","Quint","Bounce","Elastic","Exponential","Circular","Cubic",}
        local AutoPredVersions = {"Default","V2","old","Custom"}
        local NotificationTypes = {"xaxa","Roblox","Akali"}
        
        -- // Silent
        do
        
        Sections.Combat.Main:AddToggle('Silent/Enabled', {
            Text = 'Enabled',
            Default = Sage.Silent.Enabled, 
            Tooltip = 'This will Enabled The Silent.', 
            Callback = function(Value)
                Sage.Silent.Enabled= Value
            end
        })
        
                Sections.Combat.Main:AddDropdown("CombatHitPartDropdown", {
                    Values = {"Head","HumanoidRootPart","LeftHand","RightHand","LeftLowerArm","RightLowerArm","LeftUpperArm","RightUpperArm","LeftFoot","LeftLowerLeg","UpperTorso","LeftUpperLeg","RightFoot","RightLowerLeg","LowerTorso","RightUpperLeg"},
                    Default = 2,
                    Multi = false,

                    Text = "Aim Part",
                    Tooltip = nil
                })

                Options.CombatHitPartDropdown:OnChanged(function()
                    Sage.Silent.AimPart.Aimpart = Options.CombatHitPartDropdown.Value
                end)
                
            Sections.Combat.Main:AddDropdown('SilentAim/Mode', {
            Values = { 'FOV', 'Target' },
            Default = Sage.Silent.Type, -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
        
            Text = 'Mode',
            Tooltip = 'Select a targeting mode.', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                Sage.Silent.Type= Value
            end
        })
        
        Sections.Combat.Main:AddToggle('Silent/Notify', {
            Text = 'Allow Notifications',
            Default = Sage.Silent.Notify, 
            Tooltip = 'This will toggle notifications for Silent.', 
            Callback = function(Value)
                Sage.Silent.Notify = Value
            end
        })

Sections.Combat.Main:AddToggle('Silent/LookAt', {
            Text = 'LookAt',
            Default = Sage.Silent.LookAt, 
            Tooltip = 'This will make you look at target.', 
            Callback = function(Value)
                Sage.Silent.LookAt = Value
            end
        })
        
        Sections.Combat.Main:AddToggle('SilentAim/NPTC', {
            Text = 'Nearest Part To Cursor',
            Default = Sage.Silent.AimPart.ClosestPart,
            Tooltip = 'This will get the nearest target part to your cursor.', 
            Callback = function(Value)
                Sage.Silent.AimPart.ClosestPart = Value
            end
        })
        
        Sections.Combat.Main:AddToggle('SilentAim/NP', {
            Text = 'Closest Point',
            Default = Sage.Silent.AimPart.ClosestPoint,
            Tooltip = 'This will get the nearest point to your cursor.', 
            Callback = function(Value)
                Sage.Silent.AimPart.ClosestPoint = Value
            end
        })
        
        Sections.Combat.Main:AddToggle("CombatAntiAimViewerEnabled", {
                    Text = "Aim Viewer Bypass",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatAntiAimViewerEnabled:OnChanged(function()
                    Sage.Silent.AntiAimViewer.Enabled = Toggles.CombatAntiAimViewerEnabled.Value
                end)
                
                
        
        Sections.Combat.Main:AddToggle('SilentAim/ViewAt', {
            Text = 'ViewAt',
            Default = Sage.Silent.ViewAt,
            Tooltip = 'Lol Monkey',
            Callback = function(Value)
                Sage.Silent.ViewAt = Value
            end
        })
        
        Sections.Combat.Main:AddToggle("CombatViewerEnabled", {
                    Text = "AntiCurve",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatViewerEnabled:OnChanged(function()
                    Sage.Silent.AntiCurve = Toggles.CombatViewerEnabled.Value
                end)
                
                Sections.Combat.Main:AddToggle("CombatBaViewerEnabled", {
                    Text = "Auto Stomp Target",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatBaViewerEnabled:OnChanged(function()
                    Sage.Silent.AutoStomp = Toggles.CombatBaViewerEnabled.Value
                end)
        
        Sections.Combat.Main:AddDivider()
        
        Sections.Combat.Main:AddToggle('SilentAim/Dot', {
            Text = 'Dot',
            Default = Sage.Silent.Dot,
            Tooltip = 'Dot Prediction Visualizer', 
            Callback = function(Value)
                Sage.Silent.Dot = Value
            end
        })
        
        Sections.Combat.Main:AddToggle('SilentAim/Line', {
            Text = 'Line',
            Default = Sage.Silent.Line, 
            Tooltip = 'Line Prediction Visualizer', 
            Callback = function(Value)
                Sage.Silent.Line = Value
            end
        })
        
        Sections.Combat.Main:AddToggle('SilentAim/Bobox', {
            Text = 'Hitbox',
            Default = Sage.Silent.Hitbox,
            Tooltip = 'Hitbox Visualizer', 
            Callback = function(Value)
                Sage.Silent.Hitbox  = Value
            end
        }):AddColorPicker("HitboxColor", {
                    Default = Color3.new(1, 1, 1),
                    Title = "Hitbox Color",
                    Transparency = nil,
                    Callback = function(Value)
                    Sage.Silent.HitboxColor = Value
                    end
                })
                
                Sections.Combat.Main:AddDropdown("HitboxMaterial", {
                    Values = {"ForceField", "Neon"},
                    Default = 1,
                    Multi = false,
                    Text = "Material",
                    Tooltip = nil,
                    Callback = function(Value)
                    Sage.Silent.HitboxMaterial = Value
                    end
                })
                
             Sections.Combat.Main:AddToggle('SilentAim/Gox', {
            Text = 'Forcefield',
            Default = Sage.Silent.Forcefield,
            Tooltip = 'Force field Visualizer', 
            Callback = function(Value)
                Sage.Silent.Forcefield  = Value
            end
        }):AddColorPicker("ForcefieldColor", {
                    Default = Color3.new(1, 1, 1),
                    Title = "Forcefield Color",
                    Transparency = nil,
                    Callback = function(Value)
                    Sage.Silent.ForcefieldColor = Value
                    end
                })
                
                Sections.Combat.Main:AddDropdown("ForcefieldMaterial", {
                    Values = {"ForceField", "Neon"},
                    Default = 1,
                    Multi = false,
                    Text = "Material",
                    Tooltip = nil,
                    Callback = function(Value)
                    Sage.Silent.ForcefieldMaterial = Value
                    end
                })
       
        Sections.Combat.Main:AddDivider()
                
                Sections.Combat.Main:AddInput("CombatVerticalPrediction", {
                    Default = nil,
                    Numeric = false,
                    Finished = false,

                    Text = "Vertical Prediction",
                    Tooltip = nil,

                    Placeholder = "Vertical Prediction Amount"
                })

                Options.CombatVerticalPrediction:OnChanged(function()
                    Sage.Silent.Prediction.Vertical = tonumber(Options.CombatVerticalPrediction.Value)
                end)

                Sections.Combat.Main:AddInput("CombatHorizontalPrediction", {
                    Default = nil,
                    Numeric = false,
                    Finished = false,

                    Text = "Horizontal Prediction",
                    Tooltip = nil,

                    Placeholder = "Horizontal Prediction Amount"
                })
                
                Options.CombatHorizontalPrediction:OnChanged(function()
                    Sage.Silent.Prediction.Horizontal = tonumber(Options.CombatHorizontalPrediction.Value)
                end)
                
                Sections.Combat.Main:AddSlider("CombatHitChance", {
                    Text = "Hit Chance",
                    Default = 100,
                    Min = 1,
                    Max = 100,
                    Rounding = 2,
                    Compact = false
                })

                Options.CombatHitChance:OnChanged(function()
                    Sage.Silent.Hit_Chance = Options.CombatHitChance.Value
                end)
                
                Sections.Combat.Main:AddDivider()
        
        
        Sections.Combat.Main:AddToggle('SilentAim/FOV/Visible', {
            Text = 'Show FOV',
            Default = Sage.Silent.FOV.Enabled,
            Tooltip = 'Shows FOV Circle', 
            Callback = function(Value)
                Sage.Silent.FOV.Enabled  = Value
            end
        }):AddColorPicker('SilentFOVColor', {
            Default = Sage.Silent.FOV.Color, -- Bright green
            Title = 'Circle Color', -- Optional. Allows you to have a custom color picker title (when you open it)
            Transparency = nil, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)
        
            Callback = function(Value)
                Sage.Silent.FOV.Color = Value
            end
        })
        
        
        local SilentAimFOV = Sections.Combat.Main:AddDependencyBox();
        
        SilentAimFOV:AddToggle('SilentAim/FOV/Filled', {
            Text = 'Filled',
            Default = Sage.Silent.FOV.Filled , 
            Tooltip = 'ewww', 
            Callback = function(Value)
                Sage.Silent.FOV.Filled = Value
            end
        })
        
        SilentAimFOV:AddSlider('SilentAim/FOV/Size', {
            Text = 'Size',
            Default = Sage.Silent.FOV.Size,
            Min = 1,
            Max = 100,
            Rounding = 1,
            Compact = true,
        
            Callback = function(Value)
                Sage.Silent.FOV.Size = Value
            end
        })
        
        SilentAimFOV:AddSlider('SilentAim/FOV/Thickness', {
            Text = 'Thickness',
            Default = Sage.Silent.FOV.Thickness,
            Min = 1,
            Max = 10,
            Rounding = 1,
            Compact = true,
        
            Callback = function(Value)
                Sage.Silent.FOV.Thickness = Value
            end
        })
        
        
        SilentAimFOV:AddSlider('SilentAim/FOV/Transparency', {
            Text = 'Transparency',
            Default = Sage.Silent.FOV.Transparency,
            Min = 0,
            Max = 1,
            Rounding = 3,
            Compact = true,
        
            Callback = function(Value)
                Sage.Silent.FOV.Transparency = Value
            end
        })
        
        
        SilentAimFOV:SetupDependencies({
            { Toggles["SilentAim/FOV/Visible"], true } -- We can also pass `false` if we only want our features to show when the toggle is off!
        });
        
        Sections.Combat.Main:AddToggle('Sections.Combat.Main/AutoPrediction', {
            Text = 'Auto Prediction',
            Default = Sage.Silent.AutoPrediction.Enabled , 
            Tooltip = 'Uses ping based auto prediction.', 
            Callback = function(Value)
                Sage.Silent.AutoPrediction.Enabled = Value
            end
        })
        
        local Depbox = Sections.Combat.Main:AddDependencyBox();

        Depbox:AddDropdown('Sections.Combat.Main/AutoPrediction/Version', {
            Values = AutoPredVersions,
            Default = Sage.Silent.AutoPrediction.Type, -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
        
            Text = 'Version',
            Tooltip = 'Select a auto prediction mode', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                Sage.Silent.AutoPrediction.Type = Value
            end
        })

        Depbox:AddToggle('Sections.Combat.Main/AutoPrediction/SetupCustomPrediction', {
            Text = 'Setup Custom prediction',
            Default = false, 
            Tooltip = 'Set your custom prediction values.', 
        })

        local CustomValues = Depbox:AddDependencyBox();
        
        CustomValues:AddInput('ping_20_30', {
            Text = '20_30',
            Default = Sage.Silent.AutoPrediction.ping20_30,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping20_30 = Value
            end
        })
        CustomValues:AddInput('ping_30_30_40', {
            Text = '30_40',
            Default = Sage.Silent.AutoPrediction.ping30_40,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping30_40 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_30_40', {
            Text = '30_40',
            Default = Sage.Silent.AutoPrediction.ping30_40,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping30_40 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_40_50', {
            Text = '40_50',
            Default = Sage.Silent.AutoPrediction.ping40_50,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping40_50 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_50_60', {
            Text = '50_60',
            Default = Sage.Silent.AutoPrediction.ping50_60,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping50_60 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_60_70', {
            Text = '60_70',
            Default = Sage.Silent.AutoPrediction.ping60_70,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping60_70 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_70_80', {
            Text = '70_80',
            Default = Sage.Silent.AutoPrediction.ping70_80,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping70_80 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_80_90', {
            Text = '80_90',
            Default = Sage.Silent.AutoPrediction.ping80_90,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping80_90 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_100', {
            Text = '100',
            Default = Sage.Silent.AutoPrediction.ping90_100,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping90_100 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_110', {
            Text = '110',
            Default = Sage.Silent.AutoPrediction.ping100_110,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping100_110 = Value
            end
        })
        
        CustomValues:AddInput('ping_120_30', {
            Text = '120_130',
            Default = Sage.Silent.AutoPrediction.ping120_130,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping120_130 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_130_30_40', {
            Text = '130_140',
            Default = Sage.Silent.AutoPrediction.ping130_140,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping130_140 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_130_40', {
            Text = '130_140',
            Default = Sage.Silent.AutoPrediction.ping130_140,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping130_140 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_140_150', {
            Text = '140_50',
            Default = Sage.Silent.AutoPrediction.ping140_150,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping140_150 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_150_60', {
            Text = '150_160',
            Default = Sage.Silent.AutoPrediction.ping150_160,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping150_160 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_160_170', {
            Text = '160_70',
            Default = Sage.Silent.AutoPrediction.ping160_170,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping160_170 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_170_80', {
            Text = '170_180',
            Default = Sage.Silent.AutoPrediction.ping170_80,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping170_180 = Value
            end
        })
        
        CustomValues:AddInput('ping_180_90', {
            Text = '180_190',
            Default = Sage.Silent.AutoPrediction.ping180_190,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Silent.AutoPrediction.ping180_190 = Value
            end
        })
       
        CustomValues:AddDivider()
        
        
        CustomValues:SetupDependencies({
            { Toggles["Sections.Combat.Main/AutoPrediction/SetupCustomPrediction"], true } -- We can also pass `false` if we only want our features to show when the toggle is off!
        });
        

        Depbox:SetupDependencies({
            { Toggles["Sections.Combat.Main/AutoPrediction"], true } -- We can also pass `false` if we only want our features to show when the toggle is off!
        });
    end
        
        -- // Camlock
         do
            Sections.Combat.CamLockTab:AddToggle('CamLock/Enabled', {
            Text = 'Enabled',
            Default = Sage.Camlock.Enabled, 
            Tooltip = 'This will toggle the Cam Lock on Sage.', 
            Callback = function(Value)
                Sage.Camlock.Enabled = Value
            end
        })
        
        Sections.Combat.CamLockTab:AddToggle('CamLock/Notify', {
            Text = 'Allow Notifications',
            Default = Sage.Camlock.Notify, 
            Tooltip = 'This will toggle notifications for Cam Lock.', 
            Callback = function(Value)
                Sage.Camlock.Notify = Value
            end
        })
        
        Sections.Combat.CamLockTab:AddInput('CamLock/Prediction', {
            Default = Sage.Camlock.Prediction.Horizontal,
            Numeric = true, -- true / false, only allows numbers
            Finished = true, -- true / false, only calls callback when you press enter
        
            Text = 'Prediction Horizontal',
            Tooltip = 'Prediction value.', -- Information shown when you hover over the textbox
        
            Placeholder = '0.133', -- placeholder text when the box is empty
            -- MaxLength is also an option which is the max length of the text
        
            Callback = function(Value)
                Sage.Camlock.Prediction.Horizontal = tonumber(Value)
            end
        })
        
        Sections.Combat.CamLockTab:AddInput('CamLock/Prediction', {
            Default = Sage.Camlock.Prediction.Vertical,
            Numeric = true, -- true / false, only allows numbers
            Finished = true, -- true / false, only calls callback when you press enter
        
            Text = 'Prediction Vertical',
            Tooltip = 'Prediction value.', -- Information shown when you hover over the textbox
        
            Placeholder = '0.133', -- placeholder text when the box is empty
            -- MaxLength is also an option which is the max length of the text
        
            Callback = function(Value)
                Sage.Camlock.Prediction.Vertical = tonumber(Value)
            end
        })
        
        Sections.Combat.CamLockTab:AddDropdown('CamLock/EasingStyle', {
            Values = EasingStyles,
            Default = Sage.Camlock.Smoothing.EasingStyle, -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
        
            Text = 'Easing Style',
            Tooltip = 'Select a easing style.', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                Sage.Camlock.Smoothing.EasingStyle = Value
            end
        })
        
        
        Sections.Combat.CamLockTab:AddDropdown('CamLock/TargetPart', {
            Values = HitpartTable,
            Default = Sage.Camlock.AimPart, -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
        
            Text = 'Target Part',
            Tooltip = 'Select a target part.', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                Sage.Camlock.AimPart.Aimpart = Value
            end
        })
        
        Sections.Combat.CamLockTab:AddToggle('Camlock/NPTC', {
            Text = 'Nearest Part To Cursor',
            Default = Sage.Camlock.AimPart.ClosestPart,
            Tooltip = 'This will get the nearest target part to your cursor.', 
            Callback = function(Value)
                Sage.Camlock.AimPart.ClosestPart = Value
            end
        })
        
        Sections.Combat.CamLockTab:AddToggle('Camlock/NP', {
            Text = 'Closest Point',
            Default = Sage.Camlock.AimPart.ClosestPoint,
            Tooltip = 'This will get the nearest point to your cursor.', 
            Callback = function(Value)
                Sage.Camlock.AimPart.ClosestPoint = Value
            end
        })
        

        Sections.Combat.CamLockTab:AddDivider()
        
        
        Sections.Combat.CamLockTab:AddInput('CamLock/Prediction', {
            Default = Sage.Camlock.Smoothing.SmoothnessValue,
            Numeric = true, -- true / false, only allows numbers
            Finished = true, -- true / false, only calls callback when you press enter
        
            Text = 'Smoothness',
            Tooltip = '', -- Information shown when you hover over the textbox
        
            Placeholder = '0.1', -- placeholder text when the box is empty
            -- MaxLength is also an option which is the max length of the text
        
            Callback = function(Value)
                Sage.Camlock.Smoothing.SmoothnessValue = tonumber(Value)
            end
        })
        
        Sections.Combat.CamLockTab:AddDivider()
        
        Sections.Combat.CamLockTab:AddToggle('CamLock/Shake', {
            Text = 'Enable Shake',
            Default = Sage.Camlock.Shake.Enabled , 
            Tooltip = 'Camera Shake', 
            Callback = function(Value)
                Sage.Camlock.Shake.Enabled = Value
            end
        })
        
        local ValuesDEP = Sections.Combat.CamLockTab:AddDependencyBox();
        
        ValuesDEP:AddSlider('CamLock/ShakeX', {
            Text = 'X',
            Default = Sage.Camlock.Shake.X,
            Min = 0,
            Max = 10,
            Rounding = 1,
            Compact = true,
        
            Callback = function(Value)
                Sage.Camlock.Shake.X = Value
            end
        })
        
        ValuesDEP:AddSlider('CamLock/ShakeY', {
            Text = 'Y',
            Default = Sage.Camlock.Shake.Y,
            Min = 0,
            Max = 10,
            Rounding = 1,
            Compact = true,
        
            Callback = function(Value)
                Sage.Camlock.Shake.Y = Value
            end
        })
        
        ValuesDEP:AddSlider('CamLock/ShakeZ', {
            Text = 'Z',
            Default = Sage.Camlock.Shake.Z,
            Min = 0,
            Max = 10,
            Rounding = 1,
            Compact = true,
        
            Callback = function(Value)
                Sage.Camlock.Shake.Z = Value
            end
        })
        
        ValuesDEP:SetupDependencies({
            { Toggles["CamLock/Shake"], true } -- We can also pass `false` if we only want our features to show when the toggle is off!
        });
        
        Sections.Combat.CamLockTab:AddDivider()
        
        
        Sections.Combat.CamLockTab:AddToggle('CamLock/FOV/Visible', {
            Text = 'Show FOV',
            Default = Sage.Camlock.FOV.Enabled,
            Tooltip = 'Shows FOV Circle', 
            Callback = function(Value)
                Sage.Camlock.FOV.Enabled  = Value
            end
        }):AddColorPicker('CamlockFOVColor', {
            Default = Sage.Camlock.FOV.Color, -- Bright green
            Title = 'Circle Color', -- Optional. Allows you to have a custom color picker title (when you open it)
            Transparency = nil, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)
        
            Callback = function(Value)
                Sage.Camlock.FOV.Color = Value
            end
        })
        
        
        local CamLockFOV = Sections.Combat.CamLockTab:AddDependencyBox();
        
        CamLockFOV:AddToggle('CamLock/FOV/Filled', {
            Text = 'Filled',
            Default = Sage.Camlock.FOV.Filled , 
            Tooltip = 'ewww', 
            Callback = function(Value)
                Sage.Camlock.FOV.Filled = Value
            end
        })
        
        CamLockFOV:AddSlider('CamLock/FOV/Size', {
            Text = 'Size',
            Default = Sage.Camlock.FOV.Size,
            Min = 1,
            Max = 100,
            Rounding = 1,
            Compact = true,
        
            Callback = function(Value)
                Sage.Camlock.FOV.Size = Value
            end
        })
        
        CamLockFOV:AddSlider('CamLock/FOV/Thickness', {
            Text = 'Thickness',
            Default = Sage.Camlock.FOV.Thickness,
            Min = 1,
            Max = 10,
            Rounding = 1,
            Compact = true,
        
            Callback = function(Value)
                Sage.Camlock.FOV.Thickness = Value
            end
        })
        
        
        CamLockFOV:AddSlider('CamLock/FOV/Transparency', {
            Text = 'Transparency',
            Default = Sage.Camlock.FOV.Transparency,
            Min = 0,
            Max = 1,
            Rounding = 3,
            Compact = true,
        
            Callback = function(Value)
                Sage.Camlock.FOV.Transparency = Value
            end
        })
        
        CamLockFOV:SetupDependencies({
            { Toggles["CamLock/FOV/Visible"], true } -- We can also pass `false` if we only want our features to show when the toggle is off!
        });
        Sections.Combat.CamLockTab:AddToggle('Sections.Combat.CamLockTab/AutoPrediction', {
            Text = 'Auto Prediction',
            Default = Sage.Camlock.AutoPrediction.Enabled , 
            Tooltip = 'Uses ping based auto prediction.', 
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.Enabled = Value
            end
        })
        
        local Depbox = Sections.Combat.CamLockTab:AddDependencyBox();

        Depbox:AddDropdown('Sections.Combat.CamLockTab/AutoPrediction/Version', {
            Values = AutoPredVersions,
            Default = Sage.Camlock.AutoPrediction.Type, -- number index of the value / string
            Multi = true, -- true / true, allows multiple choices to be selected
        
            Text = 'Version',
            Tooltip = 'Select a auto prediction mode', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.Type = Value
            end
        })

        Depbox:AddToggle('Sections.Combat.CamLockTab/AutoPrediction/SetupCustomPrediction', {
            Text = 'Setup Custom prediction',
            Default = true, 
            Tooltip = 'Set your custom prediction values.', 
        })

        local CustomValues = Depbox:AddDependencyBox();
        
        CustomValues:AddInput('ping_20_30', {
            Text = '20_30',
            Default = Sage.Camlock.AutoPrediction.ping20_30,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping20_30 = Value
            end
        })
        CustomValues:AddInput('ping_30_30_40', {
            Text = '30_40',
            Default = Sage.Camlock.AutoPrediction.ping30_40,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping30_40 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_30_40', {
            Text = '30_40',
            Default = Sage.Camlock.AutoPrediction.ping30_40,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping30_40 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_40_50', {
            Text = '40_50',
            Default = Sage.Camlock.AutoPrediction.ping40_50,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping40_50 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_50_60', {
            Text = '50_60',
            Default = Sage.Camlock.AutoPrediction.ping50_60,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping50_60 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_60_70', {
            Text = '60_70',
            Default = Sage.Camlock.AutoPrediction.ping60_70,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping60_70 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_70_80', {
            Text = '70_80',
            Default = Sage.Camlock.AutoPrediction.ping70_80,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping70_80 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_80_90', {
            Text = '80_90',
            Default = Sage.Camlock.AutoPrediction.ping80_90,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping80_90 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_100', {
            Text = '100',
            Default = Sage.Camlock.AutoPrediction.ping90_100,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping90_100 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_110', {
            Text = '110',
            Default = Sage.Camlock.AutoPrediction.ping100_110,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping100_110 = Value
            end
        })
        
        CustomValues:AddInput('ping_120_30', {
            Text = '120_130',
            Default = Sage.Camlock.AutoPrediction.ping120_130,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping120_130 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_130_30_40', {
            Text = '130_140',
            Default = Sage.Camlock.AutoPrediction.ping130_140,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping130_140 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_130_40', {
            Text = '130_140',
            Default = Sage.Camlock.AutoPrediction.ping130_140,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping130_140 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_140_150', {
            Text = '140_150',
            Default = Sage.Camlock.AutoPrediction.ping140_150,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping140_150 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_150_60', {
            Text = '150_160',
            Default = Sage.Camlock.AutoPrediction.ping150_160,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping150_160 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_160_170', {
            Text = '160_70',
            Default = Sage.Camlock.AutoPrediction.ping160_170,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping160_170 = Value
            end
        })
        
        
        CustomValues:AddInput('ping_170_80', {
            Text = '170_180',
            Default = Sage.Camlock.AutoPrediction.ping170_80,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping170_180 = Value
            end
        })
        
        CustomValues:AddInput('ping_180_90', {
            Text = '180_190',
            Default = Sage.Camlock.AutoPrediction.ping180_190,
            Numeric = true,
            Finished = true,
            Tooltip = true,
             -- If set to true, then it will hide the label
            Callback = function(Value)
                Sage.Camlock.AutoPrediction.ping180_190 = Value
            end
        })
       
        CustomValues:AddDivider()
        
        
        CustomValues:SetupDependencies({
            { Toggles["Sections.Combat.CamLockTab/AutoPrediction/SetupCustomPrediction"], true } -- We can also pass `true` if we only want our features to show when the toggle is off!
        });
        

        Depbox:SetupDependencies({
            { Toggles["Sections.Combat.CamLockTab/AutoPrediction"], true } -- We can also pass `true` if we only want our features to show when the toggle is off!
        });
    end
        
        -- // Trigger Bot
        do
        Sections.Combat.TriggerBotTab:AddToggle('TriggerBot/Enabled', {
            Text = 'Enabled',
            Default = Sage.TriggerBot.Enabled, 
            Tooltip = 'This will toggle the Cam Lock on Sage.', 
            Callback = function(Value)
                Sage.TriggerBot.Enabled = Value
            end
        })
        
        Sections.Combat.TriggerBotTab:AddInput('TriggerBot/Prediction', {
            Default = Sage.TriggerBot.Delay,
            Numeric = true, -- true / false, only allows numbers
            Finished = true, -- true / false, only calls callback when you press enter
        
            Text = 'Delay',
            Tooltip = 'Fuck Off Faggot', -- Information shown when you hover over the textbox
        
            Placeholder = '0.1', -- placeholder text when the box is empty
            -- MaxLength is also an option which is the max length of the text
        
            Callback = function(Value)
                Sage.TriggerBot.Delay = tonumber(Value)
            end
        })
        end
        
        do
        Sections.Combat.RageBot:AddToggle('RageBot/Enabled', {
            Text = 'Enabled',
            Default = Sage.RageBot.Enabled, 
            Tooltip = 'This will toggle the Cam Lock on Sage.', 
            Callback = function(Value)
                Sage.RageBot.Enabled = Value
            end
        })
        
        Sections.Combat.RageBot:AddInput('RageBot/Prediction', {
            Default = Sage.RageBot.Radius,
            Numeric = true, -- true / false, only allows numbers
            Finished = true, -- true / false, only calls callback when you press enter
        
            Text = 'Radius',
            Tooltip = 'Fuck Off Faggot', -- Information shown when you hover over the textbox
        
            Placeholder = '200', -- placeholder text when the box is empty
            -- MaxLength is also an option which is the max length of the text
        
            Callback = function(Value)
                Sage.RageBot.Radius = tonumber(Value)
            end
        })
        end
        
        do
                Sections.Combat.Resolver:AddToggle("CombatResolverEnabled", {
                    Text = "Enabled",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatResolverEnabled:OnChanged(function()
                    Sage.Silent.Resolving.Enabled = Toggles.CombatResolverEnabled.Value
                    Sage.Camlock.Resolving.Enabled = Toggles.CombatResolverEnabled.Value
                end)

                Sections.Combat.Resolver:AddSlider("CombatResolverRefreshRate", {
                    Text = "Magnitude",
                    Default = 100,
                    Min = 1,
                    Max = 100,
                    Rounding = 1,
                    Compact = false
                })

                Options.CombatResolverRefreshRate:OnChanged(function()
                    Sage.Silent.Resolving.Positive = Options.CombatResolverRefreshRate.Value
                    Sage.Camlock.Resolving.Positive = Options.CombatResolverRefreshRate.Value
                end)
            end
            
        
        --// Checks
            do
            Sections.Combat.Checks:AddToggle('Checks/Whitelist', {
            Text = 'Whitelist',
            Default = Sage.Checks.Silent["Whitelist"].Enabled , 
            Tooltip = 'Will only lock onto people whitelisted', 
            Callback = function(Value)
                Sage.Checks.Silent["Whitelist"].Enabled = Value
            end
        })
        
        local Whitelist = Sections.Combat.Checks:AddDependencyBox();
        
        Whitelist:AddDropdown('Checks/Whitelist/SelectPlayer', {
            SpecialType = 'Player',
            Multi = true,
            Text = 'Whitelisted Players',
            Tooltip = 'Select Targets', -- Information shown when you hover over the dropdown
            Callback = function(Value)
                Sage.Checks.Silent["Whitelist"].Usernames = Value
            end
        })
        
        Whitelist:AddDivider()
        
        Whitelist:SetupDependencies({
            { Toggles["Checks/Whitelist"], true } -- We can also pass `false` if we only want our features to show when the toggle is off!
        });
        
        Sections.Combat.Checks:AddToggle('Checks/Blacklist', {
            Text = 'Blacklist',
            Default = Sage.Checks.Silent["Blacklist"].Enabled , 
            Tooltip = 'Will not lock onto people blacklisted', 
            Callback = function(Value)
                Sage.Checks.Silent["Blacklist"].Enabled = Value
            end
        })
        
        
        local Blacklist = Sections.Combat.Checks:AddDependencyBox();
        
        Blacklist:AddDropdown('Checks/Blacklist/SelectPlayer', {
            SpecialType = 'Player',
            Multi = true,
            Text = 'Blacklisted Players',
            Tooltip = 'Select Targets', -- Information shown when you hover over the dropdown
            Callback = function(Value)
                Sage.Checks.Silent["Blacklist"].Usernames = Value
            end
        })
        
        Blacklist:AddDivider()
        
        Blacklist:SetupDependencies({
            { Toggles["Checks/Blacklist"], true } -- We can also pass `false` if we only want our features to show when the toggle is off!
        });
        
                Sections.Combat.Checks:AddToggle("CombatChecksKnockedEnabled", {
                    Text = "Knocked",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatChecksKnockedEnabled:OnChanged(function()
                    Sage.Checks.Silent.Knocked = Toggles.CombatChecksKnockedEnabled.Value
                    Sage.Checks.Camlock.Knocked = Toggles.CombatChecksKnockedEnabled.Value
                end)

                Sections.Combat.Checks:AddToggle("CombatChecksGrabbedEnabled", {
                    Text = "Grabbed",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatChecksGrabbedEnabled:OnChanged(function()
                    Sage.Checks.Silent.Grabbed = Toggles.CombatChecksGrabbedEnabled.Value
                    Sage.Checks.Camlock.Grabbed = Toggles.CombatChecksGrabbedEnabled.Value
                end)

                Sections.Combat.Checks:AddToggle("CombatChecksCrewEnabled", {
                    Text = "Crew",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatChecksCrewEnabled:OnChanged(function()
                    Sage.Checks.Silent.Crew = Toggles.CombatChecksCrewEnabled.Value
                    Sage.Checks.Camlock.Crew = Toggles.CombatChecksCrewEnabled.Value
                end)

                Sections.Combat.Checks:AddToggle("CombatChecksWallEnabled", {
                    Text = "Wall",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatChecksWallEnabled:OnChanged(function()
                    Sage.Checks.Silent.Wall = Toggles.CombatChecksWallEnabled.Value
                    Sage.Checks.Camlock.Wall = Toggles.CombatChecksWallEnabled.Value
                end)
                
                Sections.Combat.Checks:AddToggle("CombatChecksVisibleEnabled", {
                    Text = "Visible",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatChecksVisibleEnabled:OnChanged(function()
                    Sage.Checks.Silent.Visible = Toggles.CombatChecksVisibleEnabled.Value
                    Sage.Checks.Camlock.Visible = Toggles.CombatChecksVisibleEnabled.Value
                end)
                
                Sections.Combat.Checks:AddToggle("CombatChecksFriendEnabled", {
                    Text = "Friend",
                    Default = false,
                    Tooltip = nil
                })

                Toggles.CombatChecksFriendEnabled:OnChanged(function()
                    Sage.Checks.Silent.Friend = Toggles.CombatChecksFriendEnabled.Value
                    Sage.Checks.Camlock.Friend = Toggles.CombatChecksFriendEnabled.Value
                end)
            end

--// Bullet Tracers
            do

                local BulletTracersToggle = Sections.Visuals.BulletTracers:AddToggle("VisualsBulletTracersEnabled", {
                    Text = "Enabled",
                    Default = false,
                    Tooltip = nil
                })

                BulletTracersToggle:AddColorPicker("VisualsBulletTracersColor1", {
                    Default = Color3.new(1, 1, 1),
                    Title = "Bullet Tracers Color",
                    Transparency = nil
                })
                
                Toggles.VisualsBulletTracersEnabled:OnChanged(function()
                    Sage.Visuals.OnHit.Bullet_Tracers = Toggles.VisualsBulletTracersEnabled.Value
                end)
                
                Options.VisualsBulletTracersColor1:OnChanged(function()
                    Sage.Visuals.OnHit.BulletTracerColor = Options.VisualsBulletTracersColor1.Value
                end)
end 

   Sections.Visuals.Esp:AddToggle('Esp/Enabled', {
            Text = 'Enabled',
            Default = Sage.Displaying.ESP.Enabled , 
            Callback = function(Value)
                Sage.Displaying.ESP.Enabled = Value
            end
        })
    
        Sections.Visuals.Esp:AddToggle('Esp/Box', {
            Text = 'Box',
            Default = Sage.Displaying.ESP.Drawing.Boxes.Full.Enabled,
            Callback = function(Value)
                Sage.Displaying.ESP.Drawing.Boxes.Full.Enabled = Value
            end
        })
        
        Sections.Visuals.Esp:AddToggle('Esp/Corner', {
            Text = 'Corner',
            Default = Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled,
            Callback = function(Value)
                Sage.Displaying.ESP.Drawing.Boxes.Corner.Enabled = Value
            end
        })
        
        Sections.Visuals.Esp:AddToggle('', {
        Text = 'Enable 3D Box',
        Default = false,
        Callback = function(bool)
        toggleESP(bool)
        end
    })
    for _, player in ipairs(Players:GetPlayers()) do
createOrUpdateBoxEsp(player)
end

        Sections.Visuals.Esp:AddToggle("EspBoxFillEnabled",{
        Text = "Box Fill",
        Default = Sage.Displaying.ESP.Drawing.Boxes.Filled. Enabled
    })
    
    Toggles.EspBoxFillEnabled:OnChanged(function()
        Sage.Displaying.ESP.Drawing.Boxes.Filled. Enabled = Toggles.EspBoxFillEnabled.Value
    end)    
    
       Sections.Visuals.Esp:AddToggle('Esp/Health', {
            Text = 'Health Bar',
            Default = Sage.Displaying.ESP.Drawing.Healthbar.Enabled , 
            Callback = function(Value)
                Sage.Displaying.ESP.Drawing.Healthbar.Enabled = Value
            end
        })
        
        Sections.Visuals.Esp:AddToggle('', {
        Text = 'Skeleton',
        Default = false,
        Callback = function(bool)
        getgenv().SkeletonESP = bool
        end
    })
        
        Sections.Visuals.Esp:AddToggle('Esp/Names', {
            Text = 'Names',
            Default = Sage.Displaying.ESP.Drawing.Names.Enabled , 
            Callback = function(Value)
                Sage.Displaying.ESP.Drawing.Names.Enabled = Value
            end
        })
        
        Sections.Visuals.Esp:AddToggle('Esp/Distance', {
            Text = 'Distance',
            Default = Sage.Displaying.ESP.Drawing.Distances.Enabled , 
            Callback = function(Value)
                Sage.Displaying.ESP.Drawing.Distances.Enabled = Value
            end
        })
        
        Sections.Visuals.Esp:AddToggle('Esp/LOL', {
            Text = 'Chams',
            Default = Sage.Displaying.ESP.Drawing.Chams.Enabled , 
            Callback = function(Value)
                Sage.Displaying.ESP.Drawing.Chams.Enabled = Value
            end
        })
        
--// On Hit
            do
                Sections.Visuals.OnHit:AddToggle("VisualsOnHitEnabled", {
                    Text = "Enabled",
                    Default = false,
                    Tooltip = nil
                })

                Sections.Visuals.OnHit:AddToggle("VisualsOnHitEffectEnabled", {
                    Text = "Effect",
                    Default = false,
                    Tooltip = nil
                }):AddColorPicker("VisualsOnHitEffectColor", {
                    Default = Color3.new(1, 1, 1),
                    Title = "Onhit Color",
                    Transparency = nil
                })
                
                Sections.Visuals.OnHit:AddToggle("VisualsOnHitLogsEnabled", {
                    Text = "Logs",
                    Default = false,
                    Tooltip = nil
                })
                
                Sections.Visuals.OnHit:AddToggle("VisualsOnHiSoundEnabled", {
                    Text = "Sound",
                    Default = false,
                    Tooltip = nil
                })

                Sections.Visuals.OnHit:AddSlider("VisualsOnHitSoundVolume", {
                    Text = "Sound Volume",
                    Default = 5,
                    Min = 0.1,
                    Max = 10,
                    Rounding = 2,
                    Compact = false
                })

                Sections.Visuals.OnHit:AddDropdown("VisualsOnHitSound", {
                    Values = hitSoundsNames,
                    Default = 1,
                    Multi = false,
                    Text = "Sound To Play",
                    Tooltip = nil
                })


                Sections.Visuals.OnHit:AddToggle("VisualsOnHitChamsEnabled", {
                    Text = "Chams",
                    Default = false,
                    Tooltip = nil
                }):AddColorPicker("VisualsOnHitChamsColor", {
                    Default = Color3.new(1, 1, 1),
                    Title = "Hit Chams Color",
                    Transparency = nil
                })

                Sections.Visuals.OnHit:AddSlider("VisualsOnHitChamsDuration", {
                    Text = "Duration",
                    Default = 1,
                    Min = 0.1,
                    Max = 10,
                    Rounding = 2,
                    Compact = false
                })

                Sections.Visuals.OnHit:AddDropdown("VisualsOnHitChamsMaterial", {
                    Values = {"ForceField", "Neon"},
                    Default = 1,
                    Multi = false,
                    Text = "Material",
                    Tooltip = nil
                })
                
                Sections.Visuals.OnHit:AddToggle("VisualsOnGunSFXEnabled", {
                    Text = "Custom Gun SFX",
                    Default = false,
                    Tooltip = nil
                })

            Sections.Visuals.OnHit:AddDropdown("VisualsOnGunHolySFXMaterial", {
                    Values = {"Bameware", "Skeet", "Bonk", "Lazer Beam", "Windows XP Error", "TF2 Hitsound", "TF2 Critical", "TF2 Bat", "Bow Hit", "Bow", "OSU", "Minecraft Hit", "Steve", "1nn", "Rust", "TF2 Pan", "Neverlose", "Mario"},
                    Default = 1,
                    Multi = false,
                    Text = "Gun SFX",
                    Tooltip = nil
                })
                
                Toggles.VisualsOnGunSFXEnabled:OnChanged(function()
                    Sage.Visuals.OnHit.CustomGunSFX = Toggles.VisualsOnGunSFXEnabled.Value
                end)
                
               
                Options.VisualsOnGunHolySFXMaterial:OnChanged(function()
                    Sage.Visuals.OnHit.GunSoundSFX = Options.VisualsOnGunHolySFXMaterial.Value
                end)
                

                Options.VisualsOnHitChamsDuration:OnChanged(function()
                    Sage.Visuals.OnHit["Hit Chams Fading Time"] = Options.VisualsOnHitChamsDuration.Value
                end)

                Options.VisualsOnHitChamsMaterial:OnChanged(function()
                    Sage.Visuals.OnHit["Hit Chams Material"] = Options.VisualsOnHitChamsMaterial.Value
                end)
                
                Toggles.VisualsOnHitChamsEnabled:OnChanged(function()
                    Sage.Visuals.OnHit["Hit Chams"] = Toggles.VisualsOnHitChamsEnabled.Value
                end)

                Options.VisualsOnHitChamsColor:OnChanged(function()
                    Sage.Visuals.OnHit["Hit Chams Color"] = Options.VisualsOnHitChamsColor.Value
                end)

                Toggles.VisualsOnHitEffectEnabled:OnChanged(function()
                    Sage.Visuals.OnHit["Hit Effect Enabled"]= Toggles.VisualsOnHitEffectEnabled.Value
                end)
                
                Toggles.VisualsOnHitLogsEnabled:OnChanged(function()
                    Sage.Visuals.OnHit.HitLogs = Toggles.VisualsOnHitLogsEnabled.Value
                end)

                Options.VisualsOnHitEffectColor:OnChanged(function()
                    Sage.Visuals.OnHit["Hit Effects Color"] = Options.VisualsOnHitEffectColor.Value
                end)

                Toggles.VisualsOnHiSoundEnabled:OnChanged(function()
                    Sage.Visuals.OnHit.HitSound = Toggles.VisualsOnHiSoundEnabled.Value
                end)

                Options.VisualsOnHitSoundVolume:OnChanged(function()
                    Sage.Visuals.OnHit.Volume = Options.VisualsOnHitSoundVolume.Value
                end)

                Options.VisualsOnHitSound:OnChanged(function()
                    Sage.Visuals.OnHit.Sound = Options.VisualsOnHitSound.Value
                end)
                
                
            end
            
            --// Bullet Impacts
                Sections.Visuals.OnHit:AddToggle("VisualsOnHitsEnabled", {
                    Text = "Bullet Impact",
                    Default = false,
                    Tooltip = nil
                }):AddColorPicker("VisualsOnHitsColor", {
                    Default = Color3.new(1, 1, 1),
                    Title = "Bullet Impact Color",
                    Transparency = nil
                })

                Sections.Visuals.OnHit:AddDropdown("VisualsOnHitsMaterial", {
                    Values = {"SmoothPlastic", "ForceField", "Neon"},
                    Default = 1,
                    Multi = false,

                    Text = "Material",
                    Tooltip = nil
                })

                Options.VisualsOnHitsMaterial:OnChanged(function()
                    Sage.Visuals.OnHit["Impact Points Material"] = Options.VisualsOnHitsMaterial.Value
                end)

                Toggles.VisualsOnHitsEnabled:OnChanged(function()
                    Sage.Visuals.OnHit["Impact Points Enabled"] = Toggles.VisualsOnHitsEnabled.Value
                end)

                Options.VisualsOnHitsColor:OnChanged(function()
                    Sage.Visuals.OnHit["Impact Points Color"] = Options.VisualsOnHitsColor.Value
                end)
                
                
                -- // Local Visuals
                
           Sections.Visuals.Local:AddToggle('ChamsEnabledTggle', {
            Text = 'Enable Chams',
            Default = false,
            Tooltip = 'Enable Chams',
        })
        
        Toggles.ChamsEnabledTggle:OnChanged(function()
            Sage.Visuals.Local.BodyChams.Enabled = Toggles.ChamsEnabledTggle.Value
        end)
        
        Sections.Visuals.Local:AddToggle('GunChamsTggle', {
            Text = 'Enable Gun Chams',
            Default = false, 
            Tooltip = 'Gun Chams Enabled', 
        })
        
        Toggles.GunChamsTggle:OnChanged(function()
            Sage.Visuals.Local.GunChams.Enabled = Toggles.GunChamsTggle.Value
        end)
        
        Toggles.GunChamsTggle:AddColorPicker('GunChamsColr', {
            Default = Color3.fromRGB(255,255,255),
            Title = 'Gun Chams Color'
        })
        
        Options.GunChamsColr:OnChanged(function()
            Sage.Visuals.Local.GunChams.Enabled = Options.GunChamsColr.Value
        end)
        
        Sections.Visuals.Local:AddToggle('TrailEnabledTggle', {
            Text = 'Enable Trail',
            Default = false,
            Tooltip = 'Enable Trail',
        })
        
        Toggles.TrailEnabledTggle:OnChanged(function()
            Sage.Visuals.Local.Trail = Toggles.TrailEnabledTggle.Value
        end)
        
        Sections.Visuals.Local:AddToggle('LocalHighlight', {
            Text = 'Highlight',
            Default = false, 
            Tooltip = 'Highlight Enabled', 
        })
        
        Toggles.LocalHighlight:OnChanged(function()
            Sage.Visuals.Local.Highlight.Enabled = Toggles.LocalHighlight.Value
        end)
        
        Toggles.LocalHighlight:AddColorPicker('LocalHighlightFillColorColorPicker', {
            Default = Color3.fromRGB(255,0,0),
            Title = 'Highlight Fill Color'
        })
        
        Options.LocalHighlightFillColorColorPicker:OnChanged(function()
            Sage.Visuals.Local.Highlight.FillColor = Options.LocalHighlightFillColorColorPicker.Value
        end)
        
        Toggles.LocalHighlight:AddColorPicker('LocalHighlightOutLineColor', {
            Default = Color3.fromRGB(255,255,255),
            Title = 'Highlight Outline Color'
        })
        
        Options.LocalHighlightOutLineColor:OnChanged(function()
            Sage.Visuals.Local.Highlight.OutlineColor = Options.LocalHighlightOutLineColor.Value
        end)
        
        Sections.Visuals.Local:AddToggle('CloneChamsEnabled', {
            Text = 'Clone Chams',
            Default = false, 
            Tooltip = 'Clone Chams Enabled', 
        })
        
        Toggles.CloneChamsEnabled:OnChanged(function()
            Sage.Visuals.Local.CloneChams.Enabled = Toggles.CloneChamsEnabled.Value
        end)
        
        Toggles.CloneChamsEnabled:AddColorPicker('CloneChamsColor', {
            Default = Color3.fromRGB(255,255,255),
            Title = 'Clone Chams Color'
        })
        
        Options.CloneChamsColor:OnChanged(function()
            Sage.Visuals.Local.CloneChams.Color = Options.CloneChamsColor.Value
        end)
        
        Sections.Visuals.Local:AddSlider('DurationSliderWHAT', {
            Text = 'Duration',
        
            Default = 0.1,
            Min = 0.1,
            Max = 3,
            Rounding = 2,
        
            Compact = false,
        })
        
        Options.DurationSliderWHAT:OnChanged(function()
            Sage.Visuals.Local.CloneChams.Duration = Options.DurationSliderWHAT.Value
        end)
        
        Sections.Visuals.Local:AddDropdown('CloneChamsMaterial', {
            Values = { 'Neon', 'ForceField', 'Plastic' },
            Default = 2,
            Multi = false, 
        
            Text = 'Character Type',
            Tooltip = 'Character Type',
        })
        
        Options.CloneChamsMaterial:OnChanged(function()
            Sage.Visuals.Local.CloneChams.Material = Options.CloneChamsMaterial.Value
        end)
        
        Sections.Visuals.Local:AddToggle('ClonChamsEnabled', {
            Text = 'Custom Character',
            Default = false, 
            Tooltip = 'Custom Character Enabled', 
        })
        
        Toggles.ClonChamsEnabled:OnChanged(function()
            CustomCharacter = Toggles.ClonChamsEnabled.Value
            local function Weld(x,y)
				local W = Instance.new("Weld")
				W.Part0 = x
				W.Part1 = y
				local CJ = CFrame.new(x.Position)
				local C0 = x.CFrame:inverse()*CJ
				local C1 = y.CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = x
			end

			if CustomCharacter then
				for i,v in pairs(LocalPlayer.Character:GetDescendants()) do 
					if v:IsA("BasePart") or v:IsA("Decal") then 
						v.Transparency = 1 
					end 
				end 
				-- 
				IHateLionHePasteAzureL = LocalPlayer.CharacterAdded:Connect(function()
					if Part then 
						Part:Destroy()
					end 
					-- 
					delay(5, function()
						Part = Instance.new("Part", Workspace) 
						Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
						Part.CanCollide = false
						--
						Character = Instance.new("SpecialMesh")
						Character.Parent = Part
						Character.MeshType = "FileMesh"
						--
						Character.Scale = cum.Characters[LilAHHGHAHAHAAGAH][1]
						Character.TextureId= "http://www.roblox.com/asset/?id="..  cum.Characters[LilAHHGHAHAHAAGAH][2]  .. "" 
						Character.MeshId="http://www.roblox.com/asset/?id="..  cum.Characters[LilAHHGHAHAHAAGAH][3] ..""
						-- 
						Weld(LocalPlayer.Character.HumanoidRootPart, Part)
						-- 
						for i,v in pairs(LocalPlayer.Character:GetDescendants()) do 
							if v:IsA("BasePart") or v:IsA("Decal") then 
								v.Transparency = 1
							end 
						end 
					end)
				end)
				
				Part = Instance.new("Part", Workspace) 
				Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
				Part.CanCollide = false
				--
				Character = Instance.new("SpecialMesh")
				Character.Parent = Part
				Character.MeshType = "FileMesh"
				--
				Character.Scale = cum.Characters[LilAHHGHAHAHAAGAH][1]
				Character.TextureId= "http://www.roblox.com/asset/?id="..  cum.Characters[LilAHHGHAHAHAAGAH][2]  .. "" 
				Character.MeshId="http://www.roblox.com/asset/?id="..  cum.Characters[LilAHHGHAHAHAAGAH][3] ..""
				-- 
				Weld(LocalPlayer.Character.HumanoidRootPart, Part)
			else 
				if Part then 
					Part:Destroy()
				end 
				-- 
				for i,v in pairs(LocalPlayer.Character:GetDescendants()) do 
                    if v:IsA("BasePart") or v:IsA("Decal") and v.Name ~= "CUFF" then 
                        v.Transparency = 0
                    end 
                    -- 
                    if v.Name == "CUFF" then 
                        v:Destroy()
                    end 
					-- 
					if v.Name == "LeftLowerArmFake" or v.Name == "HumanoidRootPart" or v.Name == "RightLowerArmFake" or v.Name == "LeftLowerLegFake" or v.Name == "RightLowerLegFake" then 
						v.Transparency = 1
					end 	
                end 
				-- 
				if IHateLionHePasteAzureL then 
					IHateLionHePasteAzureL:Disconnect()
				end 
				-- 
				if GetAGripNigga() then 
					GetAGripNigga().Handle.Transparency = 0 
				end 
			end 
        end)
        
        Sections.Visuals.Local:AddDropdown('Shushh', {
            Values = {"AmongUs", "SpongeBob", "Patrick", "Maxell", "Brian", "CapyBara", "Chicken", "Sonic"},
            Default = 2,
            Multi = false, 
        
            Text = 'Character Type',
            Tooltip = 'Character Type',
        })
        
        Options.Shushh:OnChanged(function()
            LilAHHGHAHAHAAGAH = Options.Shushh.Value
            if CustomCharacter then 
				Character.Scale = cum.Characters[LilAHHGHAHAHAAGAH][1]
				Character.TextureId = "http://www.roblox.com/asset/?id="..  cum.Characters[LilAHHGHAHAHAAGAH][2]  .. "" 
				Character.MeshId ="http://www.roblox.com/asset/?id="..  cum.Characters[LilAHHGHAHAHAAGAH][3] ..""
			end 
        end)
        
        --// Atmosphere
Sections.Visuals.Atmosphere:AddToggle(
    "VisualsAtmosphereEnabled",
    {
        Text = "Enabled",
        Default = false,
        Tooltip = nil
    }
)

Toggles.VisualsAtmosphereEnabled:OnChanged(
    function()
        Sage.Visuals.World.Enabled = Toggles.VisualsAtmosphereEnabled.Value
    end
)

Sections.Visuals.Atmosphere:AddToggle(
    "VisualsAtmosphereFogEnabled",
    {
        Text = "Fog",
        Default = false,
        Tooltip = nil
    }
):AddColorPicker(
    "VisualsAtmosphereFogColor",
    {
        Default = Color3.new(1, 1, 1),
        Title = "Fog Color",
        Transparency = nil
    }
)

Toggles.VisualsAtmosphereFogEnabled:OnChanged(
    function()
        Sage.Visuals.World.Fog.Enabled = Toggles.VisualsAtmosphereFogEnabled.Value
    end
)

Options.VisualsAtmosphereFogColor:OnChanged(
    function()
        Sage.Visuals.World.Fog.Color = Options.VisualsAtmosphereFogColor.Value
    end
)

Sections.Visuals.Atmosphere:AddSlider(
    "VisualsAtmosphereFogStart",
    {
        Text = "Fog Start",
        Default = 1000,
        Min = 1,
        Max = 10000,
        Rounding = 0,
        Compact = false
    }
)

Sections.Visuals.Atmosphere:AddSlider(
    "VisualsAtmosphereFogEnd",
    {
        Text = "Fog End",
        Default = 1000,
        Min = 1,
        Max = 10000,
        Rounding = 0,
        Compact = false
    }
)

Options.VisualsAtmosphereFogStart:OnChanged(
    function()
        Sage.Visuals.World.Fog.Start = Options.VisualsAtmosphereFogStart.Value
    end
)

Options.VisualsAtmosphereFogEnd:OnChanged(
    function()
        Sage.Visuals.World.Fog.End = Options.VisualsAtmosphereFogEnd.Value
    end
)

Sections.Visuals.Atmosphere:AddToggle(
    "VisualsAtmosphereAmbientEnabled",
    {
        Text = "Ambient",
        Default = false,
        Tooltip = nil
    }
):AddColorPicker(
    "VisualsAtmosphereAmbientColor",
    {
        Default = Color3.new(1, 1, 1),
        Title = "Ambient Color",
        Transparency = nil
    }
)

Toggles.VisualsAtmosphereAmbientEnabled:OnChanged(
    function()
        Sage.Visuals.World.Ambient.Enabled = Toggles.VisualsAtmosphereAmbientEnabled.Value
    end
)

Options.VisualsAtmosphereAmbientColor:OnChanged(
    function()
        Sage.Visuals.World.Ambient.Color = Options.VisualsAtmosphereAmbientColor.Value
    end
)

Sections.Visuals.Atmosphere:AddToggle(
    "VisualsAtmosphereOutdoorAmbientEnabled",
    {
        Text = "Outdoor Ambient",
        Default = false,
        Tooltip = nil
    }
):AddColorPicker(
    "VisualsAtmosphereOutdoorAmbientColor",
    {
        Default = Color3.new(1, 1, 1),
        Title = "Outdoor Ambient Color",
        Transparency = nil
    }
)

Toggles.VisualsAtmosphereOutdoorAmbientEnabled:OnChanged(
    function()
        Sage.Visuals.World.OutdoorAmbient.Enabled = Toggles.VisualsAtmosphereOutdoorAmbientEnabled.Value
    end
)

Options.VisualsAtmosphereOutdoorAmbientColor:OnChanged(
    function()
        Sage.Visuals.World.OutdoorAmbient.Color = Options.VisualsAtmosphereOutdoorAmbientColor.Value
    end
)

Sections.Visuals.Atmosphere:AddToggle(
    "VisualsAtmosphereColorShiftEnabled",
    {
        Text = "ColorShift",
        Default = false,
        Tooltip = nil
    }
):AddColorPicker(
    "VisualsAtmosphereColorShiftColor",
    {
        Default = Color3.new(1, 1, 1),
        Title = "ColorShift Top Color",
        Transparency = nil
    }
)

Toggles.VisualsAtmosphereColorShiftEnabled:OnChanged(
    function()
        Sage.Visuals.World.ColorShift.Enabled = Toggles.VisualsAtmosphereColorShiftEnabled.Value
    end
)

Options.VisualsAtmosphereColorShiftColor:OnChanged(
    function()
        Sage.Visuals.World.ColorShift.Color = Options.VisualsAtmosphereColorShiftColor.Value
    end)

Sections.Visuals.Atmosphere:AddToggle(
    "VisualsAtmosphereBrightnessChangerEnabled",
    {
        Text = "Brightness Changer",
        Default = false,
        Tooltip = nil
    }
)

Sections.Visuals.Atmosphere:AddSlider(
    "VisualsAtmosphereBrightnessChangerValue",
    {
        Text = "Brightness Value",
        Default = 0,
        Min = 0,
        Max = 10,
        Rounding = 2,
        Compact = false
    }
)

Toggles.VisualsAtmosphereBrightnessChangerEnabled:OnChanged(
    function()
        Sage.Visuals.World.Brightness.Enabled = Toggles.VisualsAtmosphereBrightnessChangerEnabled.Value
    end
)

Options.VisualsAtmosphereBrightnessChangerValue:OnChanged(
    function()
        Sage.Visuals.World.Brightness.Value = Options.VisualsAtmosphereBrightnessChangerValue.Value
    end
)

Sections.Visuals.Atmosphere:AddToggle(
    "VisualsAtmosphereTimeChangerEnabled",
    {
        Text = "Clock Time",
        Default = false,
        Tooltip = nil
    }
)

Sections.Visuals.Atmosphere:AddSlider(
    "VisualsAtmosphereTimeChangerValue",
    {
        Text = "Time",
        Default = 1,
        Min = 0.1,
        Max = 24,
        Rounding = 1,
        Compact = false
    }
)

Toggles.VisualsAtmosphereTimeChangerEnabled:OnChanged(
    function()
        Sage.Visuals.World.ClockTime.Enabled = Toggles.VisualsAtmosphereTimeChangerEnabled.Value
    end
)

Options.VisualsAtmosphereTimeChangerValue:OnChanged(
    function()
        Sage.Visuals.World.ClockTime.Value = Options.VisualsAtmosphereTimeChangerValue.Value
    end
)

Sections.Visuals.Atmosphere:AddToggle(
    "VisualsAtmosphereExposureChangerEnabled",
    {
        Text = "Exposure Changer",
        Default = false,
        Tooltip = nil
    }
)

Sections.Visuals.Atmosphere:AddSlider(
    "VisualsAtmosphereExposureChangerValue",
    {
        Text = "Exposure",
        Default = 1,
        Min = -3,
        Max = 3,
        Rounding = 1,
        Compact = false
    }
)

Toggles.VisualsAtmosphereExposureChangerEnabled:OnChanged(
    function()
        Sage.Visuals.World.WorldExposure.Enabled = Toggles.VisualsAtmosphereExposureChangerEnabled.Value
    end
)

Options.VisualsAtmosphereExposureChangerValue:OnChanged(
    function()
        Sage.Visuals.World.WorldExposure.Value = Options.VisualsAtmosphereExposureChangerValue.Value
    end
)

-- // crosshair tab
Sections.Visuals.Crosshair:AddToggle(
    "VisualsCrosshairEnabled",
    {
        Text = "Enabled",
        Default = Sage.Visuals.Crosshair.Enabled,
        Tooltip = nil
    }
):AddColorPicker(
    "VisualsCrossahairColor",
    {
        Default = Color3.new(1, 1, 1),
        Title = "Crosshair Color",
        Transparency = nil
    }
)

Toggles.VisualsCrosshairEnabled:OnChanged(
    function()
        Sage.Visuals.Crosshair.Enabled = Toggles.VisualsCrosshairEnabled.Value
    end
)

Options.VisualsCrossahairColor:OnChanged(
    function()
        Sage.Visuals.Crosshair.Color = Options.VisualsCrossahairColor.Value
    end
)

Sections.Visuals.Crosshair:AddSlider(
    "VisualsCrosshairSize",
    {
        Text = "Size",
        Default = 1,
        Min = 0.1,
        Max = 30,
        Rounding = 3,
        Compact = false
    }
)

Options.VisualsCrosshairSize:OnChanged(
    function()
        Sage.Visuals.Crosshair.Size = Options.VisualsCrosshairSize.Value
    end
)

Sections.Visuals.Crosshair:AddSlider(
    "VisualsCrosshairGap",
    {
        Text = "Gap",
        Default = 2,
        Min = 0.1,
        Max = 10,
        Rounding = 3,
        Compact = false
    }
)

Options.VisualsCrosshairGap:OnChanged(
    function()
        Sage.Visuals.Crosshair.Gap = Options.VisualsCrosshairGap.Value
    end
)

Sections.Visuals.Crosshair:AddToggle(
    "VisualsCrosshairRotateEnabled",
    {
        Text = "Rotate",
        Default = false,
        Tooltip = nil
    }
) 

Sections.Visuals.Crosshair:AddDropdown('Crosshair/EasingStyle', {
            Values = EasingStyles,
            Default = Sage.Visuals.Crosshair.Rotation.Style, -- number index of the value / string
            Multi = false, -- true / false, allows multiple choices to be selected
        
            Text = 'Easing Style',
            Tooltip = 'Select a easing style.', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                Sage.Visuals.Crosshair.Rotation.Style = Enum.EasingStyle[Value]
            end
        })
        

Sections.Visuals.Crosshair:AddSlider(
    "VisualsCrosshairRotateAmount",
    {
        Text = "Rotation Speed",
        Default = Sage.Visuals.Crosshair.Rotation.Speed,
        Min = 1,
        Max = 400,
        Rounding = 3,
        Compact = false
    }
)

Sections.Visuals.Crosshair:AddSlider(
    "VisualsCrosshairMaxigayAmount",
    {
        Text = "Rotation Max",
        Default = Sage.Visuals.Crosshair.Rotation.Max,
        Min = 1,
        Max = 400,
        Rounding = 3,
        Compact = false
    }
)

Toggles.VisualsCrosshairRotateEnabled:OnChanged(
    function()
        Sage.Visuals.Crosshair.Rotation.Enabled = Toggles.VisualsCrosshairRotateEnabled.Value
    end
)

Options.VisualsCrosshairRotateAmount:OnChanged(
    function()
        Sage.Visuals.Crosshair.Rotation.Speed = Options.VisualsCrosshairRotateAmount.Value
    end
)

Options.VisualsCrosshairMaxigayAmount:OnChanged(
    function()
        Sage.Visuals.Crosshair.Rotation.Max = Options.VisualsCrosshairRotateAmount.Value
    end
)

Sections.Visuals.Crosshair:AddToggle(
    "VisualsCrosshairEnabled",
    {
        Text = "Enabled",
        Default = false,
        Tooltip = nil
    }
)

Toggles.VisualsCrosshairEnabled:OnChanged(
    function()
        Sage.Visuals.Crosshair.Resize.Enabled = Toggles.VisualsCrosshairEnabled.Value
    end
)

Sections.Visuals.Crosshair:AddSlider(
    "VisualsCrosshairMin",
    {
        Text = "Min",
        Default = 1,
        Min = 0.1,
        Max = 30,
        Rounding = 3,
        Compact = false
    }
)

Options.VisualsCrosshairMin:OnChanged(
    function()
        Sage.Visuals.Crosshair.Resize.Min = Options.VisualsCrosshairMin.Value
    end
)

Sections.Visuals.Crosshair:AddSlider(
    "VisualsCrosshairMax",
    {
        Text = "Max",
        Default = 2,
        Min = 0.1,
        Max = 10,
        Rounding = 3,
        Compact = false
    }
)

Options.VisualsCrosshairMax:OnChanged(
    function()
        Sage.Visuals.Crosshair.Resize.Max = Options.VisualsCrosshairMax.Value
    end
)

            --// Anti Aim
                Sections.AntiAim.VelocitySpoofer:AddToggle("AntiAimVelocitySpooferEnabled", {
                    Text = "Enabled",
                    Default = false,
                    Tooltip = nil,
                })

                Toggles.AntiAimVelocitySpooferEnabled:OnChanged(function()
                    Sage.Antilock.Enabled = Toggles.AntiAimVelocitySpooferEnabled.Value
                end)

                Sections.AntiAim.VelocitySpoofer:AddDropdown("AntiAimVelocitySpooferType", {
                    Values = {"Spinbot","Jitter","setfflag", "Network", "Disabler", "Underground", "Unhittable", "Over", "Multiplier", "Custom"},
                    Default = 1,
                    Multi = false,

                    Text = "Type",
                    Tooltip = nil
                })

                Options.AntiAimVelocitySpooferType:OnChanged(function()
                    Sage.Antilock.Method = Options.AntiAimVelocitySpooferType.Value
                end)

                Sections.AntiAim.VelocitySpoofer:AddToggle("AntiAimVelocitySpooferVisualizeEnabled", {
                    Text = "Visualize",
                    Default = false,
                    Tooltip = nil,
                }):AddColorPicker("AntiAimVelocitySpooferVisualizeColor", {
                    Default = Color3.new(1, 1, 1),
                    Title = "Velocity Visualize Color",
                    Transparency = nil,
                })
                
                Sections.AntiAim.VelocitySpoofer:AddInput("AntiAimVelocitySpooferVisualizePrediction", {
                    Default = 0.13,
                    Numeric = false,
                    Finished = false,

                    Text = "Visualize Prediction",
                    Tooltip = nil,

                    Placeholder = "Visualize Prediction Amount"
                })

                Options.AntiAimVelocitySpooferVisualizePrediction:OnChanged(function()
                    Sage.Antilock.Visualize.Prediction = tonumber(Options.AntiAimVelocitySpooferVisualizePrediction.Value)
                end)

                Toggles.AntiAimVelocitySpooferVisualizeEnabled:OnChanged(function()
                    Sage.Antilock.Visualize.Enabled = Toggles.AntiAimVelocitySpooferVisualizeEnabled.Value
                end)

                Options.AntiAimVelocitySpooferVisualizeColor:OnChanged(function()
                    Sage.Antilock.Visualize.Color = Options.AntiAimVelocitySpooferVisualizeColor.Value
                end)
                
                Sections.AntiAim.VelocitySpoofer:AddSlider("AntiAimVelocitySpooferYw", {
                    Text = "Power",
                    Default = 0,
                    Min = 0,
                    Max = 100,
                    Rounding = 3,
                    Compact = false
                })

                Options.AntiAimVelocitySpooferYw:OnChanged(function()
                    Sage.Antilock.Power = Options.AntiAimVelocitySpooferYw.Value
                end)

                Sections.AntiAim.VelocitySpoofer:AddSlider("AntiAimVelocitySpooferYaw", {
                    Text = "X",
                    Default = 0,
                    Min = 0,
                    Max = 100,
                    Rounding = 3,
                    Compact = false
                })

                Options.AntiAimVelocitySpooferYaw:OnChanged(function()
                    Sage.Antilock.CustomValue.X = Options.AntiAimVelocitySpooferYaw.Value
                end)

                Sections.AntiAim.VelocitySpoofer:AddSlider("AntiAimVelocitySpooferPitch", {
                    Text = "Y",
                    Default = 0,
                    Min = 0,
                    Max = 100,
                    Rounding = 3,
                    Compact = false
                })

                Options.AntiAimVelocitySpooferPitch:OnChanged(function()
                    Sage.Antilock.CustomValue.Y = Options.AntiAimVelocitySpooferPitch.Value
                end)

                Sections.AntiAim.VelocitySpoofer:AddSlider("AntiAimVelocitySpooferRoll", {
                    Text = "Z",
                    Default = 0,
                    Min = 0,
                    Max = 100,
                    Rounding = 3,
                    Compact = false
                })

                Options.AntiAimVelocitySpooferRoll:OnChanged(function()
                    Sage.Antilock.CustomValue.Z = Options.AntiAimVelocitySpooferRoll.Value
                end)
   
   
   --// C-Sync
            do
                Sections.AntiAim.CSync:AddToggle("CSyncAntiAimEnabled", {
                    Text = "Enabled",
                    Default = false,
                    Tooltip = nil,
                }):AddKeyPicker("CSyncAntiAimKeyPicker", {
                    Default = "b",
                    SyncToggleState = true,
                    Mode = "Toggle",

                    Text = "C-Sync",
                    NoUI = false,
                })

                Toggles.CSyncAntiAimEnabled:OnChanged(function()
                    Sage.CSync.Enabled = Toggles.CSyncAntiAimEnabled.Value
                end)

                Sections.AntiAim.CSync:AddToggle("CSyncAntiAimVisualizeEnabled", {
                    Text = "Visualize",
                    Default = false,
                    Tooltip = nil,
                }):AddColorPicker("CSyncAntiAimVisualizeColor", {
                    Default = Color3.new(1, 1, 1),
                    Title = "CFrame Visualize Color",
                    Transparency = nil,
                })

                Sections.AntiAim.CSync:AddDropdown("CSyncAntiAimType", {
                    Values = {"Custom", "Random", "Random Target", "Target Strafe", "Local Strafe", "Destroy Cheaters"},
                    Default = 1,
                    Multi = false,
                    Text = "Type",
                    Tooltip = nil,
                })

                Toggles.CSyncAntiAimVisualizeEnabled:OnChanged(function()
                    Sage.CSync.Visualize = Toggles.CSyncAntiAimVisualizeEnabled.Value
                end)

                Options.CSyncAntiAimVisualizeColor:OnChanged(function()
                    Sage.CSync.VisualizeColor = Options.CSyncAntiAimVisualizeColor.Value
                end)

                Options.CSyncAntiAimType:OnChanged(function()
                    Sage.CSync.Type = Options.CSyncAntiAimType.Value
                end)

                Sections.AntiAim.CSync:AddSlider("CSyncAntiAimRandomRange", {
                    Text = "Random Range",
                    Default = 0.1,
                    Min = 0,
                    Max = 20,
                    Rounding = 1,
                    Compact = false,
                })

                Options.CSyncAntiAimRandomRange:OnChanged(function()
                    Sage.CSync.RandomDistance = Options.CSyncAntiAimRandomRange.Value
                end)

                Sections.AntiAim.CSync:AddSlider("CSyncAntiAimCustomX", {
                    Text = "Custom X",
                    Default = 0.1,
                    Min = 0,
                    Max = 500,
                    Rounding = 1,
                    Compact = false,
                })

                Options.CSyncAntiAimCustomX:OnChanged(function()
                    Sage.CSync.Custom.X = Options.CSyncAntiAimCustomX.Value
                end)

                Sections.AntiAim.CSync:AddSlider("CSyncAntiAimCustomY", {
                    Text = "Custom Y",
                    Default = 0.1,
                    Min = 0,
                    Max = 500,
                    Rounding = 1,
                    Compact = false,
                })

                Options.CSyncAntiAimCustomY:OnChanged(function()
                    Sage.CSync.Custom.Y = Options.CSyncAntiAimCustomY.Value
                end)

                Sections.AntiAim.CSync:AddSlider("CSyncAntiAimCustomZ", {
                    Text = "Custom Z",
                    Default = 0.1,
                    Min = 0,
                    Max = 500,
                    Rounding = 1,
                    Compact = false,
                })

                Options.CSyncAntiAimCustomZ:OnChanged(function()
                    Sage.CSync.Custom.Z = Options.CSyncAntiAimCustomZ.Value
                end)

                Sections.AntiAim.CSync:AddSlider("CSyncAntiAimTargetStrafeSpeed", {
                    Text = "Target Strafe Speed",
                    Default = 1,
                    Min = 0,
                    Max = 20,
                    Rounding = 1,
                    Compact = false,
                })

                Options.CSyncAntiAimTargetStrafeSpeed:OnChanged(function()
                    Sage.CSync.TargetStrafe.Speed = Options.CSyncAntiAimTargetStrafeSpeed.Value
                end)

                Sections.AntiAim.CSync:AddSlider("CSyncAntiAimTargetStrafeDistance", {
                    Text = "Target Strafe Distance",
                    Default = 1,
                    Min = 0,
                    Max = 20,
                    Rounding = 1,
                    Compact = false,
                })

                Options.CSyncAntiAimTargetStrafeDistance:OnChanged(function()
                    Sage.CSync.TargetStrafe.Distance = Options.CSyncAntiAimTargetStrafeDistance.Value
                end)

                Sections.AntiAim.CSync:AddSlider("CSyncAntiAimTargetStrafeHeight", {
                    Text = "Target Strafe Height",
                    Default = 1,
                    Min = 0,
                    Max = 20,
                    Rounding = 1,
                    Compact = false,
                })

                Options.CSyncAntiAimTargetStrafeHeight:OnChanged(function()
                    Sage.CSync.TargetStrafe.Height = Options.CSyncAntiAimTargetStrafeHeight.Value
                end)
            end
            
            -- // Desync w
         local function UpdateDesync()
        if getgenv().DesyncEnabled and (getgenv().DesyncMode == "Walkable Desync" or getgenv().DesyncMode == "Static Desync") then
            if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = LocalPlayer.Character.HumanoidRootPart
                if getgenv().DesyncMode == "Walkable Desync" then
                    local CurrentVelocity = hrp.Velocity
                    hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(0), 0)
                    hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(0.01), 0)
                    hrp.AssemblyLinearVelocity = Vector3.new(math.random(3000), math.random(3000), math.random(3000))
                    game:GetService("RunService").RenderStepped:Wait()
                    hrp.Velocity = CurrentVelocity
                elseif getgenv().DesyncMode == "Static Desync" then
                    local CurrentVelocity = hrp.Velocity
                    hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(0), 0)
                    hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(0.01), 0)
                    hrp.Velocity = Vector3.new(3000, 3000, 3000)
                    game:GetService("RunService").RenderStepped:Wait()
                    hrp.Velocity = CurrentVelocity
                end
            end
        else
            if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = LocalPlayer.Character.HumanoidRootPart
                hrp.Velocity = Vector3.new(0, 0, 0)
                hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
        end
    end
    Sections.AntiAim.Desync:AddToggle('', {
        Text = 'Enable Jesussync',
        Default = false,
        Callback = function(Value)
        getgenv().DesyncEnabled = Value
        end
    })
Sections.AntiAim.Desync:AddDropdown('', {
        AllowNull = true,
        Values = {"Walkable Desync", "Static Desync"},
        Multi = false,
        Text = 'Method: ',
        Callback = function(option)
            getgenv().DesyncMode = option
            UpdateDesync()
        end
    })
    
    Sections.AntiAim.Desync:AddDivider()
    
    Sections.AntiAim.Desync:AddToggle('', {
        Text = 'Prediction Breaker',
        Default = false,
        Callback = function(Value)
        Sage.Desync.PredictionBreaker.Enabled = Value
        end
    })
    
    Sections.AntiAim.Desync:AddSlider('', {
        Text = 'X',
        Default = 0.1,
        Min = -6000,
        Max = 6000,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
        Sage.Desync.PredictionBreaker.Velocity.X = Value
        end
    })
    
    Sections.AntiAim.Desync:AddSlider('', {
        Text = 'Y',
        Default = 0.1,
        Min = 0,
        Max = 6000,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
        Sage.Desync.PredictionBreaker.Velocity.Y = Value
        end
    })
    
    Sections.AntiAim.Desync:AddSlider('', {
        Text = 'Z',
        Default = 0.1,
        Min = -6000,
        Max = 6000,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
        Sage.Desync.PredictionBreaker.Velocity.Z = Value
        end
    })
    
    Sections.AntiAim.Desync:AddToggle('', {
        Text = 'Use Preset',
        Default = false,
        Callback = function(Value)
        getgenv().Sage.Desync.PredictionBreaker.UsePreset = Value
        end
    })
    
Sections.AntiAim.Desync:AddDropdown('', {
        AllowNull = true,
        Values = {"Random", "Fluctate"},
        Multi = false,
        Text = 'Method: ',
        Callback = function(option)
            Sage.Desync.PredictionBreaker.Preset = option
        end
    })
    
    Sections.AntiAim.Desync:AddDivider()
    
    Sections.AntiAim.Desync:AddToggle('', {
        Text = 'Network',
        Default = false,
        Callback = function(Value)
        Sage.Desync.CripWalk.Enabled = Value
        end
    })
    
    Sections.AntiAim.Desync:AddSlider('', {
        Text = 'Network Amount',
        Default = 1,
        Min = 1,
        Max = 50,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
        Sage.Desync.CripWalk.Tick = Value
        end
    })
    
    Sections.AntiAim.Desync:AddDivider()
    
    Sections.AntiAim.Desync:AddToggle('', {
        Text = 'setfflag',
        Default = false,
        Callback = function(Value)
        SkibidiAAAAAAA = Value
        if Value == false then
                setfflag("S2PhysicsSenderRate",  15)
            else
                setfflag("S2PhysicsSenderRate", SetfflagRate or 15)
            end
        end
    })
    
    Sections.AntiAim.Desync:AddSlider('', {
        Text = 'Setfflag Render Rate',
        Default = 15,
        Min = 0,
        Max = 15,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
        if SkibidiAAAAAAA == true then
                setfflag("S2PhysicsSenderRate",  Value)
                print("SET PHYSICS SENDRATE TO ", tostring(Value))
            end
        end
    })
    
    
   
            --// Speed
            do
                Sections.Misc.Speed:AddToggle("MiscCFrameSpeedEnabled", {
                    Text = "Enabled",
                    Default = false,
                    Tooltip = nil,
                }):AddKeyPicker("MiscCFrameSpeedKeybind", {
                    Default = "b",
                    SyncToggleState = true,
                    Mode = "Toggle",

                    Text = "Speed",
                    NoUI = false,
                })

                Toggles.MiscCFrameSpeedEnabled:OnChanged(function()
                    Sage.Misc.Movement.Speed.Enabled = Toggles.MiscCFrameSpeedEnabled.Value
                end)

                Sections.Misc.Speed:AddSlider("MiscCFrameSpeedAmount", {
                    Text = "Amount",
                    Default = 0.1,
                    Min = 0,
                    Max = 10,
                    Rounding = 3,
                    Compact = false,
                })

                Options.MiscCFrameSpeedAmount:OnChanged(function()
                    Sage.Misc.Movement.Speed.Amount = Options.MiscCFrameSpeedAmount.Value
                end)
                end
                
            --// Exploits
            do
                Sections.Misc.Exploits:AddToggle("MiscExploitsEnabled", {
                    Text = "Enabled",
                    Default = false,
                    Tooltip = nil,
                })

                Toggles.MiscExploitsEnabled:OnChanged(function()
                    Sage.Misc.Exploits.Enabled = Toggles.MiscExploitsEnabled.Value
                end)

                Sections.Misc.Exploits:AddToggle("MiscExploitsNoJumpCooldown", {
                    Text = "No Jumpcooldown",
                    Default = false,
                    Tooltip = nil,
                })

                Toggles.MiscExploitsNoJumpCooldown:OnChanged(function()
                    Sage.Misc.Exploits.NoJumpCooldown = Toggles.MiscExploitsNoJumpCooldown.Value
                end)

                Sections.Misc.Exploits:AddToggle("MiscExploitsNoSlowdown", {
                    Text = "No Slowdown",
                    Default = false,
                    Tooltip = nil,
                })

                Toggles.MiscExploitsNoSlowdown:OnChanged(function()
                    Sage.Misc.Exploits.NoSlowDown = Toggles.MiscExploitsNoSlowdown.Value
                end)
                
                Sections.Misc.Exploits:AddToggle("MiscExploitsAutoPickUpMonkey", {
                    Text = "Auto Pick Up Mon(k)ey",
                    Default = false,
                    Tooltip = nil,
                })

                Toggles.MiscExploitsAutoPickUpMonkey:OnChanged(function()
                    Sage.Misc.Exploits.AutoPickUpMonkey = Toggles.MiscExploitsAutoPickUpMonkey.Value
                end)
                
                Sections.Misc.Exploits:AddToggle("MiscExploitsAutoStomp", {
                    Text = "Auto Stomp",
                    Default = false,
                    Tooltip = nil,
                })

                Toggles.MiscExploitsAutoStomp:OnChanged(function()
                    Sage.Misc.Exploits.AutoStomp = Toggles.MiscExploitsAutoStomp.Value
                end)
                
                Sections.Misc.Exploits:AddToggle("MiscExploitsAspectRatio", {
                    Text = "Aspect Ratio",
                    Default = false,
                    Tooltip = nil,
                })

                Toggles.MiscExploitsAspectRatio:OnChanged(function()
                    Sage.Misc.Exploits.AspectRatio = Toggles.MiscExploitsAspectRatio.Value
                end)
                

    Sections.Misc.Exploits:AddToggle('', {
        Text = 'Grip Position',
        Default = false,
        Callback = function(val)
        GripPosition = val
        end})
        
        Sections.Misc.Exploits:AddSlider('', {
        Text = 'X',
        Default = 1,
        Min = -10,
        Max = 10,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            NiggaXX = value
        end
    })
    
    Sections.Misc.Exploits:AddSlider('', {
        Text = 'Y',
        Default = 1,
        Min = -10,
        Max = 10,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            NiggaYY = value
        end
    })
    
    Sections.Misc.Exploits:AddSlider('', {
        Text = 'Z',
        Default = 1,
        Min = -10,
        Max = 10,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            NiggaZZ = value
        end
    })
    
Sections.Misc.Exploits:AddToggle('', {
        Text = 'Stomp Farm',
        Default = false,
        Callback = function(val)
            local function isPlayerKOD(player)
                return player.Character and player.Character:FindFirstChild("BodyEffects") and player.Character.BodyEffects:FindFirstChild("K.O")
            end
            
            local function isPlayerDead(player)
                return player.Character and player.Character:FindFirstChild("Humanoid") and (player.Character.Humanoid.Health <= 7 or player.Character.Humanoid.Parent == nil)
            end
            
            local function moveToTarget(player)
                local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                
                local targetTorso = player.Character and player.Character:FindFirstChild("UpperTorso")
                if targetTorso then
                    HumanoidRootPart.CFrame = CFrame.new(targetTorso.Position)
                    
                    while (HumanoidRootPart.Position - targetTorso.Position).magnitude > 1 do
                        task.wait(0.5)
                    end
                    
                    ME:FireServer(EventN)
                    task.wait(0.5)
                end
            end
            
            local function autoStomp()
                local stompInProgress = false
                
                local nearestPlayer = nil
                local nearestDistance = math.huge
                
                for _, player in pairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer and isPlayerKOD(player) and not stompInProgress then
                        if isPlayerDead(player) then
                            local distance = (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                            if distance < nearestDistance then
                                nearestPlayer = player
                                nearestDistance = distance
                            end
                        end
                    end
                end
                
                if nearestPlayer then
                    stompInProgress = true
                    moveToTarget(nearestPlayer)
                    stompInProgress = false
                else
                    local waitingAreaPosition = Vector3.new(0, 250, 0)
                    
                    local waitingArea = Instance.new("Part")
                    waitingArea.Name = "WaitingArea"
                    waitingArea.Size = Vector3.new(12, 12, 12)
                    waitingArea.Position = waitingAreaPosition
                    waitingArea.Anchored = true
                    waitingArea.CanCollide = false
                    
                    waitingArea.Parent = game.Workspace
                    
                    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                    
                    HumanoidRootPart.CFrame = CFrame.new(waitingArea.Position) * CFrame.new(0,12,0)
                end
            end
            
            StompFarm = val
            if StompFarm then
                spawn(function()
                    while StompFarm do
                        autoStomp()
                        task.wait(0.1)
                    end
                end)
            end
        end
    })
  Sections.Misc.Exploits:AddToggle('', {
        Text = 'ATM Farm',
        Default = false,
        Callback = function(val)
    local Drops = Workspace.Ignored.Drop
    
    local function getNearestCashier()
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        local maxDistance = math.huge
        local target = nil
    
        for _, cashier in ipairs(Workspace.Cashiers:GetChildren()) do
            if cashier:FindFirstChild("Head") and cashier:FindFirstChild("Humanoid") and cashier.Humanoid.Health > 0 then
                local distance = (HumanoidRootPart.Position - cashier.Head.Position).magnitude
                if distance < maxDistance then
                    maxDistance = distance
                    target = cashier
                end
            end
        end
        return target
    end
    
    local function destroySeats()
        for _, seat in ipairs(Workspace:GetDescendants()) do
            if seat:IsA("Seat") then
                seat:Destroy()
            end
        end
    end
    
    local function pickUpMoney()
        for _, drop in ipairs(Drops:GetChildren()) do
            if drop.Name == "MoneyDrop" and (drop.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 12 then
                local pickingUp = false
                if not pickingUp then
                    pickingUp = true
                    repeat
                        task.wait()
                        for _, tool in ipairs(LocalPlayer.Character:GetChildren()) do
                            if tool:IsA("Tool") then
                                tool.Parent = LocalPlayer.Backpack
                            end
                        end
                        workspace.Camera.CameraType = Enum.CameraType.Scriptable
                        workspace.Camera.CFrame = CFrame.lookAt((drop.Position + Vector3.new(math.random(-0.3, 0.3), 2, math.random(-0.3, 0.3))), drop.Position)
                        VirtualInputManager:SendMouseButtonEvent((workspace.Camera.ViewportSize.X / 2), (workspace.Camera.ViewportSize.Y / 2), 0, true, game, 1)
                        task.wait(0.15)
                        VirtualInputManager:SendMouseButtonEvent((workspace.Camera.ViewportSize.X / 2), (workspace.Camera.ViewportSize.Y / 2), 0, false, game, 1)
                    until not drop or not drop.Parent or (drop.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 12
                    pickingUp = false
                    workspace.Camera.CameraType = Enum.CameraType.Custom
                    workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
                end
            end
        end
    end
    
    shared.MoneyFarm = val
    
    while shared.MoneyFarm do
        wait(0.1)
    
        local target = getNearestCashier()
        if not target then
            continue
        end
    
        repeat
            wait(0.1)
            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local Combat = LocalPlayer.Backpack:FindFirstChild("Combat") or Character:FindFirstChild("Combat")
            if not Combat then
                Character:FindFirstChild("Humanoid").Health = 0
                break
            end
            HumanoidRootPart.CFrame = target.Head.CFrame * CFrame.new(0, -2.5, 3)
            Combat.Parent = Character
            Combat:Activate()
        until not target or target.Humanoid.Health <= 0
        pickUpMoney()
    end
    end
    })
    
    Sections.Misc.Exploits:AddButton('No Delay', function()
            local bulletHole = CorePackages:FindFirstChild("BulletHole")
            if bulletHole then
                bulletHole:Destroy()
            end
            if ReplicatedStorage.BulletHole and ReplicatedStorage.BulletHole:FindFirstChild("Delay") then
                ReplicatedStorage.BulletHole.Delay.Position = 0
            end
        end
    )
    Sections.Misc.Exploits:AddButton('Check Exploiters', function()
            for i,v in pairs(game.Workspace.Players:GetChildren()) do
                if not v.UpperTorso:FindFirstChild('BodyBackAttachment') then
                    found = true
                    notify("Exploiter Found",v.Name.." is exploiting")
                end
            end
            for i,v in pairs(game.Workspace.Players:GetChildren()) do 
                for index,part in pairs({"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",  "LeftUpperLeg", "RightLowerLeg", "RightFoot",  "RightUpperLeg"}) do 
                    if not v[part]:FindFirstChild("OriginalSize") then 
                        found = true
                        notify("Exploiter Found",v.Name.." is exploiting")
                    end
                end
            end
            if found == false then 
                notify("No exploiters found","Not accurate")
            end
        end
    )
    
    Sections.Misc.Exploits:AddSlider('', {
        Text = 'FOV Adjuster',
        Default = 70,
        Min = 70,
        Max = 160,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            game.Workspace.CurrentCamera.FieldOfView = value
        end
    })
    
 end

              
              local Guns = {
   "Revolver",
   "Double-Barrel SG",
   "High-Medium Armor",
   "Flamethrower",
   "SMG",
   "RPG",
   "P90",
   "LMG",
   "Key" 
}

local Food = {
   "Pizza",
   "Taco",
   "Chicken",
   "Cranberry",
   "Popcorn",
   "Hamburger",
   "HotDog",
}

local selectedfood = "Pizza"
local selectedgun = "Revolver"
        
     Sections.Misc.AutoBuy:AddSlider(
    "SigmaSkibidiToilet",
    {
        Text = "Multiplier",
        Default = 1,
        Min = 0,
        Max = 10,
        Rounding = 3,
        Compact = false
    }
)

Options.SigmaSkibidiToilet:OnChanged(
    function()
        autobuymultiplier = Options.SigmaSkibidiToilet.Value
    end
)

        Sections.Misc.AutoBuy:AddDropdown("CombatSkibidiDropdown", {
                    Values = Guns,
                    Default = 2,
                    Multi = false,

                    Text = "Guns",
                    Tooltip = nil
                })

                Options.CombatSkibidiDropdown:OnChanged(function()
                       selectedgun = Options.CombatSkibidiDropdown.Value
                end)
                
                Sections.Misc.AutoBuy:AddButton('Buy Gun/Ammo', function()
                BuyGunAndAmmo(selectedgun,autobuymultiplier)
                end)
                
                Sections.Misc.AutoBuy:AddDropdown("CombatSigmaDropdown", {
                    Values = Food,
                    Default = 2,
                    Multi = false,

                    Text = "Food",
                    Tooltip = nil
                })

                Options.CombatSigmaDropdown:OnChanged(function()
                       selectedfood = Options.CombatSigmaDropdown.Value
                end)
                
                Sections.Misc.AutoBuy:AddButton('Buy Gun/Ammo', function()
                Buy(Gun(selectedfood),0.3,true,1)
                end)
                
local locations = {
   "Uphill",
   "Military",
   "Park",
   "Downhill",
   "Double Barrel",
   "Casino",
   "Trailer",
   "School",
   "Revolver",
   "Bank",
   "Sewer",
   "Fire Station",
   "Hood Fitness",
   "Hood Kicks",
   "Jail",
   "Church",
}

local tplocation = "Uphill"

Sections.Misc.Teleport:AddDropdown("CombatLigmaDropdown", {
                    Values = locations,
                    Default = 2,
                    Multi = false,

                    Text = "Locations",
                    Tooltip = nil
                })

                Options.CombatLigmaDropdown:OnChanged(function()
                       tplocation = Options.CombatLigmaDropdown.Value
                end)
                
                Sections.Misc.Teleport:AddButton('Goto', function()
                tp(tplocation)
                end)
                
                Sections.Misc.Teleport:AddButton('Goto Random', function()
                tp(locations[math.random(1,#locations)])
                end)
             

        -- // Ui Lib Settings
        Library:SetWatermark('Sage | '..tostring(os.date("%B") .. " " .. os.date("%d") .. " " .. os.date("%Y")).." | ".. "1.0.1")
        Library:SetWatermarkVisibility(false)
        local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
        local MenuGroup2 = Tabs['UI Settings']:AddRightGroupbox('More Settings')
        MenuGroup:AddButton('Unload', function() Library:Unload() end)
        MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = "V", NoUI = true, Text = 'Menu keybind' })
        
        MenuGroup2:AddToggle('togglekeybindmenu', {
            Text = 'Keybind Menu',
            Default = false,
            Callback = function(V) 
                Library.KeybindFrame.Visible = Toggles.togglekeybindmenu.Value
            end
        })
        
       MenuGroup2:AddToggle('togglewatermark', {
            Text = 'Watermark',
            Default = false,
            Callback = function(V) 
                Library:SetWatermarkVisibility(Toggles.togglewatermark.Value)
            end
        })
        
        Library.ToggleKeybind = Options.MenuKeybind
        
        ThemeManager:SetLibrary(Library)
        
        ThemeManager:ApplyToTab(Tabs['UI Settings'])
        
        ThemeManager:SetFolder("Sage")
        
        SaveManager:SetLibrary(Library)
        
        SaveManager:SetFolder("Sage/Hood")
        
        SaveManager:IgnoreThemeSettings()

        SaveManager:BuildConfigSection(Tabs['UI Settings']) 