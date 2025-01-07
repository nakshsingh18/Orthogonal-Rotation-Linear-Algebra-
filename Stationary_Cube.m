% Create a 3D Cube (Stationary and Translated)
clear; close all;

% Side lengths
Lx = 0.15;
Ly = 0.15;
Lz = 0.15;

% Vertices of the cube
vertices = [
    0, 0, 0;       % #1
    Lx, 0, 0;      % #2
    0, Ly, 0;      % #3
    0, 0, Lz;      % #4
    Lx, Ly, 0;     % #5
    0, Ly, Lz;     % #6
    Lx, 0, Lz;     % #7
    Lx, Ly, Lz     % #8
];

% Faces of the cube
faces = [
    1, 2, 5, 3;    % Face #1
    1, 3, 6, 4;    % Face #2
    1, 4, 7, 2;    % Face #3
    4, 7, 8, 6;    % Face #4
    2, 5, 8, 7;    % Face #5
    3, 6, 8, 5     % Face #6
];

% Draw the stationary cube
figure;
h_original = patch('Faces', faces, 'Vertices', vertices, 'FaceColor', 'g', 'FaceAlpha', 0.7);
hold on;

% Translation vector
translation = [0.1, 0.1, 0.1];

% Translate the cube
translated_vertices = vertices + translation;

% Draw the translated cube
h_translated = patch('Faces', faces, 'Vertices', translated_vertices, 'FaceColor', 'b', 'FaceAlpha', 0.7);

% Axes settings
xlabel('x');
ylabel('y');
zlabel('z');
axis vis3d equal;
view([-37.5, 30]);
camlight;
grid on;
xlim([-0.15, 0.4]);
ylim([-0.2, 0.4]);
zlim([-0.1, 0.4]);

% Add legend
legend([h_original, h_translated], 'Original Cube', 'Translated Cube');
title('Stationary and Translated 3D Cube');
