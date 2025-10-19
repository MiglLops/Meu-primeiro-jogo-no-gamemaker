var key_direita = ord("A")
var key_esquerda = ord("D")


move = -keyboard_check(key_direita)+keyboard_check(key_esquerda)

hsp=move*vel

if place_meeting(x+hsp,y,obj_bloco)
{
	while !place_meeting(x+sign(hsp),y,obj_bloco)
	{
		x+=sign(hsp)
	}
	hsp=0
}

x+=hsp


if place_meeting(x,y+vsp,obj_bloco)
{
	while !place_meeting(x,y+sign(vsp),obj_bloco)
	{
		y+=sign(vsp)
	}
	vsp=0
}

y+=vsp

if place_meeting(x,y+1,obj_bloco)
{

	if keyboard_check(vk_space)
	{
		vsp-=pulovel
	}

}
else
{
	vsp+=grav
}