rollout MT_Color_Random "MT_Color_Random" width:209 height:268
(
    button 'btn1' "MT_Color_Random" pos:[38,165] width:115 height:29 align:#left
    colorPicker 'cp1' "ColorPicker" pos:[26,97] width:91 height:51 align:#left
    GroupBox 'grp1' "MT_Color_Random" pos:[16,15] width:174 height:212 align:#left
    
    on btn1 pressed do
    (
        local randomColor = color (random 0 cp1.color.r) (random 0 cp1.color.g) (random 0 cp1.color.b) 255
        
        for i = 1 to 24 do
        (
            meditMaterials[i].base_color = randomColor
        )
    )
)

CreateDialog MT_Color_Random
