R = 795; % Widerstand
C = 30e-9; % Kondensator

G = tf(1,[R*C,1]); % Uebertragungsfunktion des RC-Tiefpasses
figure(1),b = bodeplot(G,{20*pi,1e6*2*pi}) % Bodeplot
setoptions(b, 'FreqUnits', 'Hz'); % Skalierungen auf Hz stellen
title("Aufgabe: 2, Teilaufgabe: b");
legend("Bode-Diagramm RC-Tiefpass");

%----------------- Teilaufgabe c) -----------------

figure(2),nyquist(G),axis equal % Ortskurve Ploten1

