local myname, ns = ...

local ORDER = 1220; -- order resources currency
local ARTIFACT = 'ARTIFACT'

ns.points = {
    --[[ structure:
    [mapFile] = { -- "_terrain1" etc will be stripped from attempts to fetch this
        [coord] = {
            label=[string], -- label: text that'll be the label, optional
            item=[id], -- itemid
            quest=[id], -- will be checked, for whether character already has it
            currency=[id], -- currencyid
            achievement=[id], -- will be shown in the tooltip
            junk=[bool], -- doesn't count for achievement
            npc=[id], -- related npc id, used to display names in tooltip
            note=[string], -- some text which might be helpful
        },
    },
    --]]
    ["Azsuna"] = {
        [26254713] = {quest=44105, currency=ARTIFACT, label="Small Treasure Chest"},
        [34583556] = {quest=44102, currency=ARTIFACT, label="Small Treasure Chest"},
        [40575767] = {quest=38316, currency=ARTIFACT, label="Treasure Chest"},
        [41393075] = {quest=42292, currency=ARTIFACT, label="Treasure Chest"},
        [42600810] = {quest=38367, currency=ARTIFACT, label="Treasure Chest"},
        [44473946] = {quest=37713, currency=ARTIFACT, label="Small Treasure Chest"},
        [47860773] = {quest=42295, currency=ARTIFACT, label="Small Treasure Chest"},
        [49384536] = {quest=37828, currency=ARTIFACT, item=122681, label="Treasure Chest"},
        [49415800] = {quest=38370, currency=ARTIFACT, label="Treasure Chest"},
        [49653448] = {quest=37831, currency=ARTIFACT, label="Small Treasure Chest"},
        [50215029] = {quest=42290, currency=ARTIFACT, label="Small Treasure Chest"},
        [50465211] = {quest=44081, currency=ARTIFACT, item=140685, label="Treacherous Stallions", note="Ley Portal @ 60.3, 46.3; kill the stallions"},
        [51502030] = {quest=42289, currency=ARTIFACT, label="Treasure Chest", note="Cave entrance @ 47.8, 23.7"},
        [52004210] = {quest=42281, currency=ARTIFACT, label="Small Treasure Chest"},
        [52842059] = {quest=42339, currency=ARTIFACT, label="Treasure Chest", note="Cave entrance @ 53.9 to 22.4; don't wake up the bears"},
        [53033726] = {quest=37596, currency=ARTIFACT, label="Small Treasure Chest"},
        [53176444] = {quest=37829, currency=ARTIFACT, label="Treasure Chest"},
        [53504545] = {quest=42283, currency=ARTIFACT, label="Small Treasure Chest"},
        [53543982] = {quest=42284, currency=ARTIFACT, label="Small Treasure Chest"},
        [53611813] = {quest=44104, currency=ARTIFACT, label="Small Treasure Chest"},
        [53684396] = {quest=42282, currency=ARTIFACT, label="Small Treasure Chest"},
        [54313633] = {quest=42287, currency=ARTIFACT, label="Small Treasure Chest"},
        [54875214] = {quest=44405, currency=ARTIFACT, label="Small Treasure Chest"},
        [55310505] = {quest=38389, currency=ARTIFACT, label="Small Treasure Chest"},
        [55362774] = {quest=42288, currency=ARTIFACT, label="Small Treasure Chest"},
        [55621855] = {quest=40711, currency=ARTIFACT, label="Treasure Chest"},
        [55905690] = {quest=38365, currency=ARTIFACT, label="Disputed Treasure"},
        [56443481] = {quest=38251, currency=ARTIFACT, label="Treasure Chest"},
        [56892499] = {quest=42338, currency=ARTIFACT, label="Small Treasure Chest", note="Cave entrance @ 55.7, 25.4"},
        [57153106] = {quest=38419, currency=ARTIFACT, label="Treasure Chest"},
        [57901220] = {quest=37958, currency=ARTIFACT, label="Treasure Chest"},
        [58364378] = {quest=37830, currency=ARTIFACT, label="Glimmering Treasure Chest"},
        [58381229] = {quest=37980, currency=ARTIFACT, label="Treasure Chest", note="Ley Portal @ 58.7, 14.1"},
        [58645340] = {quest=40752, currency=ARTIFACT, label="Small Treasure Chest"},
        [59876316] = {quest=42272, currency=ARTIFACT, label="Small Treasure Chest"},
        [62028381] = {quest=42284, currency=ARTIFACT, label="Small Treasure Chest", note="Inside the temple"},
        [62405840] = {quest=42273, currency=ARTIFACT, label="Small Treasure Chest"},
        [62814479] = {quest=42294, currency=ARTIFACT, label="Small Treasure Chest"},
        [63005420] = {quest=42278, currency=ARTIFACT, label="Small Treasure Chest", note="Cave entrance @ 64.0, 52.9"},
        [63231521] = {quest=37832, currency=ARTIFACT, label="Treasure Chest"},
        [63653919] = {quest=42293, currency=ARTIFACT, label="Small Treasure Chest"},
        [65066978] = {quest=38239, item=129070, label="Seemingly Unguarded Treasure", note="Seemingly..."},
        [65462961] = {quest=42958, currency=ARTIFACT, label="Small Treasure Chest"},
        [66064345] = {quest=40751, currency=ARTIFACT, label="Small Treasure Chest"},
        [68872973] = {quest=44103, currency=ARTIFACT, label="Small Treasure Chest", note="Underwater cave, entrance is on east side of cliff"},
        [71212211] = {quest=42285, currency=ARTIFACT, label="Small Treasure Chest", note="Door opens after you finish nearby quests"},
    },
    ["Highmountain"] = {
        [36616213] = {quest=40488, currency=ARTIFACT, label="Treasure Chest"},
        [37353381] = {quest=40477, currency=ARTIFACT, label="Small Treasure Chest"},
        [39307621] = {quest=40473, currency=ARTIFACT, label="Treasure Chest", note="Hard to reach; try from behind the totem"},
        [39376229] = {quest=40474, currency=ARTIFACT, label="Treasure Chest"},
        [39704830] = {quest=39494, currency=ARTIFACT, label="Floating Treasure", note="On river surface"},
        [42203482] = {quest=40480, currency=ARTIFACT, label="Small Treasure Chest"},
        [42212730] = {quest=40479, currency=ARTIFACT, label="Treasure Chest"},
        [43582510] = {quest=40478, currency=ARTIFACT, label="Treasure Chest", note="Cave entrance @ 42.5, 25.4"},
        [43757275] = {quest=40510, currency=ARTIFACT, label="Small Treasure Chest"},
        [45192746] = {quest=44279, currency=ARTIFACT, label="Small Treasure Chest", note="Underwater cave"},
        [45573462] = {quest=40481, currency=ARTIFACT, label="Small Treasure Chest"},
        [46227340] = {quest=40489, currency=ARTIFACT, label="Treasure Chest"},
        [46682810] = {quest=40482, currency=ARTIFACT, label="Glimmering Treasure Chest", note="Top of the building"},
        [46814013] = {quest=40507, currency=ARTIFACT, label="Small Treasure Chest"},
        [47644406] = {quest=39503, currency=ARTIFACT, label="Treasure Chest"},
        [47644406] = {quest=39503, item=131926, label="Treasure Chest", note="1/4 of slow fall toy", toy=true},
        [49647128] = {quest=39606, currency=ARTIFACT, label="Glimmering Treasure Chest", note="Inside cave"},
        [50013714] = {quest=39466, currency=ARTIFACT, label="Treasure Chest"},
        [50243861] = {quest=40497, currency=ARTIFACT, label="Small Treasure Chest"},
        [50813504] = {quest=40506, currency=ARTIFACT, label="Small Treasure Chest"},
        [50983647] = {quest=40496, currency=ARTIFACT, label="Treasure Chest"},
        [50983880] = {quest=40498, currency=ARTIFACT, label="Treasure Chest"},
        [52023241] = {quest=40505, currency=ARTIFACT, label="Treasure Chest"},
        [52305141] = {quest=39766, item=131802, label="Totally Safe Treasure Chest"},
        [53035224] = {quest=40493, currency=ARTIFACT, label="Small Treasure Chest"},
        [53063946] = {quest=40499, currency=ARTIFACT, label="Small Treasure Chest"},
        [53414868] = {quest=40500, currency=ARTIFACT, label="Small Treasure Chest"},
        [53454352] = {quest=40484, currency=ARTIFACT, label="Small Treasure Chest"},
        [53615103] = {quest=39824, item=131810, label="Treasure Chest", note="1/4 of slow fall toy; on ledge", toy=true},
        [53615103] = {quest=39824, item=131810, label="Treasure Chest", note="Ledge above the rare"},
        [54174159] = {quest=40483, currency=ARTIFACT, label="Glimmering Treasure Chest", note="Cave entrance @ 55.1, 44.3"},
        [55134965] = {quest=40487, currency=ARTIFACT, label="Small Treasure Chest"},
    },
    ["Stormheim"] = {
        [27335749] = {quest=38529, currency=ARTIFACT, label="Treasure Chest", note="Cave entrance @ 31.4, 57.1"},
        [31105600] = {quest=38676, currency=ORDER, label="Small Treasure Chest"},
        [32054719] = {quest=43196, currency=ARTIFACT, label="Treasure Chest"},
        [35735415] = {quest=38677, currency=ARTIFACT, item=140310, label="Treasure Chest"}, -- treasure chest on the wreck
        [39571934] = {quest=38498, currency=ARTIFACT, label="Small Treasure Chest"},
        [41744604] = {quest=38488, currency=ARTIFACT, label="Small Treasure Chest"},
        [42616579] = {quest=38474, currency=ARTIFACT, label="Treasure Chest"},
        [46768040] = {quest=38481, currency=ARTIFACT, label="Treasure Chest", note="Requires: Stormforged Grapple Launcher"},
        [48137421] = {quest=38476, currency=ARTIFACT, label="Small Treasure Chest"},
        [49777801] = {quest=38485, currency=ARTIFACT, label="Small Treasure Chest", note="Requires: Stormforged Grapple Launcher"},
        [50314100] = {quest=38483, currency=ARTIFACT, label="Small Treasure Chest"},
        [52018058] = {quest=38480, currency=ARTIFACT, label="Small Treasure Chest", note="Requires: Stormforged Grapple Launcher"},
        [55004716] = {quest=40095, currency=ARTIFACT, label="Treasure Chest"},
        [57946321] = {quest=40090, currency=ARTIFACT, label="Small Treasure Chest"},
        [60834273] = {quest=40094, currency=ARTIFACT, label="Small Treasure Chest", note="Requires: Stormforged Grapple Launcher"},
        [61404440] = {quest=40093, currency=ARTIFACT, label="Small Treasure Chest"},
        [61836289] = {quest=40089, currency=ARTIFACT, label="Treasure Chest"},
        [62667362] = {quest=40091, currency=ARTIFACT, label="Small Treasure Chest"},
        [65364310] = {quest=43205, currency=ARTIFACT, label="Small Treasure Chest"},
        [65585737] = {quest=43187, currency=ARTIFACT, label="Small Treasure Chest"},
        [67935774] = {quest=40083, currency=ARTIFACT, label="Small Treasure Chest"},
        [69144478] = {quest=38637, currency=ARTIFACT, label="Small Treasure Chest"},
        [72135489] = {quest=42628, currency=ARTIFACT, label="Small Treasure Chest"},
        [73334150] = {quest=40085, currency=ARTIFACT, label="Small Treasure Chest"},
    },
    ["Suramar"] = {
        [23414880] = {quest=43842, currency=ARTIFACT, label="Small Treasure Chest"},
        [25958548] = {quest=43831, currency=ARTIFACT, label="Small Treasure Chest"},
        [29768817] = {quest=43748, item=141655, label="Shimmering Ancient Mana Cluster"},
        [38138712] = {quest=43830, currency=ARTIFACT, label="Small Treasure Chest"},
        [44302289] = {quest=43850, currency=ARTIFACT, label="Treasure Chest"},
        [46552599] = {quest=43744, item=141655, label="Shimmering Ancient Mana Cluster"},
        [51503859] = {quest=43855, currency=ARTIFACT, label="Small Treasure Chest"},
        [52733130] = {quest=40767, currency=ARTIFACT, label="Dusty Coffer"},
    },
    ["Valsharah"] = {
        [33815826] = {quest=39081, currency=ARTIFACT, label="Treasure Chest"},
        [37005734] = {quest=39083, currency=ARTIFACT, label="Small Treasure Chest"},
        [38456530] = {quest=39080, currency=ARTIFACT, label="Small Treasure Chest", note="Basement; must have completed The Farmsteads"},
        [38626718] = {quest=39079, currency=ARTIFACT, label="Small Treasure Chest"},
        [39945460] = {quest=38369, currency=ARTIFACT, label="Small Treasure Chest"},
        [41404560] = {quest=39085, currency=ARTIFACT, label="Small Treasure Chest", note="Top of wall @ 41.4, 45.6"},
        [41414561] = {quest=39086, currency=ARTIFACT, label="Glimmering Treasure Chest", note="Top of wall @ 41.4, 45.6"},
        [42008850] = {quest=39085, currency=ARTIFACT, label="Small Treasure Chest"},
        [42665801] = {quest=39077, currency=ARTIFACT, label="Small Treasure Chest"},
        [43068822] = {quest=44138, currency=ARTIFACT, label="Treasure Chest", note="Cave entrance @ 43.7, 89.9"},
        [43225488] = {quest=39084, currency=ARTIFACT, label="Treasure Chest", note="Top of wall"},
        [44358257] = {quest=38387, currency=ARTIFACT, label="Treasure Chest", note="Cave under the inn; entrance behind the building"},
        [46448630] = {quest=38277, currency=ARTIFACT, label="Small Treasure Chest"},
        [46897240] = {quest=38363, currency=ARTIFACT, label="Small Treasure Chest"},
        [48607234] = {quest=38366, currency=ARTIFACT, label="Small Treasure Chest"},
        [48998615] = {quest=38886, currency=ARTIFACT, label="Small Treasure Chest"},
        [51247777] = {quest=38388, currency=ARTIFACT, label="Small Treasure Chest", note="Cave entrance @ 50.9, 77.0"},
        [54003489] = {quest=38390, currency=ARTIFACT, label="Glimmering Treasure Chest", note="Cave entrance @ 53.2, 38.0"},
        [54187061] = {quest=39093, currency=ARTIFACT, label="Small Treasure Chest", note="In cave"},
        [54417419] = {quest=38359, currency=ARTIFACT, label="Small Treasure Chest", note="In house behind the fence"},
        [54506048] = {quest=39097, currency=ARTIFACT, label="Treasure Chest", note="In cave"},
        [54958054] = {quest=38861, currency=ARTIFACT, label="Small Treasure Chest", note="In underwater cave"},
        [55557762] = {quest=38466, item=130147, toy=true, label="Unguarded Thistlemaw Treasure", note="Unguarded..."},
        [56008376] = {quest=38861, currency=ARTIFACT, label="Small Treasure Chest"},
        [56225730] = {quest=39072, currency=ARTIFACT, label="Small Treasure Chest"},
        [59887228] = {quest=38943, currency=ARTIFACT, label="Small Treasure Chest", note="Upstairs, stairs on the right"},
        [60498216] = {quest=38893, currency=ARTIFACT, label="Small Treasure Chest", note="Cave entrance @ 62.1, 86.1"},
        [61006400] = {quest=39087, currency=ARTIFACT, label="Small Treasure Chest"},
        [61017917] = {quest=39089, currency=ARTIFACT, label="Glimmering Treasure Chest"},
        [61073421] = {quest=39088, currency=ARTIFACT, label="Treasure Chest", note="Underwater, hidden in roots"},
        [61657372] = {quest=39087, currency=ARTIFACT, label="Small Treasure Chest"},
        [62076737] = {quest=39071, currency=ARTIFACT, label="Treasure Chest"},
        [62707040] = {quest=39069, currency=ARTIFACT, label="Small Treasure Chest", note="Second floor balcony"},
        [62708526] = {quest=44136, currency=ARTIFACT, label="Small Treasure Chest"},
        [63007700] = {quest=39070, currency=ARTIFACT, label="Small Treasure Chest"},
        [63277401] = {quest=39102, currency=ARTIFACT, label="Treasure Chest"},
        [63904556] = {quest=44139, currency=ARTIFACT, label="Small Treasure Chest"},
        [64608546] = {quest=38900, currency=ARTIFACT, label="Treasure Chest"},
        [64708230] = {quest=38391, currency=ARTIFACT, label="Small Treasure Chest"},
        [64715126] = {quest=38355, currency=ARTIFACT, label="Small Treasure Chest"},
        [65398629] = {quest=39074, currency=ARTIFACT, label="Treasure Chest"},
        [66284122] = {quest=39108, currency=ARTIFACT, label="Treasure Chest"},
        [67215928] = {quest=38782, currency=ARTIFACT, label="Treasure Chest", note="Cave entrance @ 65.9, 56.3"},
        [67395342] = {quest=38386, currency=ARTIFACT, label="Small Treasure Chest"},
        [68334060] = {quest=39073, currency=ARTIFACT, label="Small Treasure Chest"},
        [69475999] = {quest=38781, currency=ARTIFACT, label="Small Treasure Chest"},
        [70225704] = {quest=38783, currency=ARTIFACT, label="Small Treasure Chest"},
    },

    -- Small zones
    ["Darkpens"] = { -- Val'sharah
        [42018849] = {quest=39085, currency=ARTIFACT, label="Small Treasure Chest", note="Top of wall @ 41.4, 45.6"},
        [50905168] = {quest=39086, currency=ARTIFACT, label="Glimmering Treasure Chest", note="Top of wall @ 41.4, 45.6"},
    },
    ["Helheim"] = { -- Stormheim
        [28186375] = {quest=39870, npc=97630, item=129188, pet=true, label="Soulthirster"},
    },
    ["StormDrakeDen"] = { -- Stormheim
        [20134125] = {quest=38529, currency=ARTIFACT, label="Treasure Chest"},
    },
    ["OceanusCove"] = { -- Azsuna
        [69294839] = {quest=37649, currency=ARTIFACT, label="Glimmering Treasure Chest"},
        [45346686] = {quest=42291, currency=ARTIFACT, label="Small Treasure Chest"},
    },
    ["BitestoneEnclave"] = { -- Highmountain
        [85213787] = {quest=40489, currency=ARTIFACT, label="Treasure Chest"},
    },
    ["LifespringCavern"] = { -- Highmountain
        [80887207] = {quest=40476, currency=ARTIFACT, label="Glimmering Treasure Chest"},
    },
    ["StonedarkGrotto"] = { -- Highmountain
        [35987235] = {quest=40478, currency=ARTIFACT, label="Treasure Chest"},
    },
    ["MucksnoutDen"] = { -- Highmountain
        [60592533] = {quest=40494, currency=ARTIFACT, label="Treasure Chest"},
    },
    ["ThunderTotem"] = { -- Highmountain
        [13715555] = {quest=40491, currency=ARTIFACT, label="Small Treasure Chest"},
        [63435929] = {quest=39531, item=141322, label="A Steamy Jewelry Box"},
        [50667537] = {quest=40472, currency=ARTIFACT, label="Small Treasure Chest"},
        [32354174] = {quest=40475, currency=ARTIFACT, label="Small Treasure Chest"},
        [31843842] = {quest=44352, currency=ARTIFACT, label="Treasure Chest"}, -- in an underwater cave
    },
    ["ThunderTotemInterior"] = { -- Highmountain
        [62946793] = {quest=40471, currency=ARTIFACT, label="Treasure Chest"},
    },
    ["NeltharionsVault"] = { -- Highmountain
        [63733725] = {quest=39606, currency=ARTIFACT, label="Treasures of Deathwing"},
        [40215031] = {quest=40509, currency=ARTIFACT, label="Treasure Chest"},
        [60425458] = {quest=40508, currency=ARTIFACT, label="Small Treasure Chest"},
    },
    ["SuramarLegionScar"] = { -- ...Suramar
        [40502903] = {quest=40902, currency=ARTIFACT, label="Small Treasure Chest"},
        [54573780] = {quest=43835, currency=ARTIFACT, label="Small Treasure Chest"},
    },
    ["NarthalasAcademy"] = { -- Suramar
        [35525280] = {quest=43988, item=140328, label="Volatile Leyline Crystal", note="Downstairs"},
        [38605414] = {quest=43838, currency=ARTIFACT, label="Small Treasure Chest", note="Downstairs"},
    },
    ["FalanaarTunnels"] = { -- Suramar
        [35513253] = {quest=43747, item=139786, label="Manachest"},
        [48644258] = {quest=43839, currency=ARTIFACT, label="Small Treasure Chest", note="Climb spiderweb"},
    },

    -- DH starter
    ["MardumtheShatteredAbyss"] = {
        [23065389] = {quest=40797, item=129210, label="Small Treasure Chest", note="Cave entrance @ 23.6, 54.2"},
        [34857020] = {quest=39970, item=129210, label="Small Treasure Chest"},
        [41763761] = {quest=40759, item=129196, label="Small Treasure Chest"},
        [42194916] = {quest=40223, item=129210, label="Small Treasure Chest"},
        [45017785] = {quest=39971, item=129192, label="Small Treasure Chest"},
        [51135079] = {quest=40743, item=129210, label="Small Treasure Chest"},
        [66922767] = {quest=39974, item=129210, label="Small Treasure Chest"},
        [69704240] = {quest=39976, item=129210, label="Small Treasure Chest"},
        [73494892] = {quest=39975, item=129195, label="Small Treasure Chest"},
        [74285453] = {quest=39977, item=129210, label="Small Treasure Chest", note="Cave entrance @ 70.7, 54.0"},
        [76243899] = {quest=40338, item=129210, label="Small Treasure Chest"},
        [78755047] = {quest=40274, item=129210, label="Small Treasure Chest"},
        [82075043] = {quest=40820, item=129196, label="Small Treasure Chest"},
    },
    ["CrypticHollow"] = {
        [48761530] = {quest=39972, item=129196, label="Small Treasure Chest"},
        [54855845] = {quest=39973, item=128946, label="Small Treasure Chest"},
    },
    ["SoulEngine"] = {
        [50304964] = {quest=40772, item=129210, label="Small Treasure Chest"},
    },
    ["VaultOfTheWardensDH"] = {
        [58693475] = {quest=40909, item=129210, label="Small Treasure Chest", level=1},
        [47325464] = {quest=38690, item=129210, label="Small Treasure Chest", level=1},
        [32104817] = {quest=40911, item=129196, label="Small Treasure Chest", level=2},
        [41506361] = {quest=40914, item=129196, label="Small Treasure Chest", level=2},
        [56994013] = {quest=40913, item=129210, label="Small Treasure Chest", level=2},
        [41413287] = {quest=40912, item=129210, label="Small Treasure Chest", level=2},
        [24421005] = {quest=40915, item=129210, label="Small Treasure Chest", level=3},
        [23268157] = {quest=40916, item=129210, label="Small Treasure Chest", level=3},
    },
}
