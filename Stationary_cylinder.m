% Stationary Cylinder​
% Original Cylinder Parameters
radius = 1;
height = 3;
resolution = 20; % Number of points around the circumference

% Create the original cylinder
[x, y, z] = cylinder(radius, resolution);
z = z * height;

% Display the original cylinder
figure;
subplot(1, 4, 1);
surf(x, y, z, 'FaceColor', [0, 0, 0.5], 'EdgeColor', 'none'); % Dark Blue
title('Original Cylinder');
axis equal;

% Rotation Matrix (around the y-axis)
theta = pi/4; % 45 degrees
R = [cos(theta) 0 sin(theta);
     0          1          0;
    -sin(theta) 0 cos(theta)];

% Apply rotation to points
rotated_points = R * [x(:)'; y(:)'; z(:)'];

% Reshape the points back to 3D coordinates
x_rotated = reshape(rotated_points(1, :), size(x));
y_rotated = reshape(rotated_points(2, :), size(y));
z_rotated = reshape(rotated_points(3, :), size(z));

% Display the rotated cylinder
subplot(1, 4, 2);
surf(x_rotated, y_rotated, z_rotated, 'FaceColor', [0, 0, 0.5], 'EdgeColor', 'none'); % Dark Blue
title('Rotated Cylinder');
axis equal;

% Generate a random orthogonal matrix (Q)
[Q, ~] = qr(randn(3)); % QR decomposition ensures orthogonal matrix

% Apply orthogonal rotation to points
orthogonal_rotated_points = Q * [x(:)'; y(:)'; z(:)'];

% Reshape the points back to 3D coordinates
x_orthogonal_rotated = reshape(orthogonal_rotated_points(1, :), size(x));
y_orthogonal_rotated = reshape(orthogonal_rotated_points(2, :), size(y));
z_orthogonal_rotated = reshape(orthogonal_rotated_points(3, :), size(z));

% Display the orthogonally rotated cylinder
subplot(1, 4, 3);
surf(x_orthogonal_rotated, y_orthogonal_rotated, z_orthogonal_rotated, 'FaceColor', [0, 0, 0.5], 'EdgeColor', 'none'); % Dark Blue
title('Orthogonal Rotated Cylinder');
axis equal;

% Translation Vector
translation = [2; 0; 1];

% Apply translation to points
translated_points = orthogonal_rotated_points + translation;

% Reshape the points back to 3D coordinates
x_translated = reshape(translated_points(1, :), size(x));
y_translated = reshape(translated_points(2, :), size(y));
z_translated = reshape(translated_points(3, :), size(z));

% Display the translated cylinder
subplot(1, 4, 4);
surf(x_translated, y_translated, z_translated, 'FaceColor', [0, 0, 0.5], 'EdgeColor', 'none'); % Dark Blue
title('Translated Cylinder');
axis equal;
