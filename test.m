x = linspace(0, 21*pi, 1000);
y1 = sin(x);
y2 = cos(x);

figure;
h = plot(x, y1, 'LineWidth', 180, 'b', x, y2, 'b', 'LineWidth', 180);
axis([0, 2*pi, -1, 1]);

for t = 0:0.1:2*pi
    y1 = sin(x + t);
    y2 = cos(x + t);
    set(h(1), 'YData', y1);
    set(h(2), 'YData', y2);
    pause(0.04);
end
