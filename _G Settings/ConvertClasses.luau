return{
    ShirtGraphic = {
        PropertyMap = {
            Graphic = {DefaultValue = "''"; Readonly = false; PropertyName = "Graphic"; PropertyType = "Content"};
        };
        Creatable = true;
        BaseClassName = "CharacterAppearance";
        ClassName = "ShirtGraphic";
    };
    BevelMesh = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "DataModelMesh";
        ClassName = "BevelMesh";
    };
    NetworkSettings = {
        PropertyMap = {
            FreeMemoryMBytes = {Security = "PluginSecurity"; Readonly = true; PropertyName = "FreeMemoryMBytes"; PropertyType = "float"};
            PhysicsMtuAdjust = {Readonly = false; PropertyName = "PhysicsMtuAdjust"; PropertyType = "int"};
            PrintEvents = {Readonly = false; PropertyName = "PrintEvents"; PropertyType = "bool"};
            IncommingReplicationLag = {Readonly = false; PropertyName = "IncommingReplicationLag"; PropertyType = "double"};
            PrintSplitMessage = {Readonly = false; PropertyName = "PrintSplitMessage"; PropertyType = "bool"};
            TouchSendRate = {Readonly = false; PropertyName = "TouchSendRate"; PropertyType = "float"};
            PrintFilters = {Readonly = false; PropertyName = "PrintFilters"; PropertyType = "bool"};
            NetworkOwnerRate = {Readonly = false; PropertyName = "NetworkOwnerRate"; PropertyType = "float"};
            ArePhysicsRejectionsReported = {Readonly = false; PropertyName = "ArePhysicsRejectionsReported"; PropertyType = "bool"};
            PhysicsReceive = {Readonly = false; PropertyName = "PhysicsReceive"; PropertyType = "PhysicsReceiveMethod"};
            PrintInstances = {Readonly = false; PropertyName = "PrintInstances"; PropertyType = "bool"};
            DataSendRate = {Readonly = false; PropertyName = "DataSendRate"; PropertyType = "float"};
            UsePhysicsPacketCache = {Readonly = false; PropertyName = "UsePhysicsPacketCache"; PropertyType = "bool"};
            PreferredClientPort = {Readonly = false; PropertyName = "PreferredClientPort"; PropertyType = "int"};
            IsThrottledByCongestionControl = {Readonly = false; PropertyName = "IsThrottledByCongestionControl"; PropertyType = "bool"};
            PhysicsSendPriority = {Readonly = false; PropertyName = "PhysicsSendPriority"; PropertyType = "PacketPriority"};
            EnableHeavyCompression = {Readonly = false; PropertyName = "EnableHeavyCompression"; PropertyType = "bool"};
            FreeMemoryPoolMBytes = {Security = "PluginSecurity"; Readonly = true; PropertyName = "FreeMemoryPoolMBytes"; PropertyType = "float"};
            ReceiveRate = {Readonly = false; PropertyName = "ReceiveRate"; PropertyType = "double"};
            TotalNumMovementWayPoint = {Readonly = false; PropertyName = "TotalNumMovementWayPoint"; PropertyType = "int"};
            PhysicsSendRate = {Readonly = false; PropertyName = "PhysicsSendRate"; PropertyType = "float"};
            PrintPhysicsErrors = {Readonly = false; PropertyName = "PrintPhysicsErrors"; PropertyType = "bool"};
            ClientPhysicsSendRate = {Readonly = false; PropertyName = "ClientPhysicsSendRate"; PropertyType = "float"};
            ShowPartMovementWayPoint = {Readonly = false; PropertyName = "ShowPartMovementWayPoint"; PropertyType = "bool"};
            ExperimentalPhysicsEnabled = {Readonly = false; PropertyName = "ExperimentalPhysicsEnabled"; PropertyType = "bool"};
            WaitingForCharacterLogRate = {Readonly = false; PropertyName = "WaitingForCharacterLogRate"; PropertyType = "int"};
            UseInstancePacketCache = {Readonly = false; PropertyName = "UseInstancePacketCache"; PropertyType = "bool"};
            DataGCRate = {Readonly = false; PropertyName = "DataGCRate"; PropertyType = "float"};
            IsThrottledByOutgoingBandwidthLimit = {Readonly = false; PropertyName = "IsThrottledByOutgoingBandwidthLimit"; PropertyType = "bool"};
            ExtraMemoryUsed = {Security = "PluginSecurity"; Readonly = false; PropertyName = "ExtraMemoryUsed"; PropertyType = "int"};
            TrackPhysicsDetails = {Readonly = false; PropertyName = "TrackPhysicsDetails"; PropertyType = "bool"};
            PhysicsSend = {Readonly = false; PropertyName = "PhysicsSend"; PropertyType = "PhysicsSendMethod"};
            CanSendPacketBufferLimit = {Readonly = false; PropertyName = "CanSendPacketBufferLimit"; PropertyType = "int"};
            PrintProperties = {Readonly = false; PropertyName = "PrintProperties"; PropertyType = "bool"};
            TrackDataTypes = {Readonly = false; PropertyName = "TrackDataTypes"; PropertyType = "bool"};
            PrintBits = {Readonly = false; PropertyName = "PrintBits"; PropertyType = "bool"};
            SendPacketBufferLimit = {Readonly = false; PropertyName = "SendPacketBufferLimit"; PropertyType = "int"};
            ReportStatURL = {Readonly = false; PropertyName = "ReportStatURL"; PropertyType = "string"};
            DataMtuAdjust = {Readonly = false; PropertyName = "DataMtuAdjust"; PropertyType = "int"};
            RenderStreamedRegions = {Readonly = false; PropertyName = "RenderStreamedRegions"; PropertyType = "bool"};
            DataSendPriority = {Readonly = false; PropertyName = "DataSendPriority"; PropertyType = "PacketPriority"};
            PrintStreamInstanceQuota = {Readonly = false; PropertyName = "PrintStreamInstanceQuota"; PropertyType = "bool"};
            PrintTouches = {Readonly = false; PropertyName = "PrintTouches"; PropertyType = "bool"};
            MaxDataModelSendBuffer = {Readonly = false; PropertyName = "MaxDataModelSendBuffer"; PropertyType = "int"};
            IsQueueErrorComputed = {Readonly = false; PropertyName = "IsQueueErrorComputed"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "NetworkSettings";
    };
    BrickColorValue = {
        PropertyMap = {
            Value = {DefaultValue = "BrickColor.new('Br. yellowish green')"; Readonly = false; PropertyName = "Value"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "BrickColorValue";
    };
    Accoutrement = {
        PropertyMap = {
            AttachmentRight = {DefaultValue = "Vector3.new(1, 0, 0)"; Readonly = false; PropertyName = "AttachmentRight"; PropertyType = "Vector3"};
            AttachmentPos = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "AttachmentPos"; PropertyType = "Vector3"};
            AttachmentPoint = {DefaultValue = "CFrame.new()"; Readonly = false; PropertyName = "AttachmentPoint"; PropertyType = "CoordinateFrame"};
            AttachmentUp = {DefaultValue = "Vector3.new(0, 1, 0)"; Readonly = false; PropertyName = "AttachmentUp"; PropertyType = "Vector3"};
            AttachmentForward = {DefaultValue = "Vector3.new(-0, -0, -1)"; Readonly = false; PropertyName = "AttachmentForward"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Accoutrement";
    };
    DebuggerManager = {
        PropertyMap = {
            DebuggingEnabled = {Readonly = true; PropertyName = "DebuggingEnabled"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "DebuggerManager";
    };
    CharacterAppearance = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "CharacterAppearance";
    };
    GuiMain = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "ScreenGui";
        ClassName = "GuiMain";
    };
    SelectionLasso = {
        PropertyMap = {
            Humanoid = {DefaultValue = "nil"; Readonly = false; PropertyName = "Humanoid"; PropertyType = "Object"};
        };
        Creatable = false;
        BaseClassName = "GuiBase3d";
        ClassName = "SelectionLasso";
    };
    HumanoidController = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Controller";
        ClassName = "HumanoidController";
    };
    MeshContentProvider = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "CacheableContentProvider";
        ClassName = "MeshContentProvider";
    };
    Handles = {
        PropertyMap = {
            Faces = {DefaultValue = 
                "Faces.new(Enum.NormalId.Right, Enum.NormalId.Left, Enum.NormalId.Front, Enum.NormalId.Back, Enum.NormalId.Top, Enum.NormalId.Bottom)";
                Readonly = false; PropertyName = "Faces"; PropertyType = "Faces"};
            Style = {DefaultValue = "Enum.HandlesStyle.Resize"; Readonly = false; PropertyName = "Style"; PropertyType = "HandlesStyle"};
        };
        Creatable = true;
        BaseClassName = "HandlesBase";
        ClassName = "Handles";
    };
    ReflectionMetadataClasses = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ReflectionMetadataClasses";
    };
    RemoteEvent = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "RemoteEvent";
    };
    Hole = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Feature";
        ClassName = "Hole";
    };
    Smoke = {
        PropertyMap = {
            Enabled = {DefaultValue = "true"; Readonly = false; PropertyName = "Enabled"; PropertyType = "bool"};
            Color = {DefaultValue = "Color3.new(1, 1, 1)"; Readonly = false; PropertyName = "Color"; PropertyType = "Color3"};
            Opacity = {DefaultValue = "0.5"; Readonly = false; PropertyName = "Opacity"; PropertyType = "float"};
            RiseVelocity = {DefaultValue = "1"; Readonly = false; PropertyName = "RiseVelocity"; PropertyType = "float"};
            Size = {DefaultValue = "1"; Readonly = false; PropertyName = "Size"; PropertyType = "float"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Smoke";
    };
    LocalWorkspace = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "LocalWorkspace";
    };
    KeyframeSequenceProvider = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "KeyframeSequenceProvider";
    };
    CFrameValue = {
        PropertyMap = {
            Value = {DefaultValue = "CFrame.new()"; Readonly = false; PropertyName = "Value"; PropertyType = "CoordinateFrame"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "CFrameValue";
    };
    InputObject = {
        PropertyMap = {
            UserInputType = {DefaultValue = "Enum.UserInputType.None"; Readonly = false; PropertyName = "UserInputType"; PropertyType = "UserInputType"};
            KeyCode = {DefaultValue = "Enum.KeyCode.Unknown"; Readonly = false; PropertyName = "KeyCode"; PropertyType = "KeyCode"};
            Position = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "Position"; PropertyType = "Vector3"};
            Delta = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "Delta"; PropertyType = "Vector3"};
            UserInputState = {DefaultValue = "Enum.UserInputState.None"; Readonly = false; PropertyName = "UserInputState"; PropertyType = "UserInputState"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "InputObject";
    };
    ImageLabel = {
        PropertyMap = {
            ImageTransparency = {DefaultValue = "0"; Readonly = false; PropertyName = "ImageTransparency"; PropertyType = "float"};
            Image = {DefaultValue = "''"; Readonly = false; PropertyName = "Image"; PropertyType = "Content"};
            ImageRectOffset = {DefaultValue = "Vector2.new()"; Readonly = false; PropertyName = "ImageRectOffset"; PropertyType = "Vector2"};
            ImageRectSize = {DefaultValue = "Vector2.new()"; Readonly = false; PropertyName = "ImageRectSize"; PropertyType = "Vector2"};
        };
        Creatable = true;
        BaseClassName = "GuiLabel";
        ClassName = "ImageLabel";
    };
    PointLight = {
        PropertyMap = {
            Range = {DefaultValue = "8"; Readonly = false; PropertyName = "Range"; PropertyType = "float"};
        };
        Creatable = true;
        BaseClassName = "Light";
        ClassName = "PointLight";
    };
    DoubleConstrainedValue = {
        PropertyMap = {
            ConstrainedValue = {DefaultValue = "0"; Readonly = false; PropertyName = "ConstrainedValue"; PropertyType = "double"};
            Value = {DefaultValue = "0"; Readonly = false; PropertyName = "Value"; PropertyType = "double"};
            MinValue = {DefaultValue = "0"; Readonly = false; PropertyName = "MinValue"; PropertyType = "double"};
            MaxValue = {DefaultValue = "1"; Readonly = false; PropertyName = "MaxValue"; PropertyType = "double"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "DoubleConstrainedValue";
    };
    RocketPropulsion = {
        PropertyMap = {
            CartoonFactor = {DefaultValue = "0.69999998807907"; Readonly = false; PropertyName = "CartoonFactor"; PropertyType = "float"};
            MaxTorque = {DefaultValue = "Vector3.new(400000, 400000, 0)"; Readonly = false; PropertyName = "MaxTorque"; PropertyType = "Vector3"};
            TurnP = {DefaultValue = "3000"; Readonly = false; PropertyName = "TurnP"; PropertyType = "float"};
            TurnD = {DefaultValue = "500"; Readonly = false; PropertyName = "TurnD"; PropertyType = "float"};
            ThrustD = {DefaultValue = "0.0010000000474975"; Readonly = false; PropertyName = "ThrustD"; PropertyType = "float"};
            MaxSpeed = {DefaultValue = "30"; Readonly = false; PropertyName = "MaxSpeed"; PropertyType = "float"};
            ThrustP = {DefaultValue = "5"; Readonly = false; PropertyName = "ThrustP"; PropertyType = "float"};
            Target = {DefaultValue = "nil"; Readonly = false; PropertyName = "Target"; PropertyType = "Object"};
            MaxThrust = {DefaultValue = "4000"; Readonly = false; PropertyName = "MaxThrust"; PropertyType = "float"};
            TargetRadius = {DefaultValue = "4"; Readonly = false; PropertyName = "TargetRadius"; PropertyType = "float"};
            TargetOffset = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "TargetOffset"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "BodyMover";
        ClassName = "RocketPropulsion";
    };
    ReflectionMetadataClass = {
        PropertyMap = {
            Insertable = {DefaultValue = "true"; Readonly = false; PropertyName = "Insertable"; PropertyType = "bool"};
            PreferredParent = {DefaultValue = "''"; Readonly = false; PropertyName = "PreferredParent"; PropertyType = "string"};
            ExplorerOrder = {DefaultValue = "-1"; Readonly = false; PropertyName = "ExplorerOrder"; PropertyType = "int"};
            ExplorerImageIndex = {DefaultValue = "0"; Readonly = false; PropertyName = "ExplorerImageIndex"; PropertyType = "int"};
        };
        Creatable = true;
        BaseClassName = "ReflectionMetadataItem";
        ClassName = "ReflectionMetadataClass";
    };
    ReflectionMetadataEvents = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ReflectionMetadataEvents";
    };
    ReplicatedFirst = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ReplicatedFirst";
    };
    SpotLight = {
        PropertyMap = {
            Angle = {DefaultValue = "90"; Readonly = false; PropertyName = "Angle"; PropertyType = "float"};
            Range = {DefaultValue = "16"; Readonly = false; PropertyName = "Range"; PropertyType = "float"};
            Face = {DefaultValue = "Enum.NormalId.Front"; Readonly = false; PropertyName = "Face"; PropertyType = "NormalId"};
        };
        Creatable = true;
        BaseClassName = "Light";
        ClassName = "SpotLight";
    };
    ButtonBindingWidget = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GuiItem";
        ClassName = "ButtonBindingWidget";
    };
    NegateOperation = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "PartOperation";
        ClassName = "NegateOperation";
    };
    Tool = {
        PropertyMap = {
            GripForward = {DefaultValue = "Vector3.new(-0, -0, -1)"; Readonly = false; PropertyName = "GripForward"; PropertyType = "Vector3"};
            ToolTip = {DefaultValue = "''"; Readonly = false; PropertyName = "ToolTip"; PropertyType = "string"};
            CanBeDropped = {DefaultValue = "true"; Readonly = false; PropertyName = "CanBeDropped"; PropertyType = "bool"};
            GripUp = {DefaultValue = "Vector3.new(0, 1, 0)"; Readonly = false; PropertyName = "GripUp"; PropertyType = "Vector3"};
            GripRight = {DefaultValue = "Vector3.new(1, 0, 0)"; Readonly = false; PropertyName = "GripRight"; PropertyType = "Vector3"};
            GripPos = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "GripPos"; PropertyType = "Vector3"};
            Enabled = {DefaultValue = "true"; Readonly = false; PropertyName = "Enabled"; PropertyType = "bool"};
            Grip = {DefaultValue = "CFrame.new()"; Readonly = false; PropertyName = "Grip"; PropertyType = "CoordinateFrame"};
        };
        Creatable = true;
        BaseClassName = "BackpackItem";
        ClassName = "Tool";
    };
    Texture = {
        PropertyMap = {
            StudsPerTileV = {DefaultValue = "2"; Readonly = false; PropertyName = "StudsPerTileV"; PropertyType = "float"};
            StudsPerTileU = {DefaultValue = "2"; Readonly = false; PropertyName = "StudsPerTileU"; PropertyType = "float"};
        };
        Creatable = true;
        BaseClassName = "Decal";
        ClassName = "Texture";
    };
    PhysicsSettings = {
        PropertyMap = {
            AreRegionsShown = {Readonly = false; PropertyName = "AreRegionsShown"; PropertyType = "bool"};
            AreAwakePartsHighlighted = {Readonly = false; PropertyName = "AreAwakePartsHighlighted"; PropertyType = "bool"};
            AreAnchorsShown = {Readonly = false; PropertyName = "AreAnchorsShown"; PropertyType = "bool"};
            AreWorldCoordsShown = {Readonly = false; PropertyName = "AreWorldCoordsShown"; PropertyType = "bool"};
            IsTreeShown = {Readonly = false; PropertyName = "IsTreeShown"; PropertyType = "bool"};
            IsReceiveAgeShown = {Readonly = false; PropertyName = "IsReceiveAgeShown"; PropertyType = "bool"};
            AreJointCoordinatesShown = {Readonly = false; PropertyName = "AreJointCoordinatesShown"; PropertyType = "bool"};
            AllowSleep = {Readonly = false; PropertyName = "AllowSleep"; PropertyType = "bool"};
            ArePartCoordsShown = {Readonly = false; PropertyName = "ArePartCoordsShown"; PropertyType = "bool"};
            AreOwnersShown = {Readonly = false; PropertyName = "AreOwnersShown"; PropertyType = "bool"};
            AreAssembliesShown = {Readonly = false; PropertyName = "AreAssembliesShown"; PropertyType = "bool"};
            AreContactPointsShown = {Readonly = false; PropertyName = "AreContactPointsShown"; PropertyType = "bool"};
            AreModelCoordsShown = {Readonly = false; PropertyName = "AreModelCoordsShown"; PropertyType = "bool"};
            AreUnalignedPartsShown = {Readonly = false; PropertyName = "AreUnalignedPartsShown"; PropertyType = "bool"};
            PhysicsEnvironmentalThrottle = {Readonly = false; PropertyName = "PhysicsEnvironmentalThrottle"; PropertyType = "EnviromentalPhysicsThrottle"};
            ThrottleAdjustTime = {Readonly = false; PropertyName = "ThrottleAdjustTime"; PropertyType = "double"};
            ParallelPhysics = {Readonly = false; PropertyName = "ParallelPhysics"; PropertyType = "bool"};
            AreMechanismsShown = {Readonly = false; PropertyName = "AreMechanismsShown"; PropertyType = "bool"};
            AreBodyTypesShown = {Readonly = false; PropertyName = "AreBodyTypesShown"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "PhysicsSettings";
    };
    Script = {
        PropertyMap = {
            Source = {PropertyType = "ProtectedString"; DefaultValue = "print 'Hello world!'\n"; Readonly = false; PropertyName = "Source"; 
                Security = "PluginSecurity"};
        };
        Creatable = true;
        BaseClassName = "BaseScript";
        ClassName = "Script";
    };
    Terrain = {
        PropertyMap = {
            MaxExtents = {Readonly = true; PropertyName = "MaxExtents"; PropertyType = "Region3int16"};
        };
        Creatable = false;
        BaseClassName = "BasePart";
        ClassName = "Terrain";
    };
    OrderedDataStore = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GlobalDataStore";
        ClassName = "OrderedDataStore";
    };
    ReflectionMetadataProperties = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ReflectionMetadataProperties";
    };
    PrismPart = {
        PropertyMap = {
            Sides = {Readonly = false; PropertyName = "Sides"; PropertyType = "PrismSides"};
        };
        Creatable = false;
        BaseClassName = "BasePart";
        ClassName = "PrismPart";
    };
    PVAdornment = {
        PropertyMap = {
            Adornee = {DefaultValue = "nil"; Readonly = false; PropertyName = "Adornee"; PropertyType = "Object"};
        };
        Creatable = false;
        BaseClassName = "GuiBase3d";
        ClassName = "PVAdornment";
    };
    TextBox = {
        PropertyMap = {
            MultiLine = {DefaultValue = "false"; Readonly = false; PropertyName = "MultiLine"; PropertyType = "bool"};
            FontSize = {DefaultValue = "Enum.FontSize.Size8"; Readonly = false; PropertyName = "FontSize"; PropertyType = "FontSize"};
            TextTransparency = {DefaultValue = "0"; Readonly = false; PropertyName = "TextTransparency"; PropertyType = "float"};
            TextStrokeTransparency = {DefaultValue = "1"; Readonly = false; PropertyName = "TextStrokeTransparency"; PropertyType = "float"};
            TextFits = {DefaultValue = "false"; Readonly = true; PropertyName = "TextFits"; PropertyType = "bool"};
            TextColor3 = {DefaultValue = "Color3.new(0.105882, 0.164706, 0.207843)"; Readonly = false; PropertyName = "TextColor3"; PropertyType = "Color3"};
            Text = {DefaultValue = "[[TextBox]]"; Readonly = false; PropertyName = "Text"; PropertyType = "string"};
            TextYAlignment = {DefaultValue = "Enum.TextYAlignment.Center"; Readonly = false; PropertyName = "TextYAlignment"; PropertyType = "TextYAlignment"};
            TextBounds = {DefaultValue = "Vector2.new()"; Readonly = true; PropertyName = "TextBounds"; PropertyType = "Vector2"};
            TextStrokeColor3 = {DefaultValue = "Color3.new()"; Readonly = false; PropertyName = "TextStrokeColor3"; PropertyType = "Color3"};
            Font = {DefaultValue = "Enum.Font.Legacy"; Readonly = false; PropertyName = "Font"; PropertyType = "Font"};
            TextWrapped = {DefaultValue = "false"; Readonly = false; PropertyName = "TextWrapped"; PropertyType = "bool"};
            TextXAlignment = {DefaultValue = "Enum.TextXAlignment.Center"; Readonly = false; PropertyName = "TextXAlignment"; PropertyType = "TextXAlignment"};
            TextWrap = {DefaultValue = "false"; Readonly = false; PropertyName = "TextWrap"; PropertyType = "bool"};
            ClearTextOnFocus = {DefaultValue = "true"; Readonly = false; PropertyName = "ClearTextOnFocus"; PropertyType = "bool"};
            TextScaled = {DefaultValue = "false"; Readonly = false; PropertyName = "TextScaled"; PropertyType = "bool"};
            TextColor = {DefaultValue = "BrickColor.new('Black')"; Readonly = false; PropertyName = "TextColor"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "GuiObject";
        ClassName = "TextBox";
    };
    LocalBackpack = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GuiItem";
        ClassName = "LocalBackpack";
    };
    KeyframeSequence = {
        PropertyMap = {
            Priority = {DefaultValue = "Enum.AnimationPriority.Action"; Readonly = false; PropertyName = "Priority"; PropertyType = "AnimationPriority"};
            Loop = {DefaultValue = "true"; Readonly = false; PropertyName = "Loop"; PropertyType = "bool"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "KeyframeSequence";
    };
    FunctionalTest = {
        PropertyMap = {
            Description = {DefaultValue = "[[?]]"; Readonly = false; PropertyName = "Description"; PropertyType = "string"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "FunctionalTest";
    };
    StockSound = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Sound";
        ClassName = "StockSound";
    };
    BillboardGui = {
        PropertyMap = {
            Enabled = {DefaultValue = "true"; Readonly = false; PropertyName = "Enabled"; PropertyType = "bool"};
            Active = {DefaultValue = "false"; Readonly = false; PropertyName = "Active"; PropertyType = "bool"};
            Adornee = {DefaultValue = "nil"; Readonly = false; PropertyName = "Adornee"; PropertyType = "Object"};
            ExtentsOffset = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "ExtentsOffset"; PropertyType = "Vector3"};
            PlayerToHideFrom = {DefaultValue = "nil"; Readonly = false; PropertyName = "PlayerToHideFrom"; PropertyType = "Object"};
            SizeOffset = {DefaultValue = "Vector2.new()"; Readonly = false; PropertyName = "SizeOffset"; PropertyType = "Vector2"};
            StudsOffset = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "StudsOffset"; PropertyType = "Vector3"};
            AlwaysOnTop = {DefaultValue = "false"; Readonly = false; PropertyName = "AlwaysOnTop"; PropertyType = "bool"};
            Size = {DefaultValue = "UDim2.new()"; Readonly = false; PropertyName = "Size"; PropertyType = "UDim2"};
        };
        Creatable = true;
        BaseClassName = "LayerCollector";
        ClassName = "BillboardGui";
    };
    Feature = {
        PropertyMap = {
            LeftRight = {DefaultValue = "Enum.LeftRight.Center"; Readonly = false; PropertyName = "LeftRight"; PropertyType = "LeftRight"};
            InOut = {DefaultValue = "Enum.InOut.Center"; Readonly = false; PropertyName = "InOut"; PropertyType = "InOut"};
            TopBottom = {DefaultValue = "Enum.TopBottom.Center"; Readonly = false; PropertyName = "TopBottom"; PropertyType = "TopBottom"};
            FaceId = {DefaultValue = "Enum.NormalId.Right"; Readonly = false; PropertyName = "FaceId"; PropertyType = "NormalId"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Feature";
    };
    BodyThrust = {
        PropertyMap = {
            location = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "location"; PropertyType = "Vector3"};
            force = {DefaultValue = "Vector3.new(0, 1, 0)"; Readonly = false; PropertyName = "force"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "BodyMover";
        ClassName = "BodyThrust";
    };
    ScriptInformationProvider = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "ScriptInformationProvider";
    };
    Team = {
        PropertyMap = {
            Score = {DefaultValue = "0"; Readonly = false; PropertyName = "Score"; PropertyType = "int"};
            AutoColorCharacters = {DefaultValue = "true"; Readonly = false; PropertyName = "AutoColorCharacters"; PropertyType = "bool"};
            AutoAssignable = {DefaultValue = "true"; Readonly = false; PropertyName = "AutoAssignable"; PropertyType = "bool"};
            TeamColor = {DefaultValue = "BrickColor.new('White')"; Readonly = false; PropertyName = "TeamColor"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Team";
    };
    GuiButton = {
        PropertyMap = {
            Modal = {DefaultValue = "false"; Readonly = false; PropertyName = "Modal"; PropertyType = "bool"};
            Selected = {DefaultValue = "false"; Readonly = false; PropertyName = "Selected"; PropertyType = "bool"};
            Style = {DefaultValue = "Enum.ButtonStyle.Custom"; Readonly = false; PropertyName = "Style"; PropertyType = "ButtonStyle"};
            AutoButtonColor = {DefaultValue = "true"; Readonly = false; PropertyName = "AutoButtonColor"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "GuiObject";
        ClassName = "GuiButton";
    };
    NetworkPeer = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "NetworkPeer";
    };
    AdvancedDragger = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "AdvancedDragger";
    };
    ReflectionMetadata = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ReflectionMetadata";
    };
    GuiBase = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "GuiBase";
    };
    BodyGyro = {
        PropertyMap = {
            P = {DefaultValue = "3000"; Readonly = false; PropertyName = "P"; PropertyType = "float"};
            D = {DefaultValue = "500"; Readonly = false; PropertyName = "D"; PropertyType = "float"};
            cframe = {DefaultValue = "CFrame.new()"; Readonly = false; PropertyName = "cframe"; PropertyType = "CoordinateFrame"};
            maxTorque = {DefaultValue = "Vector3.new(400000, 0, 400000)"; Readonly = false; PropertyName = "maxTorque"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "BodyMover";
        ClassName = "BodyGyro";
    };
    Path = {
        PropertyMap = {
            Status = {Readonly = true; PropertyName = "Status"; PropertyType = "PathStatus"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Path";
    };
    GuiLabel = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GuiObject";
        ClassName = "GuiLabel";
    };
    SpecialMesh = {
        PropertyMap = {
            MeshType = {DefaultValue = "Enum.MeshType.Head"; Readonly = false; PropertyName = "MeshType"; PropertyType = "MeshType"};
        };
        Creatable = true;
        BaseClassName = "FileMesh";
        ClassName = "SpecialMesh";
    };
    InstancePacketCache = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "InstancePacketCache";
    };
    FileMesh = {
        PropertyMap = {
            TextureId = {DefaultValue = "''"; Readonly = false; PropertyName = "TextureId"; PropertyType = "Content"};
            MeshId = {DefaultValue = "''"; Readonly = false; PropertyName = "MeshId"; PropertyType = "Content"};
        };
        Creatable = true;
        BaseClassName = "DataModelMesh";
        ClassName = "FileMesh";
    };
    LuaSettings = {
        PropertyMap = {
            GcStepMul = {Readonly = false; PropertyName = "GcStepMul"; PropertyType = "int"};
            AreScriptStartsReported = {Readonly = false; PropertyName = "AreScriptStartsReported"; PropertyType = "bool"};
            DefaultWaitTime = {Readonly = false; PropertyName = "DefaultWaitTime"; PropertyType = "double"};
            GcLimit = {Readonly = false; PropertyName = "GcLimit"; PropertyType = "int"};
            WaitingThreadsBudget = {Readonly = false; PropertyName = "WaitingThreadsBudget"; PropertyType = "float"};
            GcFrequency = {Readonly = false; PropertyName = "GcFrequency"; PropertyType = "int"};
            GcPause = {Readonly = false; PropertyName = "GcPause"; PropertyType = "int"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "LuaSettings";
    };
    FlagStand = {
        PropertyMap = {
            TeamColor = {DefaultValue = "BrickColor.new('Medium stone grey')"; Readonly = false; PropertyName = "TeamColor"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "Part";
        ClassName = "FlagStand";
    };
    GlobalDataStore = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "GlobalDataStore";
    };
    SkateboardPlatform = {
        PropertyMap = {
            Throttle = {DefaultValue = "0"; Readonly = false; PropertyName = "Throttle"; PropertyType = "int"};
            Controller = {DefaultValue = "nil"; Readonly = true; PropertyName = "Controller"; PropertyType = "Object"};
            StickyWheels = {DefaultValue = "true"; Readonly = false; PropertyName = "StickyWheels"; PropertyType = "bool"};
            ControllingHumanoid = {DefaultValue = "nil"; Readonly = true; PropertyName = "ControllingHumanoid"; PropertyType = "Object"};
            Steer = {DefaultValue = "0"; Readonly = false; PropertyName = "Steer"; PropertyType = "int"};
        };
        Creatable = true;
        BaseClassName = "Part";
        ClassName = "SkateboardPlatform";
    };
    DebuggerWatch = {
        PropertyMap = {
            Expression = {DefaultValue = "''"; Readonly = false; PropertyName = "Expression"; PropertyType = "string"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "DebuggerWatch";
    };
    DataModelMesh = {
        PropertyMap = {
            Scale = {DefaultValue = "Vector3.new(1, 1, 1)"; Readonly = false; PropertyName = "Scale"; PropertyType = "Vector3"};
            VertexColor = {DefaultValue = "Vector3.new(1, 1, 1)"; Readonly = false; PropertyName = "VertexColor"; PropertyType = "Vector3"};
            Offset = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "Offset"; PropertyType = "Vector3"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "DataModelMesh";
    };
    SkateboardController = {
        PropertyMap = {
            Throttle = {DefaultValue = "4.3987755312937e+021"; Readonly = true; PropertyName = "Throttle"; PropertyType = "float"};
            Steer = {DefaultValue = "1.8523600588218e+028"; Readonly = true; PropertyName = "Steer"; PropertyType = "float"};
        };
        Creatable = true;
        BaseClassName = "Controller";
        ClassName = "SkateboardController";
    };
    TextLabel = {
        PropertyMap = {
            FontSize = {DefaultValue = "Enum.FontSize.Size8"; Readonly = false; PropertyName = "FontSize"; PropertyType = "FontSize"};
            TextFits = {DefaultValue = "false"; Readonly = true; PropertyName = "TextFits"; PropertyType = "bool"};
            TextColor3 = {DefaultValue = "Color3.new(0.105882, 0.164706, 0.207843)"; Readonly = false; PropertyName = "TextColor3"; PropertyType = "Color3"};
            TextStrokeColor3 = {DefaultValue = "Color3.new()"; Readonly = false; PropertyName = "TextStrokeColor3"; PropertyType = "Color3"};
            Text = {DefaultValue = "[[Label]]"; Readonly = false; PropertyName = "Text"; PropertyType = "string"};
            TextBounds = {DefaultValue = "Vector2.new()"; Readonly = true; PropertyName = "TextBounds"; PropertyType = "Vector2"};
            TextStrokeTransparency = {DefaultValue = "1"; Readonly = false; PropertyName = "TextStrokeTransparency"; PropertyType = "float"};
            TextWrap = {DefaultValue = "false"; Readonly = false; PropertyName = "TextWrap"; PropertyType = "bool"};
            Font = {DefaultValue = "Enum.Font.Legacy"; Readonly = false; PropertyName = "Font"; PropertyType = "Font"};
            TextWrapped = {DefaultValue = "false"; Readonly = false; PropertyName = "TextWrapped"; PropertyType = "bool"};
            TextXAlignment = {DefaultValue = "Enum.TextXAlignment.Center"; Readonly = false; PropertyName = "TextXAlignment"; PropertyType = "TextXAlignment"};
            TextTransparency = {DefaultValue = "0"; Readonly = false; PropertyName = "TextTransparency"; PropertyType = "float"};
            TextYAlignment = {DefaultValue = "Enum.TextYAlignment.Center"; Readonly = false; PropertyName = "TextYAlignment"; PropertyType = "TextYAlignment"};
            TextScaled = {DefaultValue = "false"; Readonly = false; PropertyName = "TextScaled"; PropertyType = "bool"};
            TextColor = {DefaultValue = "BrickColor.new('Black')"; Readonly = false; PropertyName = "TextColor"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "GuiLabel";
        ClassName = "TextLabel";
    };
    Mouse = {
        PropertyMap = {
            Origin = {Readonly = true; PropertyName = "Origin"; PropertyType = "CoordinateFrame"};
            target = {Readonly = true; PropertyName = "target"; PropertyType = "Object"};
            hit = {Readonly = true; PropertyName = "hit"; PropertyType = "CoordinateFrame"};
            Y = {Readonly = true; PropertyName = "Y"; PropertyType = "int"};
            X = {Readonly = true; PropertyName = "X"; PropertyType = "int"};
            ViewSizeX = {Readonly = true; PropertyName = "ViewSizeX"; PropertyType = "int"};
            TargetFilter = {Readonly = false; PropertyName = "TargetFilter"; PropertyType = "Object"};
            ViewSizeY = {Readonly = true; PropertyName = "ViewSizeY"; PropertyType = "int"};
            Hit = {Readonly = true; PropertyName = "Hit"; PropertyType = "CoordinateFrame"};
            Target = {Readonly = true; PropertyName = "Target"; PropertyType = "Object"};
            UnitRay = {Readonly = true; PropertyName = "UnitRay"; PropertyType = "Ray"};
            Icon = {Readonly = false; PropertyName = "Icon"; PropertyType = "Content"};
            TargetSurface = {Readonly = true; PropertyName = "TargetSurface"; PropertyType = "NormalId"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Mouse";
    };
    Decal = {
        PropertyMap = {
            Shiny = {DefaultValue = "20"; Readonly = false; PropertyName = "Shiny"; PropertyType = "float"};
            Transparency = {DefaultValue = "0"; Readonly = false; PropertyName = "Transparency"; PropertyType = "float"};
            Specular = {DefaultValue = "0"; Readonly = false; PropertyName = "Specular"; PropertyType = "float"};
            Texture = {DefaultValue = "''"; Readonly = false; PropertyName = "Texture"; PropertyType = "Content"};
        };
        Creatable = true;
        BaseClassName = "FaceInstance";
        ClassName = "Decal";
    };
    ReflectionMetadataCallbacks = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ReflectionMetadataCallbacks";
    };
    ModuleScript = {
        PropertyMap = {
            Source = {PropertyType = "ProtectedString"; DefaultValue = "''"; Readonly = false; PropertyName = "Source"; Security = "PluginSecurity"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ModuleScript";
    };
    Lighting = {
        PropertyMap = {
            ColorShift_Bottom = {Readonly = false; PropertyName = "ColorShift_Bottom"; PropertyType = "Color3"};
            FogColor = {Readonly = false; PropertyName = "FogColor"; PropertyType = "Color3"};
            FogEnd = {Readonly = false; PropertyName = "FogEnd"; PropertyType = "float"};
            GlobalShadows = {Readonly = false; PropertyName = "GlobalShadows"; PropertyType = "bool"};
            TimeOfDay = {Readonly = false; PropertyName = "TimeOfDay"; PropertyType = "string"};
            Outlines = {Readonly = false; PropertyName = "Outlines"; PropertyType = "bool"};
            FogStart = {Readonly = false; PropertyName = "FogStart"; PropertyType = "float"};
            Ambient = {Readonly = false; PropertyName = "Ambient"; PropertyType = "Color3"};
            OutdoorAmbient = {Readonly = false; PropertyName = "OutdoorAmbient"; PropertyType = "Color3"};
            ShadowColor = {Readonly = false; PropertyName = "ShadowColor"; PropertyType = "Color3"};
            Brightness = {Readonly = false; PropertyName = "Brightness"; PropertyType = "float"};
            ColorShift_Top = {Readonly = false; PropertyName = "ColorShift_Top"; PropertyType = "Color3"};
            GeographicLatitude = {Readonly = false; PropertyName = "GeographicLatitude"; PropertyType = "float"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Lighting";
    };
    RenderSettings = {
        PropertyMap = {
            DebugDisableInterpolation = {Readonly = false; PropertyName = "DebugDisableInterpolation"; PropertyType = "bool"};
            UsesPaintMessage = {Readonly = false; PropertyName = "UsesPaintMessage"; PropertyType = "bool"};
            FrameRateManager = {Readonly = false; PropertyName = "FrameRateManager"; PropertyType = "FramerateManagerMode"};
            Resolution = {Readonly = false; PropertyName = "Resolution"; PropertyType = "Resolution"};
            QualityLevel = {Readonly = false; PropertyName = "QualityLevel"; PropertyType = "QualityLevel"};
            ReloadAssets = {Readonly = false; PropertyName = "ReloadAssets"; PropertyType = "bool"};
            Antialiasing = {Readonly = false; PropertyName = "Antialiasing"; PropertyType = "Antialiasing"};
            IsAggregationShown = {Readonly = false; PropertyName = "IsAggregationShown"; PropertyType = "bool"};
            TextureCacheSize = {Readonly = false; PropertyName = "TextureCacheSize"; PropertyType = "int"};
            AASamples = {Readonly = false; PropertyName = "AASamples"; PropertyType = "AASamples"};
            AutoFRMLevel = {Readonly = false; PropertyName = "AutoFRMLevel"; PropertyType = "int"};
            EnableFRM = {Readonly = false; PropertyName = "EnableFRM"; PropertyType = "bool"};
            graphicsMode = {Readonly = false; PropertyName = "graphicsMode"; PropertyType = "GraphicsMode"};
            ShowInterpolationpath = {Readonly = false; PropertyName = "ShowInterpolationpath"; PropertyType = "bool"};
            EagerBulkExecution = {Readonly = false; PropertyName = "EagerBulkExecution"; PropertyType = "bool"};
            ShowBoundingBoxes = {Readonly = false; PropertyName = "ShowBoundingBoxes"; PropertyType = "bool"};
            IsSynchronizedWithPhysics = {Readonly = false; PropertyName = "IsSynchronizedWithPhysics"; PropertyType = "bool"};
            MeshCacheSize = {Readonly = false; PropertyName = "MeshCacheSize"; PropertyType = "int"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "RenderSettings";
    };
    ObjectValue = {
        PropertyMap = {
            Value = {DefaultValue = "nil"; Readonly = false; PropertyName = "Value"; PropertyType = "Object"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ObjectValue";
    };
    CharacterMesh = {
        PropertyMap = {
            OverlayTextureId = {DefaultValue = "0"; Readonly = false; PropertyName = "OverlayTextureId"; PropertyType = "int"};
            MeshId = {DefaultValue = "0"; Readonly = false; PropertyName = "MeshId"; PropertyType = "int"};
            BaseTextureId = {DefaultValue = "0"; Readonly = false; PropertyName = "BaseTextureId"; PropertyType = "int"};
            BodyPart = {DefaultValue = "Enum.BodyPart.Head"; Readonly = false; PropertyName = "BodyPart"; PropertyType = "BodyPart"};
        };
        Creatable = true;
        BaseClassName = "CharacterAppearance";
        ClassName = "CharacterMesh";
    };
    GameSettings = {
        PropertyMap = {
            HardwareMouse = {Readonly = false; PropertyName = "HardwareMouse"; PropertyType = "bool"};
            VideoCaptureEnabled = {Readonly = false; PropertyName = "VideoCaptureEnabled"; PropertyType = "bool"};
            VideoQuality = {Readonly = false; PropertyName = "VideoQuality"; PropertyType = "VideoQualitySettings"};
            SoftwareSound = {Readonly = false; PropertyName = "SoftwareSound"; PropertyType = "bool"};
            ChatScrollLength = {Readonly = false; PropertyName = "ChatScrollLength"; PropertyType = "int"};
            SoundEnabled = {Readonly = false; PropertyName = "SoundEnabled"; PropertyType = "bool"};
            CollisionSoundVolume = {Readonly = false; PropertyName = "CollisionSoundVolume"; PropertyType = "float"};
            MaxCollisionSounds = {Readonly = false; PropertyName = "MaxCollisionSounds"; PropertyType = "int"};
            ReportAbuseChatHistory = {Readonly = false; PropertyName = "ReportAbuseChatHistory"; PropertyType = "int"};
            ChatHistory = {Readonly = false; PropertyName = "ChatHistory"; PropertyType = "int"};
            BubbleChatLifetime = {Readonly = false; PropertyName = "BubbleChatLifetime"; PropertyType = "float"};
            BubbleChatMaxBubbles = {Readonly = false; PropertyName = "BubbleChatMaxBubbles"; PropertyType = "int"};
            CollisionSoundEnabled = {Readonly = false; PropertyName = "CollisionSoundEnabled"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "GameSettings";
    };
    TotalCountTimeIntervalItem = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "StatsItem";
        ClassName = "TotalCountTimeIntervalItem";
    };
    HandlesBase = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "PartAdornment";
        ClassName = "HandlesBase";
    };
    FaceInstance = {
        PropertyMap = {
            Face = {DefaultValue = "Enum.NormalId.Front"; Readonly = false; PropertyName = "Face"; PropertyType = "NormalId"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "FaceInstance";
    };
    Toolbar = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Toolbar";
    };
    BodyColors = {
        PropertyMap = {
            HeadColor = {DefaultValue = "BrickColor.new('Cool yellow')"; Readonly = false; PropertyName = "HeadColor"; PropertyType = "BrickColor"};
            TorsoColor = {DefaultValue = "BrickColor.new('Dark green')"; Readonly = false; PropertyName = "TorsoColor"; PropertyType = "BrickColor"};
            LeftArmColor = {DefaultValue = "BrickColor.new('Cool yellow')"; Readonly = false; PropertyName = "LeftArmColor"; PropertyType = "BrickColor"};
            RightLegColor = {DefaultValue = "BrickColor.new('Bright blue')"; Readonly = false; PropertyName = "RightLegColor"; PropertyType = "BrickColor"};
            RightArmColor = {DefaultValue = "BrickColor.new('Cool yellow')"; Readonly = false; PropertyName = "RightArmColor"; PropertyType = "BrickColor"};
            LeftLegColor = {DefaultValue = "BrickColor.new('Bright blue')"; Readonly = false; PropertyName = "LeftLegColor"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "CharacterAppearance";
        ClassName = "BodyColors";
    };
    NotificationBox = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "GuiObject";
        ClassName = "NotificationBox";
    };
    PVInstance = {
        PropertyMap = {
            CoordinateFrame = {Writeonly = true; Readonly = false; PropertyName = "CoordinateFrame"; PropertyType = "CoordinateFrame"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "PVInstance";
    };
    SelectionBox = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "PVAdornment";
        ClassName = "SelectionBox";
    };
    VehicleSeat = {
        PropertyMap = {
            TurnSpeed = {DefaultValue = "1"; Readonly = false; PropertyName = "TurnSpeed"; PropertyType = "float"};
            Throttle = {DefaultValue = "0"; Readonly = false; PropertyName = "Throttle"; PropertyType = "int"};
            Disabled = {DefaultValue = "false"; Readonly = false; PropertyName = "Disabled"; PropertyType = "bool"};
            MaxSpeed = {DefaultValue = "25"; Readonly = false; PropertyName = "MaxSpeed"; PropertyType = "float"};
            Steer = {DefaultValue = "0"; Readonly = false; PropertyName = "Steer"; PropertyType = "int"};
            Torque = {DefaultValue = "10"; Readonly = false; PropertyName = "Torque"; PropertyType = "float"};
            AreHingesDetected = {DefaultValue = "0"; Readonly = true; PropertyName = "AreHingesDetected"; PropertyType = "int"};
            HeadsUpDisplay = {DefaultValue = "true"; Readonly = false; PropertyName = "HeadsUpDisplay"; PropertyType = "bool"};
        };
        Creatable = true;
        BaseClassName = "BasePart";
        ClassName = "VehicleSeat";
    };
    DebugSettings = {
        PropertyMap = {
            InstanceCountLimit = {Readonly = false; PropertyName = "InstanceCountLimit"; PropertyType = "int"};
            OsPlatform = {Readonly = true; PropertyName = "OsPlatform"; PropertyType = "string"};
            TotalProcessorTime = {Readonly = true; PropertyName = "TotalProcessorTime"; PropertyType = "int"};
            CdnFailureCount = {Readonly = true; PropertyName = "CdnFailureCount"; PropertyType = "int"};
            AvailablePhysicalMemory = {Readonly = true; PropertyName = "AvailablePhysicalMemory"; PropertyType = "int"};
            PrivateWorkingSetBytes = {Readonly = true; PropertyName = "PrivateWorkingSetBytes"; PropertyType = "int"};
            DataModel = {Readonly = true; PropertyName = "DataModel"; PropertyType = "int"};
            OsVer = {Readonly = true; PropertyName = "OsVer"; PropertyType = "string"};
            CPU = {Readonly = true; PropertyName = "CPU"; PropertyType = "string"};
            IsProfilingEnabled = {Readonly = false; PropertyName = "IsProfilingEnabled"; PropertyType = "bool"};
            BlockMeshSize = {Readonly = true; PropertyName = "BlockMeshSize"; PropertyType = "int"};
            NameDatabaseBytes = {Readonly = true; PropertyName = "NameDatabaseBytes"; PropertyType = "int"};
            NameDatabaseSize = {Readonly = true; PropertyName = "NameDatabaseSize"; PropertyType = "int"};
            CpuSpeed = {Readonly = true; PropertyName = "CpuSpeed"; PropertyType = "int"};
            RobloxRespoceTime = {Readonly = true; PropertyName = "RobloxRespoceTime"; PropertyType = "double"};
            VirtualBytes = {Readonly = true; PropertyName = "VirtualBytes"; PropertyType = "int"};
            VideoMemory = {Readonly = true; PropertyName = "VideoMemory"; PropertyType = "int"};
            TickCountPreciseOverride = {Readonly = false; PropertyName = "TickCountPreciseOverride"; PropertyType = "TickCountSampleMethod"};
            CdnResponceTime = {Readonly = true; PropertyName = "CdnResponceTime"; PropertyType = "double"};
            CpuCount = {Readonly = true; PropertyName = "CpuCount"; PropertyType = "int"};
            VertexShaderModel = {Readonly = true; PropertyName = "VertexShaderModel"; PropertyType = "float"};
            SystemProductName = {Readonly = true; PropertyName = "SystemProductName"; PropertyType = "string"};
            RobloxFailureCount = {Readonly = true; PropertyName = "RobloxFailureCount"; PropertyType = "int"};
            IsFmodProfilingEnabled = {Readonly = false; PropertyName = "IsFmodProfilingEnabled"; PropertyType = "bool"};
            IsScriptStackTracingEnabled = {Readonly = false; PropertyName = "IsScriptStackTracingEnabled"; PropertyType = "bool"};
            PlayerCount = {Readonly = true; PropertyName = "PlayerCount"; PropertyType = "int"};
            SIMD = {Readonly = true; PropertyName = "SIMD"; PropertyType = "string"};
            LuaRamLimit = {Readonly = false; PropertyName = "LuaRamLimit"; PropertyType = "int"};
            RobloxProductName = {Readonly = true; PropertyName = "RobloxProductName"; PropertyType = "string"};
            RobloxSuccessCount = {Readonly = true; PropertyName = "RobloxSuccessCount"; PropertyType = "int"};
            Resolution = {Readonly = true; PropertyName = "Resolution"; PropertyType = "string"};
            RobloxVersion = {Readonly = true; PropertyName = "RobloxVersion"; PropertyType = "string"};
            TotalPhysicalMemory = {Readonly = true; PropertyName = "TotalPhysicalMemory"; PropertyType = "int"};
            ReportSoundWarnings = {Readonly = false; PropertyName = "ReportSoundWarnings"; PropertyType = "bool"};
            PageFileBytes = {Readonly = true; PropertyName = "PageFileBytes"; PropertyType = "int"};
            ReportExtendedMachineConfiguration = {Readonly = false; PropertyName = "ReportExtendedMachineConfiguration"; PropertyType = "bool"};
            OsIs64Bit = {Readonly = true; PropertyName = "OsIs64Bit"; PropertyType = "bool"};
            ErrorReporting = {Readonly = false; PropertyName = "ErrorReporting"; PropertyType = "ErrorReporting"};
            EnforceInstanceCountLimit = {Readonly = false; PropertyName = "EnforceInstanceCountLimit"; PropertyType = "bool"};
            RAM = {Readonly = true; PropertyName = "RAM"; PropertyType = "int"};
            ProfilingWindow = {Readonly = false; PropertyName = "ProfilingWindow"; PropertyType = "double"};
            PageFaultsPerSecond = {Readonly = true; PropertyName = "PageFaultsPerSecond"; PropertyType = "int"};
            ElapsedTime = {Readonly = true; PropertyName = "ElapsedTime"; PropertyType = "double"};
            OsPlatformId = {Readonly = true; PropertyName = "OsPlatformId"; PropertyType = "int"};
            ProcessorTime = {Readonly = true; PropertyName = "ProcessorTime"; PropertyType = "int"};
            InstanceCount = {Readonly = true; PropertyName = "InstanceCount"; PropertyType = "int"};
            ProcessCores = {Readonly = true; PropertyName = "ProcessCores"; PropertyType = "double"};
            PrivateBytes = {Readonly = true; PropertyName = "PrivateBytes"; PropertyType = "int"};
            AltCdnSuccessCount = {Readonly = true; PropertyName = "AltCdnSuccessCount"; PropertyType = "int"};
            AltCdnFailureCount = {Readonly = true; PropertyName = "AltCdnFailureCount"; PropertyType = "int"};
            LastCdnFailureTimeSpan = {Readonly = true; PropertyName = "LastCdnFailureTimeSpan"; PropertyType = "double"};
            CdnSuccessCount = {Readonly = true; PropertyName = "CdnSuccessCount"; PropertyType = "int"};
            JobCount = {Readonly = true; PropertyName = "JobCount"; PropertyType = "int"};
            PixelShaderModel = {Readonly = true; PropertyName = "PixelShaderModel"; PropertyType = "float"};
            GfxCard = {Readonly = true; PropertyName = "GfxCard"; PropertyType = "string"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "DebugSettings";
    };
    TextureContentProvider = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "CacheableContentProvider";
        ClassName = "TextureContentProvider";
    };
    IntValue = {
        PropertyMap = {
            Value = {DefaultValue = "0"; Readonly = false; PropertyName = "Value"; PropertyType = "int"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "IntValue";
    };
    FloorWire = {
        PropertyMap = {
            CycleOffset = {DefaultValue = "0"; Readonly = false; PropertyName = "CycleOffset"; PropertyType = "float"};
            WireRadius = {DefaultValue = "0.0625"; Readonly = false; PropertyName = "WireRadius"; PropertyType = "float"};
            TextureSize = {DefaultValue = "Vector2.new(1, 1)"; Readonly = false; PropertyName = "TextureSize"; PropertyType = "Vector2"};
            From = {DefaultValue = "nil"; Readonly = false; PropertyName = "From"; PropertyType = "Object"};
            To = {DefaultValue = "nil"; Readonly = false; PropertyName = "To"; PropertyType = "Object"};
            Velocity = {DefaultValue = "2"; Readonly = false; PropertyName = "Velocity"; PropertyType = "float"};
            StudsBetweenTextures = {DefaultValue = "4"; Readonly = false; PropertyName = "StudsBetweenTextures"; PropertyType = "float"};
            Texture = {DefaultValue = "''"; Readonly = false; PropertyName = "Texture"; PropertyType = "Content"};
        };
        Creatable = true;
        BaseClassName = "GuiBase3d";
        ClassName = "FloorWire";
    };
    GuiRoot = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GuiItem";
        ClassName = "GuiRoot";
    };
    Controller = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Controller";
    };
    BinaryStringValue = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "BinaryStringValue";
    };
    Glue = {
        PropertyMap = {
            F0 = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "F0"; PropertyType = "Vector3"};
            F1 = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "F1"; PropertyType = "Vector3"};
            F2 = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "F2"; PropertyType = "Vector3"};
            F3 = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "F3"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "JointInstance";
        ClassName = "Glue";
    };
    LayerCollector = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GuiBase2d";
        ClassName = "LayerCollector";
    };
    GlobalSettings = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GenericSettings";
        ClassName = "GlobalSettings";
    };
    Geometry = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Geometry";
    };
    ManualWeld = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "ManualSurfaceJointInstance";
        ClassName = "ManualWeld";
    };
    GuiObject = {
        PropertyMap = {
            Draggable = {DefaultValue = "false"; Readonly = false; PropertyName = "Draggable"; PropertyType = "bool"};
            BorderSizePixel = {DefaultValue = "1"; Readonly = false; PropertyName = "BorderSizePixel"; PropertyType = "int"};
            Visible = {DefaultValue = "true"; Readonly = false; PropertyName = "Visible"; PropertyType = "bool"};
            Active = {DefaultValue = "true"; Readonly = false; PropertyName = "Active"; PropertyType = "bool"};
            BorderColor3 = {DefaultValue = "Color3.new(0.105882, 0.164706, 0.207843)"; Readonly = false; PropertyName = "BorderColor3"; 
                PropertyType = "Color3"};
            Position = {DefaultValue = "UDim2.new()"; Readonly = false; PropertyName = "Position"; PropertyType = "UDim2"};
            ClipsDescendants = {DefaultValue = "false"; Readonly = false; PropertyName = "ClipsDescendants"; PropertyType = "bool"};
            Size = {DefaultValue = "UDim2.new()"; Readonly = false; PropertyName = "Size"; PropertyType = "UDim2"};
            Rotation = {DefaultValue = "0"; Readonly = false; PropertyName = "Rotation"; PropertyType = "float"};
            Transparency = {DefaultValue = "0"; Readonly = false; PropertyName = "Transparency"; PropertyType = "float"};
            BackgroundTransparency = {DefaultValue = "0"; Readonly = false; PropertyName = "BackgroundTransparency"; PropertyType = "float"};
            BorderColor = {DefaultValue = "BrickColor.new('Black')"; Readonly = false; PropertyName = "BorderColor"; PropertyType = "BrickColor"};
            SizeConstraint = {DefaultValue = "Enum.SizeConstraint.RelativeXY"; Readonly = false; PropertyName = "SizeConstraint"; 
                PropertyType = "SizeConstraint"};
            ZIndex = {DefaultValue = "1"; Readonly = false; PropertyName = "ZIndex"; PropertyType = "int"};
            BackgroundColor = {DefaultValue = "BrickColor.new('Medium stone grey')"; Readonly = false; PropertyName = "BackgroundColor"; 
                PropertyType = "BrickColor"};
            BackgroundColor3 = {DefaultValue = "Color3.new(0.639216, 0.635294, 0.647059)"; Readonly = false; PropertyName = "BackgroundColor3"; 
                PropertyType = "Color3"};
        };
        Creatable = false;
        BaseClassName = "GuiBase2d";
        ClassName = "GuiObject";
    };
    DebuggerBreakpoint = {
        PropertyMap = {
            IsEnabled = {Readonly = false; PropertyName = "IsEnabled"; PropertyType = "bool"};
            Line = {Readonly = true; PropertyName = "Line"; PropertyType = "int"};
            Condition = {Readonly = false; PropertyName = "Condition"; PropertyType = "string"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "DebuggerBreakpoint";
    };
    Status = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Model";
        ClassName = "Status";
    };
    Pose = {
        PropertyMap = {
            MaskWeight = {DefaultValue = "0"; Readonly = false; PropertyName = "MaskWeight"; PropertyType = "float"};
            CFrame = {DefaultValue = "CFrame.new()"; Readonly = false; PropertyName = "CFrame"; PropertyType = "CoordinateFrame"};
            Weight = {DefaultValue = "1"; Readonly = false; PropertyName = "Weight"; PropertyType = "float"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Pose";
    };
    PlayerMouse = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Mouse";
        ClassName = "PlayerMouse";
    };
    Hat = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Accoutrement";
        ClassName = "Hat";
    };
    VirtualUser = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "VirtualUser";
    };
    Message = {
        PropertyMap = {
            Text = {DefaultValue = "''"; Readonly = false; PropertyName = "Text"; PropertyType = "string"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Message";
    };
    Player = {
        PropertyMap = {
            DataComplexity = {Readonly = true; PropertyName = "DataComplexity"; PropertyType = "int"};
            CameraMode = {Readonly = false; PropertyName = "CameraMode"; PropertyType = "CameraMode"};
            CameraMinZoomDistance = {Readonly = false; PropertyName = "CameraMinZoomDistance"; PropertyType = "float"};
            userId = {Readonly = false; PropertyName = "userId"; PropertyType = "int"};
            DataComplexityLimit = {Security = "LocalUserSecurity"; Readonly = false; PropertyName = "DataComplexityLimit"; PropertyType = "int"};
            HasBuildTools = {Security = "RobloxScriptSecurity"; Readonly = false; PropertyName = "HasBuildTools"; PropertyType = "bool"};
            Character = {Readonly = false; PropertyName = "Character"; PropertyType = "Object"};
            CanLoadCharacterAppearance = {Readonly = false; PropertyName = "CanLoadCharacterAppearance"; PropertyType = "bool"};
            NameDisplayDistance = {Readonly = false; PropertyName = "NameDisplayDistance"; PropertyType = "float"};
            DataReady = {Readonly = true; PropertyName = "DataReady"; PropertyType = "bool"};
            TeamColor = {Readonly = false; PropertyName = "TeamColor"; PropertyType = "BrickColor"};
            CharacterAppearance = {Readonly = false; PropertyName = "CharacterAppearance"; PropertyType = "string"};
            ChatMode = {Security = "RobloxScriptSecurity"; Readonly = true; PropertyName = "ChatMode"; PropertyType = "ChatMode"};
            SimulationRadius = {Security = "LocalUserSecurity"; Readonly = false; PropertyName = "SimulationRadius"; PropertyType = "float"};
            PersonalServerRank = {Security = "RobloxScriptSecurity"; Readonly = false; PropertyName = "PersonalServerRank"; PropertyType = "int"};
            ClanTag = {Readonly = false; PropertyName = "ClanTag"; PropertyType = "string"};
            Guest = {Security = "RobloxScriptSecurity"; Readonly = true; PropertyName = "Guest"; PropertyType = "bool"};
            MembershipType = {Readonly = true; PropertyName = "MembershipType"; PropertyType = "MembershipType"};
            Neutral = {Readonly = false; PropertyName = "Neutral"; PropertyType = "bool"};
            AccountAge = {Readonly = true; PropertyName = "AccountAge"; PropertyType = "int"};
            MaximumSimulationRadius = {Security = "LocalUserSecurity"; Readonly = false; PropertyName = "MaximumSimulationRadius"; PropertyType = "float"};
            HealthDisplayDistance = {Readonly = false; PropertyName = "HealthDisplayDistance"; PropertyType = "float"};
            AppearanceDidLoad = {Security = "RobloxScriptSecurity"; Readonly = true; PropertyName = "AppearanceDidLoad"; PropertyType = "bool"};
            CameraMaxZoomDistance = {Readonly = false; PropertyName = "CameraMaxZoomDistance"; PropertyType = "float"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Player";
    };
    ContentProvider = {
        PropertyMap = {
            RequestQueueSize = {Readonly = true; PropertyName = "RequestQueueSize"; PropertyType = "int"};
            BaseUrl = {Readonly = true; PropertyName = "BaseUrl"; PropertyType = "string"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "ContentProvider";
    };
    ScrollingFrame = {
        PropertyMap = {
            BottomImage = {DefaultValue = "[[rbxasset://textures/blackBkg_square.png]]"; Readonly = false; PropertyName = "BottomImage"; 
                PropertyType = "Content"};
            MidImage = {DefaultValue = "[[rbxasset://textures/blackBkg_square.png]]"; Readonly = false; PropertyName = "MidImage"; PropertyType = "Content"};
            TopImage = {DefaultValue = "[[rbxasset://textures/blackBkg_square.png]]"; Readonly = false; PropertyName = "TopImage"; PropertyType = "Content"};
            ScrollBarThickness = {DefaultValue = "12"; Readonly = false; PropertyName = "ScrollBarThickness"; PropertyType = "int"};
            ScrollingEnabled = {DefaultValue = "true"; Readonly = false; PropertyName = "ScrollingEnabled"; PropertyType = "bool"};
            CanvasPosition = {DefaultValue = "Vector2.new()"; Readonly = false; PropertyName = "CanvasPosition"; PropertyType = "Vector2"};
            AbsoluteWindowSize = {DefaultValue = "Vector2.new()"; Readonly = true; PropertyName = "AbsoluteWindowSize"; PropertyType = "Vector2"};
            CanvasSize = {DefaultValue = "UDim2.new(0, 0, 2, 0)"; Readonly = false; PropertyName = "CanvasSize"; PropertyType = "UDim2"};
        };
        Creatable = true;
        BaseClassName = "GuiObject";
        ClassName = "ScrollingFrame";
    };
    ManualSurfaceJointInstance = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "JointInstance";
        ClassName = "ManualSurfaceJointInstance";
    };
    Humanoid = {
        PropertyMap = {
            maxHealth = {DefaultValue = "100"; Readonly = false; PropertyName = "maxHealth"; PropertyType = "float"};
            WalkSpeed = {DefaultValue = "16"; Readonly = false; PropertyName = "WalkSpeed"; PropertyType = "float"};
            AutoRotate = {DefaultValue = "true"; Readonly = false; PropertyName = "AutoRotate"; PropertyType = "bool"};
            Jump = {DefaultValue = "false"; Readonly = false; PropertyName = "Jump"; PropertyType = "bool"};
            NameOcclusion = {DefaultValue = "Enum.NameOcclusion.NoOcclusion"; Readonly = false; PropertyName = "NameOcclusion"; PropertyType = "NameOcclusion"};
            Torso = {DefaultValue = "nil"; Readonly = false; PropertyName = "Torso"; PropertyType = "Object"};
            Sit = {DefaultValue = "false"; Readonly = false; PropertyName = "Sit"; PropertyType = "bool"};
            WalkToPoint = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "WalkToPoint"; PropertyType = "Vector3"};
            TargetPoint = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "TargetPoint"; PropertyType = "Vector3"};
            WalkToPart = {DefaultValue = "nil"; Readonly = false; PropertyName = "WalkToPart"; PropertyType = "Object"};
            Health = {DefaultValue = "100"; Readonly = false; PropertyName = "Health"; PropertyType = "float"};
            PlatformStand = {DefaultValue = "false"; Readonly = false; PropertyName = "PlatformStand"; PropertyType = "bool"};
            RightLeg = {DefaultValue = "nil"; Readonly = false; PropertyName = "RightLeg"; PropertyType = "Object"};
            CameraOffset = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "CameraOffset"; PropertyType = "Vector3"};
            MaxHealth = {DefaultValue = "100"; Readonly = false; PropertyName = "MaxHealth"; PropertyType = "float"};
            LeftLeg = {DefaultValue = "nil"; Readonly = false; PropertyName = "LeftLeg"; PropertyType = "Object"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Humanoid";
    };
    PhysicsPacketCache = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "PhysicsPacketCache";
    };
    RunningAverageItemDouble = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "StatsItem";
        ClassName = "RunningAverageItemDouble";
    };
    Light = {
        PropertyMap = {
            Color = {DefaultValue = "Color3.new(1, 1, 1)"; Readonly = false; PropertyName = "Color"; PropertyType = "Color3"};
            Brightness = {DefaultValue = "1"; Readonly = false; PropertyName = "Brightness"; PropertyType = "float"};
            Shadows = {DefaultValue = "false"; Readonly = false; PropertyName = "Shadows"; PropertyType = "bool"};
            Enabled = {DefaultValue = "true"; Readonly = false; PropertyName = "Enabled"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Light";
    };
    BodyMover = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "BodyMover";
    };
    WedgePart = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "FormFactorPart";
        ClassName = "WedgePart";
    };
    ImageButton = {
        PropertyMap = {
            ImageTransparency = {DefaultValue = "0"; Readonly = false; PropertyName = "ImageTransparency"; PropertyType = "float"};
            Image = {DefaultValue = "''"; Readonly = false; PropertyName = "Image"; PropertyType = "Content"};
            ImageRectOffset = {DefaultValue = "Vector2.new()"; Readonly = false; PropertyName = "ImageRectOffset"; PropertyType = "Vector2"};
            ImageRectSize = {DefaultValue = "Vector2.new()"; Readonly = false; PropertyName = "ImageRectSize"; PropertyType = "Vector2"};
        };
        Creatable = true;
        BaseClassName = "GuiButton";
        ClassName = "ImageButton";
    };
    GuiBase2d = {
        PropertyMap = {
            AbsoluteSize = {DefaultValue = "Vector2.new()"; Readonly = true; PropertyName = "AbsoluteSize"; PropertyType = "Vector2"};
            AbsolutePosition = {DefaultValue = "Vector2.new()"; Readonly = true; PropertyName = "AbsolutePosition"; PropertyType = "Vector2"};
        };
        Creatable = false;
        BaseClassName = "GuiBase";
        ClassName = "GuiBase2d";
    };
    DialogChoice = {
        PropertyMap = {
            ResponseDialog = {DefaultValue = "''"; Readonly = false; PropertyName = "ResponseDialog"; PropertyType = "string"};
            UserDialog = {DefaultValue = "''"; Readonly = false; PropertyName = "UserDialog"; PropertyType = "string"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "DialogChoice";
    };
    NumberValue = {
        PropertyMap = {
            Value = {DefaultValue = "0"; Readonly = false; PropertyName = "Value"; PropertyType = "double"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "NumberValue";
    };
    JointInstance = {
        PropertyMap = {
            Part1 = {DefaultValue = "nil"; Readonly = false; PropertyName = "Part1"; PropertyType = "Object"};
            Part0 = {DefaultValue = "nil"; Readonly = false; PropertyName = "Part0"; PropertyType = "Object"};
            C0 = {DefaultValue = "CFrame.new()"; Readonly = false; PropertyName = "C0"; PropertyType = "CoordinateFrame"};
            part1 = {DefaultValue = "nil"; Readonly = false; PropertyName = "part1"; PropertyType = "Object"};
            C1 = {DefaultValue = "CFrame.new()"; Readonly = false; PropertyName = "C1"; PropertyType = "CoordinateFrame"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "JointInstance";
    };
    AnimationController = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "AnimationController";
    };
    Configuration = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Configuration";
    };
    UserGameSettings = {
        PropertyMap = {
            Fullscreen = {Readonly = false; PropertyName = "Fullscreen"; PropertyType = "bool"};
            ControlMode = {Readonly = false; PropertyName = "ControlMode"; PropertyType = "ControlMode"};
            AllTutorialsDisabled = {Readonly = false; PropertyName = "AllTutorialsDisabled"; PropertyType = "bool"};
            CameraMode = {Readonly = false; PropertyName = "CameraMode"; PropertyType = "CustomCameraMode"};
            VideoUploadPromptBehavior = {Readonly = false; PropertyName = "VideoUploadPromptBehavior"; PropertyType = "UploadSetting"};
            TouchMovementMode = {Readonly = false; PropertyName = "TouchMovementMode"; PropertyType = "TouchMovementMode"};
            SavedQualityLevel = {Readonly = false; PropertyName = "SavedQualityLevel"; PropertyType = "SavedQualitySetting"};
            ImageUploadPromptBehavior = {Readonly = false; PropertyName = "ImageUploadPromptBehavior"; PropertyType = "UploadSetting"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "UserGameSettings";
    };
    SelectionPointLasso = {
        PropertyMap = {
            Point = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "Point"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "SelectionLasso";
        ClassName = "SelectionPointLasso";
    };
    Skin = {
        PropertyMap = {
            SkinColor = {DefaultValue = "BrickColor.new('Cool yellow')"; Readonly = false; PropertyName = "SkinColor"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "CharacterAppearance";
        ClassName = "Skin";
    };
    Pants = {
        PropertyMap = {
            PantsTemplate = {DefaultValue = "''"; Readonly = false; PropertyName = "PantsTemplate"; PropertyType = "Content"};
        };
        Creatable = true;
        BaseClassName = "Clothing";
        ClassName = "Pants";
    };
    ReflectionMetadataMember = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "ReflectionMetadataItem";
        ClassName = "ReflectionMetadataMember";
    };
    Animation = {
        PropertyMap = {
            AnimationId = {DefaultValue = "''"; Readonly = false; PropertyName = "AnimationId"; PropertyType = "Content"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Animation";
    };
    IntConstrainedValue = {
        PropertyMap = {
            ConstrainedValue = {DefaultValue = "0"; Readonly = false; PropertyName = "ConstrainedValue"; PropertyType = "int"};
            Value = {DefaultValue = "0"; Readonly = false; PropertyName = "Value"; PropertyType = "int"};
            MinValue = {DefaultValue = "0"; Readonly = false; PropertyName = "MinValue"; PropertyType = "int"};
            MaxValue = {DefaultValue = "10"; Readonly = false; PropertyName = "MaxValue"; PropertyType = "int"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "IntConstrainedValue";
    };
    MotorFeature = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Feature";
        ClassName = "MotorFeature";
    };
    Model = {
        PropertyMap = {
            PrimaryPart = {DefaultValue = "nil"; Readonly = false; PropertyName = "PrimaryPart"; PropertyType = "Object"};
        };
        Creatable = true;
        BaseClassName = "PVInstance";
        ClassName = "Model";
    };
    Snap = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "JointInstance";
        ClassName = "Snap";
    };
    BodyAngularVelocity = {
        PropertyMap = {
            P = {DefaultValue = "1250"; Readonly = false; PropertyName = "P"; PropertyType = "float"};
            angularvelocity = {DefaultValue = "Vector3.new(0, 2, 0)"; Readonly = false; PropertyName = "angularvelocity"; PropertyType = "Vector3"};
            maxTorque = {DefaultValue = "Vector3.new(4000, 4000, 4000)"; Readonly = false; PropertyName = "maxTorque"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "BodyMover";
        ClassName = "BodyAngularVelocity";
    };
    VelocityMotor = {
        PropertyMap = {
            CurrentAngle = {DefaultValue = "0"; Readonly = false; PropertyName = "CurrentAngle"; PropertyType = "float"};
            MaxVelocity = {DefaultValue = "0"; Readonly = false; PropertyName = "MaxVelocity"; PropertyType = "float"};
            DesiredAngle = {DefaultValue = "0"; Readonly = false; PropertyName = "DesiredAngle"; PropertyType = "float"};
            Hole = {DefaultValue = "nil"; Readonly = false; PropertyName = "Hole"; PropertyType = "Object"};
        };
        Creatable = true;
        BaseClassName = "JointInstance";
        ClassName = "VelocityMotor";
    };
    SurfaceSelection = {
        PropertyMap = {
            TargetSurface = {DefaultValue = "Enum.NormalId.Right"; Readonly = false; PropertyName = "TargetSurface"; PropertyType = "NormalId"};
        };
        Creatable = true;
        BaseClassName = "PartAdornment";
        ClassName = "SurfaceSelection";
    };
    Part = {
        PropertyMap = {
            Shape = {DefaultValue = "Enum.PartType.Block"; Readonly = false; PropertyName = "Shape"; PropertyType = "PartType"};
        };
        Creatable = true;
        BaseClassName = "FormFactorPart";
        ClassName = "Part";
    };
    StarterPack = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GuiItem";
        ClassName = "StarterPack";
    };
    StandardPages = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Pages";
        ClassName = "StandardPages";
    };
    PyramidPart = {
        PropertyMap = {
            Sides = {Readonly = false; PropertyName = "Sides"; PropertyType = "PyramidSides"};
        };
        Creatable = false;
        BaseClassName = "BasePart";
        ClassName = "PyramidPart";
    };
    DynamicRotate = {
        PropertyMap = {
            BaseAngle = {DefaultValue = "0"; Readonly = false; PropertyName = "BaseAngle"; PropertyType = "float"};
        };
        Creatable = false;
        BaseClassName = "JointInstance";
        ClassName = "DynamicRotate";
    };
    DataStorePages = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Pages";
        ClassName = "DataStorePages";
    };
    Hint = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Message";
        ClassName = "Hint";
    };
    ReflectionMetadataItem = {
        PropertyMap = {
            Deprecated = {DefaultValue = "false"; Readonly = false; PropertyName = "Deprecated"; PropertyType = "bool"};
            Browsable = {DefaultValue = "true"; Readonly = false; PropertyName = "Browsable"; PropertyType = "bool"};
            summary = {DefaultValue = "''"; Readonly = false; PropertyName = "summary"; PropertyType = "string"};
            IsBackend = {DefaultValue = "false"; Readonly = false; PropertyName = "IsBackend"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "ReflectionMetadataItem";
    };
    BaseScript = {
        PropertyMap = {
            Disabled = {DefaultValue = "false"; Readonly = false; PropertyName = "Disabled"; PropertyType = "bool"};
            LinkedSource = {DefaultValue = "''"; Readonly = true; PropertyName = "LinkedSource"; PropertyType = "Content"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "BaseScript";
    };
    ParallelRampPart = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "BasePart";
        ClassName = "ParallelRampPart";
    };
    ClusterPacketCache = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "ClusterPacketCache";
    };
    VehicleController = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Controller";
        ClassName = "VehicleController";
    };
    RayValue = {
        PropertyMap = {
            Value = {DefaultValue = "Ray.new()"; Readonly = false; PropertyName = "Value"; PropertyType = "Ray"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "RayValue";
    };
    RotateP = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "DynamicRotate";
        ClassName = "RotateP";
    };
    PartOperation = {
        PropertyMap = {
            UsePartColor = {DefaultValue = "false"; Readonly = false; PropertyName = "UsePartColor"; PropertyType = "bool"};
        };
        Creatable = true;
        BaseClassName = "BasePart";
        ClassName = "PartOperation";
    };
    BodyForce = {
        PropertyMap = {
            force = {DefaultValue = "Vector3.new(0, 1, 0)"; Readonly = false; PropertyName = "force"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "BodyMover";
        ClassName = "BodyForce";
    };
    Motor6D = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Motor";
        ClassName = "Motor6D";
    };
    BasePart = {
        PropertyMap = {
            RightParamB = {Readonly = false; PropertyName = "RightParamB"; PropertyType = "float"};
            TopSurfaceInput = {Readonly = false; PropertyName = "TopSurfaceInput"; PropertyType = "InputType"};
            CFrame = {Readonly = false; PropertyName = "CFrame"; PropertyType = "CoordinateFrame"};
            FrontSurfaceInput = {Readonly = false; PropertyName = "FrontSurfaceInput"; PropertyType = "InputType"};
            BottomParamB = {Readonly = false; PropertyName = "BottomParamB"; PropertyType = "float"};
            Friction = {Readonly = false; PropertyName = "Friction"; PropertyType = "float"};
            FrontParamB = {Readonly = false; PropertyName = "FrontParamB"; PropertyType = "float"};
            BottomSurface = {Readonly = false; PropertyName = "BottomSurface"; PropertyType = "SurfaceType"};
            CanCollide = {Readonly = false; PropertyName = "CanCollide"; PropertyType = "bool"};
            BackSurfaceInput = {Readonly = false; PropertyName = "BackSurfaceInput"; PropertyType = "InputType"};
            LeftSurface = {Readonly = false; PropertyName = "LeftSurface"; PropertyType = "SurfaceType"};
            Elasticity = {Readonly = false; PropertyName = "Elasticity"; PropertyType = "float"};
            FrontParamA = {Readonly = false; PropertyName = "FrontParamA"; PropertyType = "float"};
            brickColor = {Readonly = false; PropertyName = "brickColor"; PropertyType = "BrickColor"};
            BackParamB = {Readonly = false; PropertyName = "BackParamB"; PropertyType = "float"};
            TopSurface = {Readonly = false; PropertyName = "TopSurface"; PropertyType = "SurfaceType"};
            RightParamA = {Readonly = false; PropertyName = "RightParamA"; PropertyType = "float"};
            Reflectance = {Readonly = false; PropertyName = "Reflectance"; PropertyType = "float"};
            Color = {Readonly = false; PropertyName = "Color"; PropertyType = "Color3"};
            Velocity = {Readonly = false; PropertyName = "Velocity"; PropertyType = "Vector3"};
            Transparency = {Readonly = false; PropertyName = "Transparency"; PropertyType = "float"};
            TopParamB = {Readonly = false; PropertyName = "TopParamB"; PropertyType = "float"};
            TopParamA = {Readonly = false; PropertyName = "TopParamA"; PropertyType = "float"};
            RotVelocity = {Readonly = false; PropertyName = "RotVelocity"; PropertyType = "Vector3"};
            SpecificGravity = {Readonly = true; PropertyName = "SpecificGravity"; PropertyType = "float"};
            BottomParamA = {Readonly = false; PropertyName = "BottomParamA"; PropertyType = "float"};
            Material = {Readonly = false; PropertyName = "Material"; PropertyType = "Material"};
            Locked = {Readonly = false; PropertyName = "Locked"; PropertyType = "bool"};
            Size = {Readonly = false; PropertyName = "Size"; PropertyType = "Vector3"};
            RightSurface = {Readonly = false; PropertyName = "RightSurface"; PropertyType = "SurfaceType"};
            LeftParamB = {Readonly = false; PropertyName = "LeftParamB"; PropertyType = "float"};
            RightSurfaceInput = {Readonly = false; PropertyName = "RightSurfaceInput"; PropertyType = "InputType"};
            BackParamA = {Readonly = false; PropertyName = "BackParamA"; PropertyType = "float"};
            ResizeableFaces = {Readonly = true; PropertyName = "ResizeableFaces"; PropertyType = "Faces"};
            Anchored = {Readonly = false; PropertyName = "Anchored"; PropertyType = "bool"};
            ResizeIncrement = {Readonly = true; PropertyName = "ResizeIncrement"; PropertyType = "int"};
            LeftSurfaceInput = {Readonly = false; PropertyName = "LeftSurfaceInput"; PropertyType = "InputType"};
            Rotation = {Readonly = false; PropertyName = "Rotation"; PropertyType = "Vector3"};
            ReceiveAge = {Readonly = true; PropertyName = "ReceiveAge"; PropertyType = "float"};
            BrickColor = {Readonly = false; PropertyName = "BrickColor"; PropertyType = "BrickColor"};
            Position = {Readonly = false; PropertyName = "Position"; PropertyType = "Vector3"};
            FrontSurface = {Readonly = false; PropertyName = "FrontSurface"; PropertyType = "SurfaceType"};
            LeftParamA = {Readonly = false; PropertyName = "LeftParamA"; PropertyType = "float"};
            BackSurface = {Readonly = false; PropertyName = "BackSurface"; PropertyType = "SurfaceType"};
            BottomSurfaceInput = {Readonly = false; PropertyName = "BottomSurfaceInput"; PropertyType = "InputType"};
        };
        Creatable = false;
        BaseClassName = "PVInstance";
        ClassName = "BasePart";
    };
    PartAdornment = {
        PropertyMap = {
            Adornee = {DefaultValue = "nil"; Readonly = false; PropertyName = "Adornee"; PropertyType = "Object"};
        };
        Creatable = false;
        BaseClassName = "GuiBase3d";
        ClassName = "PartAdornment";
    };
    ClientReplicator = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "NetworkReplicator";
        ClassName = "ClientReplicator";
    };
    TextButton = {
        PropertyMap = {
            FontSize = {DefaultValue = "Enum.FontSize.Size8"; Readonly = false; PropertyName = "FontSize"; PropertyType = "FontSize"};
            TextFits = {DefaultValue = "false"; Readonly = true; PropertyName = "TextFits"; PropertyType = "bool"};
            TextColor3 = {DefaultValue = "Color3.new(0.105882, 0.164706, 0.207843)"; Readonly = false; PropertyName = "TextColor3"; PropertyType = "Color3"};
            TextStrokeColor3 = {DefaultValue = "Color3.new()"; Readonly = false; PropertyName = "TextStrokeColor3"; PropertyType = "Color3"};
            Text = {DefaultValue = "[[Button]]"; Readonly = false; PropertyName = "Text"; PropertyType = "string"};
            TextBounds = {DefaultValue = "Vector2.new()"; Readonly = true; PropertyName = "TextBounds"; PropertyType = "Vector2"};
            TextStrokeTransparency = {DefaultValue = "1"; Readonly = false; PropertyName = "TextStrokeTransparency"; PropertyType = "float"};
            TextWrap = {DefaultValue = "false"; Readonly = false; PropertyName = "TextWrap"; PropertyType = "bool"};
            Font = {DefaultValue = "Enum.Font.Legacy"; Readonly = false; PropertyName = "Font"; PropertyType = "Font"};
            TextWrapped = {DefaultValue = "false"; Readonly = false; PropertyName = "TextWrapped"; PropertyType = "bool"};
            TextXAlignment = {DefaultValue = "Enum.TextXAlignment.Center"; Readonly = false; PropertyName = "TextXAlignment"; PropertyType = "TextXAlignment"};
            TextTransparency = {DefaultValue = "0"; Readonly = false; PropertyName = "TextTransparency"; PropertyType = "float"};
            TextYAlignment = {DefaultValue = "Enum.TextYAlignment.Center"; Readonly = false; PropertyName = "TextYAlignment"; PropertyType = "TextYAlignment"};
            TextScaled = {DefaultValue = "false"; Readonly = false; PropertyName = "TextScaled"; PropertyType = "bool"};
            TextColor = {DefaultValue = "BrickColor.new('Black')"; Readonly = false; PropertyName = "TextColor"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "GuiButton";
        ClassName = "TextButton";
    };
    Sound = {
        PropertyMap = {
            IsPaused = {DefaultValue = "true"; Readonly = true; PropertyName = "IsPaused"; PropertyType = "bool"};
            isPlaying = {DefaultValue = "false"; Readonly = true; PropertyName = "isPlaying"; PropertyType = "bool"};
            SoundId = {DefaultValue = "''"; Readonly = false; PropertyName = "SoundId"; PropertyType = "Content"};
            Volume = {DefaultValue = "0.5"; Readonly = false; PropertyName = "Volume"; PropertyType = "float"};
            IsPlaying = {DefaultValue = "false"; Readonly = true; PropertyName = "IsPlaying"; PropertyType = "bool"};
            Looped = {DefaultValue = "false"; Readonly = false; PropertyName = "Looped"; PropertyType = "bool"};
            Pitch = {DefaultValue = "1"; Readonly = false; PropertyName = "Pitch"; PropertyType = "float"};
            PlayOnRemove = {DefaultValue = "false"; Readonly = false; PropertyName = "PlayOnRemove"; PropertyType = "bool"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Sound";
    };
    RootInstance = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Model";
        ClassName = "RootInstance";
    };
    ScriptContext = {
        PropertyMap = {
            GarbageCollectionLimit = {Security = "RobloxScriptSecurity"; Readonly = false; PropertyName = "GarbageCollectionLimit"; PropertyType = "int"};
            ScriptsDisabled = {Security = "LocalUserSecurity"; Readonly = false; PropertyName = "ScriptsDisabled"; PropertyType = "bool"};
            GarbageCollectionFrequency = {Security = "RobloxScriptSecurity"; Readonly = false; PropertyName = "GarbageCollectionFrequency"; 
                PropertyType = "int"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "ScriptContext";
    };
    SpawnLocation = {
        PropertyMap = {
            Neutral = {DefaultValue = "true"; Readonly = false; PropertyName = "Neutral"; PropertyType = "bool"};
            Duration = {DefaultValue = "10"; Readonly = false; PropertyName = "Duration"; PropertyType = "int"};
            AllowTeamChangeOnTouch = {DefaultValue = "false"; Readonly = false; PropertyName = "AllowTeamChangeOnTouch"; PropertyType = "bool"};
            TeamColor = {DefaultValue = "BrickColor.new('Medium stone grey')"; Readonly = false; PropertyName = "TeamColor"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "Part";
        ClassName = "SpawnLocation";
    };
    BodyPosition = {
        PropertyMap = {
            position = {DefaultValue = "Vector3.new(0, 50, 0)"; Readonly = false; PropertyName = "position"; PropertyType = "Vector3"};
            D = {DefaultValue = "1250"; Readonly = false; PropertyName = "D"; PropertyType = "float"};
            P = {DefaultValue = "10000"; Readonly = false; PropertyName = "P"; PropertyType = "float"};
            maxForce = {DefaultValue = "Vector3.new(4000, 4000, 4000)"; Readonly = false; PropertyName = "maxForce"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "BodyMover";
        ClassName = "BodyPosition";
    };
    ScreenGui = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "LayerCollector";
        ClassName = "ScreenGui";
    };
    ReflectionMetadataYieldFunctions = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ReflectionMetadataYieldFunctions";
    };
    AnimationTrackState = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "AnimationTrackState";
    };
    Dialog = {
        PropertyMap = {
            InitialPrompt = {DefaultValue = "''"; Readonly = false; PropertyName = "InitialPrompt"; PropertyType = "string"};
            InUse = {DefaultValue = "false"; Readonly = false; PropertyName = "InUse"; PropertyType = "bool"};
            ConversationDistance = {DefaultValue = "25"; Readonly = false; PropertyName = "ConversationDistance"; PropertyType = "float"};
            Tone = {DefaultValue = "Enum.DialogTone.Neutral"; Readonly = false; PropertyName = "Tone"; PropertyType = "DialogTone"};
            Purpose = {DefaultValue = "Enum.DialogPurpose.Help"; Readonly = false; PropertyName = "Purpose"; PropertyType = "DialogPurpose"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Dialog";
    };
    Visit = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Visit";
    };
    CacheableContentProvider = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "CacheableContentProvider";
    };
    ForceField = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ForceField";
    };
    BodyVelocity = {
        PropertyMap = {
            P = {DefaultValue = "1250"; Readonly = false; PropertyName = "P"; PropertyType = "float"};
            velocity = {DefaultValue = "Vector3.new(0, 2, 0)"; Readonly = false; PropertyName = "velocity"; PropertyType = "Vector3"};
            maxForce = {DefaultValue = "Vector3.new(4000, 4000, 4000)"; Readonly = false; PropertyName = "maxForce"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "BodyMover";
        ClassName = "BodyVelocity";
    };
    Color3Value = {
        PropertyMap = {
            Value = {DefaultValue = "Color3.new()"; Readonly = false; PropertyName = "Value"; PropertyType = "Color3"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Color3Value";
    };
    ManualGlue = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "ManualSurfaceJointInstance";
        ClassName = "ManualGlue";
    };
    Platform = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Part";
        ClassName = "Platform";
    };
    Seat = {
        PropertyMap = {
            Disabled = {DefaultValue = "false"; Readonly = false; PropertyName = "Disabled"; PropertyType = "bool"};
        };
        Creatable = true;
        BaseClassName = "Part";
        ClassName = "Seat";
    };
    PlayerGui = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "BasePlayerGui";
        ClassName = "PlayerGui";
    };
    Debris = {
        PropertyMap = {
            MaxItems = {Readonly = false; PropertyName = "MaxItems"; PropertyType = "int"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Debris";
    };
    NetworkClient = {
        PropertyMap = {
            Ticket = {Readonly = false; PropertyName = "Ticket"; PropertyType = "string"};
        };
        Creatable = false;
        BaseClassName = "NetworkPeer";
        ClassName = "NetworkClient";
    };
    Flag = {
        PropertyMap = {
            TeamColor = {DefaultValue = "BrickColor.new('Medium stone grey')"; Readonly = false; PropertyName = "TeamColor"; PropertyType = "BrickColor"};
        };
        Creatable = true;
        BaseClassName = "Tool";
        ClassName = "Flag";
    };
    GuiBase3d = {
        PropertyMap = {
            Color = {DefaultValue = "BrickColor.new('Bright blue')"; Readonly = false; PropertyName = "Color"; PropertyType = "BrickColor"};
            Transparency = {DefaultValue = "0"; Readonly = false; PropertyName = "Transparency"; PropertyType = "float"};
            Visible = {DefaultValue = "true"; Readonly = false; PropertyName = "Visible"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "GuiBase";
        ClassName = "GuiBase3d";
    };
    UserSettings = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GenericSettings";
        ClassName = "UserSettings";
    };
    Vector3Value = {
        PropertyMap = {
            Value = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "Value"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Vector3Value";
    };
    Button = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Button";
    };
    RemoteFunction = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "RemoteFunction";
    };
    PlayerHUD = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GuiItem";
        ClassName = "PlayerHUD";
    };
    Backpack = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "GuiItem";
        ClassName = "Backpack";
    };
    TerrainRegion = {
        PropertyMap = {
            SizeInCells = {DefaultValue = "Vector3.new(1, 1, 1)"; Readonly = true; PropertyName = "SizeInCells"; PropertyType = "Vector3"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "TerrainRegion";
    };
    Teams = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Teams";
    };
    NetworkMarker = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "NetworkMarker";
    };
    CustomEventReceiver = {
        PropertyMap = {
            Source = {DefaultValue = "nil"; Readonly = false; PropertyName = "Source"; PropertyType = "Object"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "CustomEventReceiver";
    };
    TaskScheduler = {
        PropertyMap = {
            NumWaitingJobs = {Readonly = true; PropertyName = "NumWaitingJobs"; PropertyType = "double"};
            ThreadPoolConfig = {Readonly = false; PropertyName = "ThreadPoolConfig"; PropertyType = "ThreadPoolConfig"};
            SchedulerRate = {Readonly = true; PropertyName = "SchedulerRate"; PropertyType = "double"};
            Concurrency = {Readonly = false; PropertyName = "Concurrency"; PropertyType = "ConcurrencyModel"};
            AreArbitersThrottled = {Readonly = false; PropertyName = "AreArbitersThrottled"; PropertyType = "bool"};
            ThrottledJobSleepTime = {Readonly = false; PropertyName = "ThrottledJobSleepTime"; PropertyType = "double"};
            ThreadPoolSize = {Readonly = true; PropertyName = "ThreadPoolSize"; PropertyType = "int"};
            NumRunningJobs = {Readonly = true; PropertyName = "NumRunningJobs"; PropertyType = "double"};
            SleepAdjustMethod = {Readonly = false; PropertyName = "SleepAdjustMethod"; PropertyType = "SleepAdjustMethod"};
            SchedulerDutyCycle = {Readonly = true; PropertyName = "SchedulerDutyCycle"; PropertyType = "double"};
            NumSleepingJobs = {Readonly = true; PropertyName = "NumSleepingJobs"; PropertyType = "double"};
            ThreadAffinity = {Readonly = true; PropertyName = "ThreadAffinity"; PropertyType = "double"};
            PriorityMethod = {Readonly = false; PropertyName = "PriorityMethod"; PropertyType = "PriorityMethod"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "TaskScheduler";
    };
    BasePlayerGui = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "BasePlayerGui";
    };
    StudioTool = {
        PropertyMap = {
            Enabled = {Readonly = false; PropertyName = "Enabled"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "StudioTool";
    };
    StringValue = {
        PropertyMap = {
            Value = {DefaultValue = "''"; Readonly = false; PropertyName = "Value"; PropertyType = "string"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "StringValue";
    };
    RunningAverageTimeIntervalItem = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "StatsItem";
        ClassName = "RunningAverageTimeIntervalItem";
    };
    RunningAverageItemInt = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "StatsItem";
        ClassName = "RunningAverageItemInt";
    };
    Sky = {
        PropertyMap = {
            CelestialBodiesShown = {DefaultValue = "true"; Readonly = false; PropertyName = "CelestialBodiesShown"; PropertyType = "bool"};
            StarCount = {DefaultValue = "3000"; Readonly = false; PropertyName = "StarCount"; PropertyType = "int"};
            SkyboxUp = {DefaultValue = "[[rbxasset://textures/sky/sky512_up.tex]]"; Readonly = false; PropertyName = "SkyboxUp"; PropertyType = "Content"};
            SkyboxRt = {DefaultValue = "[[rbxasset://textures/sky/sky512_rt.tex]]"; Readonly = false; PropertyName = "SkyboxRt"; PropertyType = "Content"};
            SkyboxLf = {DefaultValue = "[[rbxasset://textures/sky/sky512_lf.tex]]"; Readonly = false; PropertyName = "SkyboxLf"; PropertyType = "Content"};
            SkyboxFt = {DefaultValue = "[[rbxasset://textures/sky/sky512_ft.tex]]"; Readonly = false; PropertyName = "SkyboxFt"; PropertyType = "Content"};
            SkyboxDn = {DefaultValue = "[[rbxasset://textures/sky/sky512_dn.tex]]"; Readonly = false; PropertyName = "SkyboxDn"; PropertyType = "Content"};
            SkyboxBk = {DefaultValue = "[[rbxasset://textures/sky/sky512_bk.tex]]"; Readonly = false; PropertyName = "SkyboxBk"; PropertyType = "Content"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Sky";
    };
    UnionOperation = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "PartOperation";
        ClassName = "UnionOperation";
    };
    PluginMouse = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Mouse";
        ClassName = "PluginMouse";
    };
    StarterGui = {
        PropertyMap = {
            ResetPlayerGuiOnSpawn = {Readonly = false; PropertyName = "ResetPlayerGuiOnSpawn"; PropertyType = "bool"};
            ShowDevelopmentGui = {Readonly = false; PropertyName = "ShowDevelopmentGui"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "BasePlayerGui";
        ClassName = "StarterGui";
    };
    OneQuarterClusterPacketCacheBase = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "OneQuarterClusterPacketCacheBase";
    };
    RightAngleRampPart = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "BasePart";
        ClassName = "RightAngleRampPart";
    };
    ProfilingItem = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "StatsItem";
        ClassName = "ProfilingItem";
    };
    StatsItem = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "StatsItem";
    };
    Stats = {
        PropertyMap = {
            ReporterType = {Security = "RobloxScriptSecurity"; Readonly = false; PropertyName = "ReporterType"; PropertyType = "string"};
            MinReportInterval = {Security = "RobloxScriptSecurity"; Readonly = false; PropertyName = "MinReportInterval"; PropertyType = "double"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Stats";
    };
    StarterGear = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "StarterGear";
    };
    SpatialQueryCache = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "SpatialQueryCache";
    };
    Sparkles = {
        PropertyMap = {
            Enabled = {DefaultValue = "true"; Readonly = false; PropertyName = "Enabled"; PropertyType = "bool"};
            SparkleColor = {DefaultValue = "Color3.new(144, 25, 255)"; Readonly = false; PropertyName = "SparkleColor"; PropertyType = "Color3"};
            Color = {DefaultValue = "Color3.new(255, 255, 255)"; Readonly = false; PropertyName = "Color"; PropertyType = "Color3"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Sparkles";
    };
    Players = {
        PropertyMap = {
            numPlayers = {Readonly = true; PropertyName = "numPlayers"; PropertyType = "int"};
            LocalPlayer = {Readonly = true; PropertyName = "LocalPlayer"; PropertyType = "Object"};
            BubbleChat = {Readonly = true; PropertyName = "BubbleChat"; PropertyType = "bool"};
            NumPlayers = {Readonly = true; PropertyName = "NumPlayers"; PropertyType = "int"};
            localPlayer = {Readonly = true; PropertyName = "localPlayer"; PropertyType = "Object"};
            MaxPlayers = {Security = "RobloxSecurity"; Readonly = false; PropertyName = "MaxPlayers"; PropertyType = "int"};
            ClassicChat = {Readonly = true; PropertyName = "ClassicChat"; PropertyType = "bool"};
            CharacterAutoLoads = {Readonly = false; PropertyName = "CharacterAutoLoads"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Players";
    };
    Chat = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Chat";
    };
    SurfaceGui = {
        PropertyMap = {
            Enabled = {DefaultValue = "true"; Readonly = false; PropertyName = "Enabled"; PropertyType = "bool"};
            Active = {DefaultValue = "true"; Readonly = false; PropertyName = "Active"; PropertyType = "bool"};
            Adornee = {DefaultValue = "nil"; Readonly = false; PropertyName = "Adornee"; PropertyType = "Object"};
            Face = {DefaultValue = "Enum.NormalId.Front"; Readonly = false; PropertyName = "Face"; PropertyType = "NormalId"};
            ToolPunchThroughDistance = {DefaultValue = "0"; Readonly = false; PropertyName = "ToolPunchThroughDistance"; PropertyType = "float"};
            CanvasSize = {DefaultValue = "Vector2.new(800, 600)"; Readonly = false; PropertyName = "CanvasSize"; PropertyType = "Vector2"};
        };
        Creatable = true;
        BaseClassName = "LayerCollector";
        ClassName = "SurfaceGui";
    };
    Selection = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Selection";
    };
    Workspace = {
        PropertyMap = {
            CurrentCamera = {Readonly = false; PropertyName = "CurrentCamera"; PropertyType = "Object"};
            DistributedGameTime = {Readonly = false; PropertyName = "DistributedGameTime"; PropertyType = "double"};
            FilteringEnabled = {Readonly = false; PropertyName = "FilteringEnabled"; PropertyType = "bool"};
            Terrain = {Readonly = true; PropertyName = "Terrain"; PropertyType = "Object"};
            StreamingEnabled = {Readonly = false; PropertyName = "StreamingEnabled"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "RootInstance";
        ClassName = "Workspace";
    };
    HopperBin = {
        PropertyMap = {
            BinType = {DefaultValue = "Enum.BinType.Script"; Readonly = false; PropertyName = "BinType"; PropertyType = "BinType"};
            Active = {DefaultValue = "false"; Readonly = false; PropertyName = "Active"; PropertyType = "bool"};
        };
        Creatable = true;
        BaseClassName = "BackpackItem";
        ClassName = "HopperBin";
    };
    FormFactorPart = {
        PropertyMap = {
            FormFactor = {DefaultValue = "Enum.FormFactor.Brick"; Readonly = false; PropertyName = "FormFactor"; PropertyType = "FormFactor"};
            formFactor = {DefaultValue = "Enum.FormFactor.Brick"; Readonly = false; PropertyName = "formFactor"; PropertyType = "FormFactor"};
        };
        Creatable = false;
        BaseClassName = "BasePart";
        ClassName = "FormFactorPart";
    };
    TrussPart = {
        PropertyMap = {
            Style = {DefaultValue = "Enum.Style.AlternatingSupports"; Readonly = false; PropertyName = "Style"; PropertyType = "Style"};
        };
        Creatable = true;
        BaseClassName = "BasePart";
        ClassName = "TrussPart";
    };
    TextureTrail = {
        PropertyMap = {
            CycleOffset = {PropertyType = "float"; DefaultValue = "0"; Readonly = false; PropertyName = "CycleOffset"; Security = "RobloxPlaceSecurity"};
            TextureSize = {PropertyType = "Vector2"; DefaultValue = "Vector2.new(1, 1)"; Readonly = false; PropertyName = "TextureSize"; 
                Security = "RobloxPlaceSecurity"};
            From = {PropertyType = "Object"; DefaultValue = "nil"; Readonly = false; PropertyName = "From"; Security = "RobloxPlaceSecurity"};
            To = {PropertyType = "Object"; DefaultValue = "nil"; Readonly = false; PropertyName = "To"; Security = "RobloxPlaceSecurity"};
            Velocity = {PropertyType = "float"; DefaultValue = "2"; Readonly = false; PropertyName = "Velocity"; Security = "RobloxPlaceSecurity"};
            StudsBetweenTextures = {PropertyType = "float"; DefaultValue = "4"; Readonly = false; PropertyName = "StudsBetweenTextures"; 
                Security = "RobloxPlaceSecurity"};
            Texture = {PropertyType = "Content"; DefaultValue = "''"; Readonly = false; PropertyName = "Texture"; Security = "RobloxPlaceSecurity"};
        };
        Creatable = true;
        BaseClassName = "GuiBase3d";
        ClassName = "TextureTrail";
    };
    GenericSettings = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "ServiceProvider";
        ClassName = "GenericSettings";
    };
    DataModel = {
        PropertyMap = {
            CreatorId = {Readonly = true; PropertyName = "CreatorId"; PropertyType = "int"};
            LocalSaveEnabled = {Security = "RobloxScriptSecurity"; Readonly = true; PropertyName = "LocalSaveEnabled"; PropertyType = "bool"};
            PlaceId = {Readonly = true; PropertyName = "PlaceId"; PropertyType = "int"};
            Genre = {Readonly = true; PropertyName = "Genre"; PropertyType = "Genre"};
            PlaceVersion = {Readonly = true; PropertyName = "PlaceVersion"; PropertyType = "int"};
            workspace = {Readonly = true; PropertyName = "workspace"; PropertyType = "Object"};
            Workspace = {Readonly = true; PropertyName = "Workspace"; PropertyType = "Object"};
            lighting = {Readonly = true; PropertyName = "lighting"; PropertyType = "Object"};
            JobId = {Readonly = true; PropertyName = "JobId"; PropertyType = "string"};
            GearGenreSetting = {Readonly = true; PropertyName = "GearGenreSetting"; PropertyType = "GearGenreSetting"};
            IsPersonalServer = {Security = "RobloxScriptSecurity"; Readonly = false; PropertyName = "IsPersonalServer"; PropertyType = "bool"};
            CreatorType = {Readonly = true; PropertyName = "CreatorType"; PropertyType = "CreatorType"};
        };
        Creatable = false;
        BaseClassName = "ServiceProvider";
        ClassName = "DataModel";
    };
    ServerStorage = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ServerStorage";
    };
    ScriptDebugger = {
        PropertyMap = {
            IsPaused = {Readonly = true; PropertyName = "IsPaused"; PropertyType = "bool"};
            CurrentLine = {Readonly = true; PropertyName = "CurrentLine"; PropertyType = "int"};
            IsDebugging = {Readonly = true; PropertyName = "IsDebugging"; PropertyType = "bool"};
            Script = {Readonly = true; PropertyName = "Script"; PropertyType = "Object"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "ScriptDebugger";
    };
    Frame = {
        PropertyMap = {
            Style = {DefaultValue = "Enum.FrameStyle.Custom"; Readonly = false; PropertyName = "Style"; PropertyType = "FrameStyle"};
        };
        Creatable = true;
        BaseClassName = "GuiObject";
        ClassName = "Frame";
    };
    ReplicatedStorage = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ReplicatedStorage";
    };
    CoreGui = {
        PropertyMap = {
            Version = {Readonly = true; PropertyName = "Version"; PropertyType = "int"};
        };
        Creatable = false;
        BaseClassName = "BasePlayerGui";
        ClassName = "CoreGui";
    };
    BindableEvent = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "BindableEvent";
    };
    SelectionPartLasso = {
        PropertyMap = {
            Part = {DefaultValue = "nil"; Readonly = false; PropertyName = "Part"; PropertyType = "Object"};
        };
        Creatable = true;
        BaseClassName = "SelectionLasso";
        ClassName = "SelectionPartLasso";
    };
    ServerReplicator = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "NetworkReplicator";
        ClassName = "ServerReplicator";
    };
    TouchTransmitter = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "TouchTransmitter";
    };
    GuiItem = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "GuiItem";
    };
    ArcHandles = {
        PropertyMap = {
            Axes = {DefaultValue = "Axes.new(Enum.Axis.X, Enum.Axis.Y, Enum.Axis.Z)"; Readonly = false; PropertyName = "Axes"; PropertyType = "Axes"};
        };
        Creatable = true;
        BaseClassName = "HandlesBase";
        ClassName = "ArcHandles";
    };
    Camera = {
        PropertyMap = {
            FieldOfView = {DefaultValue = "69.999996847254"; Readonly = false; PropertyName = "FieldOfView"; PropertyType = "float"};
            CoordinateFrame = {DefaultValue = "CFrame.new(0, 20, 20, 1, 0, -0, -0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829)"; 
                Readonly = false; PropertyName = "CoordinateFrame"; PropertyType = "CoordinateFrame"};
            Focus = {DefaultValue = "CFrame.new(0, 0, -5, 1, 0, 0, 0, 1, 0, 0, 0, 1)"; Readonly = false; PropertyName = "Focus"; 
                PropertyType = "CoordinateFrame"};
            CameraSubject = {DefaultValue = "nil"; Readonly = false; PropertyName = "CameraSubject"; PropertyType = "Object"};
            focus = {DefaultValue = "CFrame.new(0, 0, -5, 1, 0, 0, 0, 1, 0, 0, 0, 1)"; Readonly = false; PropertyName = "focus"; 
                PropertyType = "CoordinateFrame"};
            CameraType = {DefaultValue = "Enum.CameraType.Fixed"; Readonly = false; PropertyName = "CameraType"; PropertyType = "CameraType"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Camera";
    };
    Fire = {
        PropertyMap = {
            Enabled = {DefaultValue = "true"; Readonly = false; PropertyName = "Enabled"; PropertyType = "bool"};
            Heat = {DefaultValue = "9"; Readonly = false; PropertyName = "Heat"; PropertyType = "float"};
            Color = {DefaultValue = "Color3.new(1, 0.5, 0)"; Readonly = false; PropertyName = "Color"; PropertyType = "Color3"};
            size = {DefaultValue = "5"; Readonly = false; PropertyName = "size"; PropertyType = "float"};
            SecondaryColor = {DefaultValue = "Color3.new(1, 0, 0)"; Readonly = false; PropertyName = "SecondaryColor"; PropertyType = "Color3"};
            Size = {DefaultValue = "5"; Readonly = false; PropertyName = "Size"; PropertyType = "float"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Fire";
    };
    ReflectionMetadataFunctions = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ReflectionMetadataFunctions";
    };
    PluginManager = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "PluginManager";
    };
    Plugin = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Plugin";
    };
    CustomEvent = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "CustomEvent";
    };
    RotateV = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "DynamicRotate";
        ClassName = "RotateV";
    };
    Dragger = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Dragger";
    };
    Shirt = {
        PropertyMap = {
            ShirtTemplate = {DefaultValue = "''"; Readonly = false; PropertyName = "ShirtTemplate"; PropertyType = "Content"};
        };
        Creatable = true;
        BaseClassName = "Clothing";
        ClassName = "Shirt";
    };
    CoreScript = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "BaseScript";
        ClassName = "CoreScript";
    };
    CylinderMesh = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "BevelMesh";
        ClassName = "CylinderMesh";
    };
    Animator = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Animator";
    };
    CornerWedgePart = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "BasePart";
        ClassName = "CornerWedgePart";
    };
    ContentFilter = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "ContentFilter";
    };
    Weld = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "JointInstance";
        ClassName = "Weld";
    };
    Explosion = {
        PropertyMap = {
            BlastPressure = {DefaultValue = "500000"; Readonly = false; PropertyName = "BlastPressure"; PropertyType = "float"};
            BlastRadius = {DefaultValue = "4"; Readonly = false; PropertyName = "BlastRadius"; PropertyType = "float"};
            DestroyJointRadiusPercent = {DefaultValue = "1"; Readonly = false; PropertyName = "DestroyJointRadiusPercent"; PropertyType = "float"};
            Position = {DefaultValue = "Vector3.new()"; Readonly = false; PropertyName = "Position"; PropertyType = "Vector3"};
            ExplosionType = {DefaultValue = "Enum.ExplosionType.Craters"; Readonly = false; PropertyName = "ExplosionType"; PropertyType = "ExplosionType"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Explosion";
    };
    BoolValue = {
        PropertyMap = {
            Value = {DefaultValue = "false"; Readonly = false; PropertyName = "Value"; PropertyType = "bool"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "BoolValue";
    };
    BlockMesh = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "BevelMesh";
        ClassName = "BlockMesh";
    };
    Pages = {
        PropertyMap = {
            IsFinished = {Readonly = true; PropertyName = "IsFinished"; PropertyType = "bool"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "Pages";
    };
    StarterScript = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "CoreScript";
        ClassName = "StarterScript";
    };
    ChatFilter = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "ChatFilter";
    };
    BindableFunction = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "BindableFunction";
    };
    ClickDetector = {
        PropertyMap = {
            MaxActivationDistance = {DefaultValue = "32"; Readonly = false; PropertyName = "MaxActivationDistance"; PropertyType = "float"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "ClickDetector";
    };
    Clothing = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "CharacterAppearance";
        ClassName = "Clothing";
    };
    Instance = {
        PropertyMap = {
            className = {Readonly = true; PropertyName = "className"; PropertyType = "string"};
            archivable = {Readonly = false; PropertyName = "archivable"; PropertyType = "bool"};
            Name = {Readonly = false; PropertyName = "Name"; PropertyType = "string"};
            ClassName = {Readonly = true; PropertyName = "ClassName"; PropertyType = "string"};
            Parent = {Readonly = false; PropertyName = "Parent"; PropertyType = "Object"};
            DataCost = {Security = "RobloxPlaceSecurity"; Readonly = true; PropertyName = "DataCost"; PropertyType = "int"};
            Archivable = {Readonly = false; PropertyName = "Archivable"; PropertyType = "bool"};
            RobloxLocked = {Security = "PluginSecurity"; Readonly = false; PropertyName = "RobloxLocked"; PropertyType = "bool"};
        };
        Creatable = false;
        ClassName = "Instance";
    };
    Hopper = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "GuiItem";
        ClassName = "Hopper";
    };
    BackpackItem = {
        PropertyMap = {
            TextureId = {DefaultValue = "''"; Readonly = false; PropertyName = "TextureId"; PropertyType = "Content"};
        };
        Creatable = false;
        BaseClassName = "GuiItem";
        ClassName = "BackpackItem";
    };
    LocalScript = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Script";
        ClassName = "LocalScript";
    };
    NetworkReplicator = {
        PropertyMap = {
            MachineAddress = {Security = "LocalUserSecurity"; Readonly = true; PropertyName = "MachineAddress"; PropertyType = "string"};
            Port = {Security = "LocalUserSecurity"; Readonly = true; PropertyName = "Port"; PropertyType = "int"};
        };
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "NetworkReplicator";
    };
    NetworkServer = {
        PropertyMap = {
            Port = {Readonly = true; PropertyName = "Port"; PropertyType = "int"};
        };
        Creatable = false;
        BaseClassName = "NetworkPeer";
        ClassName = "NetworkServer";
    };
    Scale9Frame = {
        PropertyMap = {
            SlicePrefix = {Readonly = false; PropertyName = "SlicePrefix"; PropertyType = "string"};
            ScaleEdgeSize = {Readonly = false; PropertyName = "ScaleEdgeSize"; PropertyType = "Vector2int16"};
        };
        Creatable = false;
        BaseClassName = "GuiObject";
        ClassName = "Scale9Frame";
    };
    Motor = {
        PropertyMap = {
            CurrentAngle = {DefaultValue = "0"; Readonly = false; PropertyName = "CurrentAngle"; PropertyType = "float"};
            DesiredAngle = {DefaultValue = "0"; Readonly = false; PropertyName = "DesiredAngle"; PropertyType = "float"};
            MaxVelocity = {DefaultValue = "0"; Readonly = false; PropertyName = "MaxVelocity"; PropertyType = "float"};
        };
        Creatable = true;
        BaseClassName = "JointInstance";
        ClassName = "Motor";
    };
    AnimationTrack = {
        PropertyMap = {};
        Creatable = false;
        BaseClassName = "Instance";
        ClassName = "AnimationTrack";
    };
    Rotate = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "JointInstance";
        ClassName = "Rotate";
    };
    NotificationObject = {
        PropertyMap = {};
        Creatable = true;
        BaseClassName = "Frame";
        ClassName = "NotificationObject";
    };
    Keyframe = {
        PropertyMap = {
            Time = {DefaultValue = "0"; Readonly = false; PropertyName = "Time"; PropertyType = "float"};
        };
        Creatable = true;
        BaseClassName = "Instance";
        ClassName = "Keyframe";
    };
    }