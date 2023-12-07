clear;

x1o = 2; % Amplitude von Signal 1
x2o = 4; % Amplitude von Signal 2
f1 = 20e3; % Frequenz von 20kHz von Signal 1
f2 = 60e3; % Frequenz von 60kHz von Signal 2

t=(0:1/1000000:0.3e-3); % Zeit Intervall

x1 = x1o * sin(2*pi*f1*t); % Signal 1 berechnen
figure(1),plot(t,x1,'lineWidth',2),grid,hold; % Signal 1 Ploten

x2 = x2o * sin(2*pi*f2*t - pi/2); % Signal 2 berechnen
figure(1),plot(t,x2,'LineWidth',1.5),grid % Signal 2 Ploten

title("Aufgabe: 1; Teilaufgabe: a)");
xlabel("t/s");
ylabel("amplitude");
legend('$x_1(t)=2 \cdot sin(2 \cdot \pi \cdot f_1 \cdot t)$', ...
       '$x_2(t) = 4 \cdot sin(2 \cdot \pi \cdot f_2 \cdot t - \frac{\pi}{2})$', ...
       'Interpreter', 'latex');

%--------------Teilaufgabe b)----------------------

x3 = x1 .* x1; % Signal 3 berechnen
figure(2),plot(t,x3,'lineWidth',1.5),grid % Signal 3 Ploten

title("Aufgabe: 1; Teilaufgabe: b)");
xlabel("t/s");
ylabel("amplitude");
legend('$x_3(t) = x_1(t) \cdot x_1(t)$', 'Interpreter', 'latex');

%--------------Teilaufgabe c)----------------------

figure(3),plot(x1,x2,'lineWidth',1.5),grid % Lissajou-Figure Ploten

title("Aufgabe: 1; Teilaufgabe: c)");
xlabel("$x_1(t)$","Interpreter","latex");
ylabel("$x_2(t)$","Interpreter","latex");
legend("Lissajou-Figur")