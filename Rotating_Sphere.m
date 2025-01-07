% Parameters for the sphere
radius = 0.05;
theta = linspace(0, 2*pi, 100);
phi = linspace(0, pi, 50);
[theta, phi] = meshgrid(theta, phi);

% Convert spherical coordinates to Cartesian coordinates
x = radius * sin(phi) .* cos(theta);
y = radius * sin(phi) .* sin(theta);
z = radius * cos(phi);

% Create a figure
figure;

% Plot the sphere using the surf function
h = surf(x, y, z, 'FaceColor', 'green', 'EdgeColor', 'none');

% Set axis limits
axis([-1.5 1.5 -1.5 1.5 -1.5 1.5]);

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
title('3D Rotating Sphere');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');

% Display grid
grid on;

% Rotate the sphere continuously
while ishandle(h)
    rotate(h, [1 1 0], 1); % Rotate around the vector [1 1 0]
    drawnow;
end
