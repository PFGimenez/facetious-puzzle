pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
function _init()
	cls(2)
	d={}
	d[1]=-8
	d[2]=8
	d[4]=-64*16
	d[8]=64*16
	for i=10,50 do
	 circ(64,64,i,rnd(16))
	end
	p=0
	rectfill(0,0,15,15)
end

function copy(d,s)
 for i=0,15 do
  memcpy(0x6000+d+64*i,0x6000+s+64*i,8)
  memcpy(0x6000+s+64*i,0x2000,8)
 end
end
function _update()
-- cls(2)
-- if(t>0)t-=1;return;
 b=a
 a=d[btn()]
 if(a and a!=b) then
  _p=p+a
  copy(p,_p)
  p=_p
 end
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
