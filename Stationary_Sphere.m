% Parameters for the sphere
radius = 1;
center = [0.1, 0.1, 0.1]; % Center of the sphere

% Generate points on a unit sphere
theta = linspace(0, 2*pi, 100);
phi = linspace(0, pi, 50);
[theta, phi] = meshgrid(theta, phi);

% Convert spherical coordinates to Cartesian coordinates
x_unit = cos(theta) .* sin(phi);
y_unit = sin(theta) .* sin(phi);
z_unit = cos(phi);

% Scale the unit sphere to the desired radius
x = radius * x_unit;
y = radius * y_unit;
z = radius * z_unit;

% Display the original sphere
figure;
subplot(1, 4, 1);
surf(x, y, z, 'FaceColor', 'g', 'EdgeColor', 'none');
title('Original Sphere');
xlabel('x'); ylabel('y'); zlabel('z');
axis vis3d equal;
view([-37.5, 30]);
camlight;
grid on;
xlim([-1.5, 1.5]);
ylim([-1.5, 1.5]);
zlim([-1.5, 1.5]);

% Rotation Matrix (around the y-axis)
theta_y = pi/4; % 45 degrees
R_y = [cos(theta_y) 0 sin(theta_y);
       0 1 0;
      -sin(theta_y) 0 cos(theta_y)];

% Apply rotation to points
rotated_points = R_y * [x(:)'; y(:)'; z(:)'];

% Reshape the points back to 3D coordinates
x_rotated = reshape(rotated_points(1, :), size(x));
y_rotated = reshape(rotated_points(2, :), size(y));
z_rotated = reshape(rotated_points(3, :), size(z));

% Display the rotated sphere
subplot(1, 4, 2);
surf(x_rotated, y_rotated, z_rotated, 'FaceColor', 'g', 'EdgeColor', 'none');
title('Rotated Sphere');
xlabel('x'); ylabel('y'); zlabel('z');
axis vis3d equal;
view([-37.5, 30]);
camlight;
grid on;
xlim([-1.5, 1.5]);
ylim([-1.5, 1.5]);
zlim([-1.5, 1.5]);

% Orthogonal Rotation Matrix (around the x-axis)
theta_x = pi/3; % 60 degrees
R_x = [1 0 0;
       0 cos(theta_x) -sin(theta_x);
       0 sin(theta_x) cos(theta_x)];

% Apply orthogonal rotation to points
ortho_rotated_points = R_x * rotated_points;

% Reshape the points back to 3D coordinates
x_ortho_rotated = reshape(ortho_rotated_points(1, :), size(x));
y_ortho_rotated = reshape(ortho_rotated_points(2, :), size(y));
z_ortho_rotated = reshape(ortho_rotated_points(3, :), size(z));

% Display the orthogonally rotated sphere
subplot(1, 4, 3);
surf(x_ortho_rotated, y_ortho_rotated, z_ortho_rotated, 'FaceColor', 'g', 'EdgeColor', 'none');
title('Orthogonally Rotated Sphere');
xlabel('x'); ylabel('y'); zlabel('z');
axis vis3d equal;
view([-37.5, 30]);
camlight;
grid on;
xlim([-1.5, 1.5]);
ylim([-1.5, 1.5]);
zlim([-1.5, 1.5]);

% Translation Vector
translation = [2; 0; 1];

% Apply translation to points
translated_points = ortho_rotated_points + translation;

% Reshape the points back to 3D coordinates
x_translated = reshape(translated_points(1, :), size(x));
y_translated = reshape(translated_points(2, :), size(y));
z_translated = reshape(translated_points(3, :), size(z));

% Display the translated sphere
subplot(1, 4, 4);
surf(x_translated, y_translated, z_translated, 'FaceColor', 'g', 'EdgeColor', 'none');
title('Translated Sphere');
xlabel('x'); ylabel('y'); zlabel('z');
axis vis3d equal;
view([-37.5, 30]);
camlight;
grid on;
xlim([-1.5, 1.5]);
ylim([-1.5, 1.5]);
zlim([-1.5, 1.5]);
