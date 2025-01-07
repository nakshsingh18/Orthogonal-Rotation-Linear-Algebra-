%3D_ROTATING_CYLINDER
% Cylinder Parameters
radius = 0.05;
height = 0.2;
resolution = 50; % Number of points around the circumference

% Generate points for the cylinder
theta = linspace(0, 2*pi, resolution);
z = linspace(0, height, resolution);
[theta, z] = meshgrid(theta, z);

% Convert cylindrical coordinates to Cartesian coordinates
x = radius * cos(theta);
y = radius * sin(theta);

% Create a figure
figure;

% Plot the cylinder using the surf function
h = surf(x, y, z, 'FaceColor', 'green', 'EdgeColor', 'none');

% Set axis limits
axis([-0.1 0.1 -0.1 0.1 0 height]);

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
title('3D Rotating Cylinder');
ylabel('Y-axis');
xlabel('X-axis');
zlabel('Z-axis');

% Display grid
grid on;

% Rotate the cylinder continuously
while ishandle(h)
    rotate(h, [0 0 1], 1); % Rotate around the z-axis by 1 degree
    drawnow;
end
