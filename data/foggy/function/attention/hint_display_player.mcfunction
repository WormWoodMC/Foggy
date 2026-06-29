execute if score @s foggy.attention matches 20..39 run title @s actionbar [{text:". . .",color:"dark_gray",italic:true}]
execute if score @s foggy.attention matches 40..64 run title @s actionbar [{text:"■■■",color:"gray",bold:true}]
execute if score @s foggy.attention matches 65.. run title @s actionbar [{text:"◆",color:"dark_red",bold:true}]
