--Project bronze is gone so i cant do shit about it
p = {
    ["Arsenal"] = 286090429,
    ["Bad_Buisness"] = 3233893879,
    ["Big_Paintball"] = 3527629287,
    ["Chapter1Strucid"] = 10705886260,
    ["Firework_Simulator"] = 8962384769,
    ["Kat"] = 621129760,
    ["Phantom_Forces"] = 292439477,
    ["Project_Bronze"] = 0,
    ["Project_Lazarus"] = 443406476,
    ["Rainbow_Friends"] = 7991339063,
    ["Raised_By_Floppa"] = 9771703133,
    ["Slap_Battles"] = 6403373529,
    ["Strucid"] = 2377868063,
    ["Weaponry"] = 3297964905
}

for i,v in pairs(p) do
    if v == game.PlaceId then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/M3tabox/exploits/main/darkhubold/'..i..'.lua'))()
    end 
end

--:)
