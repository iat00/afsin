hasstage(hmrxep36,fbt).
hasstage(hmrxep37,ost).
hasstage(hmrxep43,fbt).
hasstage(hmrxep43,ost).
hasstage(hmrxep49,pro).
hasstage(hmrxep51,pro).
hasstage(hmrxep52,fbt).
hasstage(hmrxep62,pro).
hasstage(hmrxep62,red).
hasstage(hmrxep64,red).
hasstage(hmrxep67,pro).
hasstage(hmrxep81,ost).

runsapp(hmrxep36,finas).
runsapp(hmrxep36,hmrv62).
runsapp(hmrxep36,jboss43).
runsapp(hmrxep37,finas).
runsapp(hmrxep37,hmrv62).
runsapp(hmrxep37,jboss43).
runsapp(hmrxep51,jboss43).
runsapp(hmrxep52,jboss43).
runsapp(hmrxep64,hmrv62).
runsapp(hmrxep67,finas).
runsapp(hmrxep67,jboss43).
runsapp(hmrxep81,jboss43).

runsdb(hmrxep19,hmp2).
runsdb(hmrxep21,hmp1).
runsdb(hmrxep22,fsot).
runsdb(hmrxep43,hmf1).
runsdb(hmrxep43,hmmp).
runsdb(hmrxep43,hmot).
runsdb(hmrxep49,hmip).
runsdb(hmrxep62,hmp1).

apponstagedependsondb(hmrxep37,hmrv62,fsot).
apponstagedependsondb(jboss1,hmrv62,tngrp).
apponstagedependsondb(jboss2,hmrv62,tngrp).
apponstagedependsondb(hmrxep64,hmrv62,fsp1).
apponstagedependsondb(hmrxep36,hmrv62,fsf1).

apponstagedependsondb(hmrxep36,jboss43,hmf1).
apponstagedependsondb(hmrxep67,jboss43,hmp1).
apponstagedependsondb(hmrxep67,finas,hmp1).

apponstagedependsondb(hmrxep51,bipro,hmip).

responsible(hmrv62,'Olaf Fricke').
responsible(bipro,'Marc Jodkuhn').
responsible(jboss43,'Juan Yep').
responsible(finas,'Michael Eggerstedt').
