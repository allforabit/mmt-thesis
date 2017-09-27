<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
sr = 48000
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1

kCarFreq = p4
kModFreq = p4*0.6666

kIndex = p6 
kIndexM = 0
kMaxDev = kIndex*kModFreq
kMinDev = kIndexM*kModFreq
kVarDev = kMaxDev-kMinDev
kModAmp = kMinDev+kVarDev

aCarRaise linseg p4, p3, p5
aModRaise linseg p4*0.6666, p3, p5*0.6666
aVibAmpEnv linseg p7,p3,p8

aVibrato poscil aVibAmpEnv, 6, 1

aModulator poscil kModAmp, aCarRaise, 1
aCarrier poscil 0.3, aModRaise+aModulator+aVibrato, 1
outs aCarrier, aCarrier

endin

</CsInstruments>
<CsScore>
f 1 0 1024 10 1 		;Sine wave for table 1

; p1 p2 p3 p4   p5    p6 p7   p8
i 1  0  2  440  880   3  .01  20
i 1  0  2  880  440   3  20   0.01

i 1  2  2  660  1320  6  .01  20
i 1  2  2  1320 660   6  20   .01

i 1  4  2  330  660   2  .01  20
i 1  4  2  660  330   2  20   .01

i 1  6  2  880  1720  1  .01  20
i 1  6  2  1720 880   1  20   .01

i 1  8  2  220  440   9  .01  20
i 1  8  2  440  220   9  20   .01


</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
