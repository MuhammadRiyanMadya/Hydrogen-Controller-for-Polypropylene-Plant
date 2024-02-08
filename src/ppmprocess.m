
%ppm hydrogen mixing process -- including measurement by GC

function dppmdt = ppmprocess(t,x,u)
    ppm = x ;
    c3 = u(1) ;
    h2 = u(2) ;
    ratio = h2/c3 ;
    if c3 >= 0.0165
        KP = 17 ;
    elseif c3< 0.0165 && c3 > 0.016
        KP = 16 ;
    else
        KP = 15 ;
    end
    taup2 = 15 ;
    dppmdt = (ratio*KP - ppm)/taup2;
end

