% Create a 3D Rotating Cube
clear; close all;

% Side length of the cube
sideLength = 0.1;

% Define cube vertices
vertices = sideLength * [
    -1, -1, -1;  % Vertex 1
    -1, -1,  1;  % Vertex 2
    -1,  1, -1;  % Vertex 3
    -1,  1,  1;  % Vertex 4
     1, -1, -1;  % Vertex 5
     1, -1,  1;  % Vertex 6
     1,  1, -1;  % Vertex 7
     1,  1,  1   % Vertex 8
];

% Define cube faces
faces = [
    1, 2, 6, 5;  % Face 1
    2, 4, 8, 6;  % Face 2
    4, 3, 7, 8;  % Face 3
    3, 1, 5, 7;  % Face 4
    1, 2, 4, 3;  % Face 5
    5, 6, 8, 7   % Face 6
];

% Create a figure
figure;

% Plot the cube using the patch function
h = patch('Vertices', vertices, 'Faces', faces, ...
          'FaceColor', 'blue', 'EdgeColor', 'none', ...
          'FaceAlpha', 0.8);

% Set axis limits
axis([-0.2 0.2 -0.2 0.2 -0.2 0.2]);

% Set aspect ratio to be equal
axis equal;

% Set view properties for 3D plot
view(3);

% Set lighting
light('Position', [1 1 1], 'Style', 'infinite');

% Set properties for smooth rotation
rotate3d on;
set(gcf, 'Renderer', 'opengl');

% Add title and labels
title('3D Rotating Cube');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');

% Display grid
grid on;

% Rotate the cube continuously
while ishandle(h)
    rotate(h, [0 1 0], 1); % Rotate about the Y-axis
    drawnow;
end
