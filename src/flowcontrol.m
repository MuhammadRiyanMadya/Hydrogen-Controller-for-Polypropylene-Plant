%create function for H2 flow control
%assumtion: temperature and pressure of H2 is not changing too much
function dh2dt = flowcontrol(t,x,u)
    h2 = x ;
    OP = u ; 
    KCV = 0.0687 ;
    taup1 = 2 ;
    dh2dt = (OP*KCV - h2)/taup1 ;
end
