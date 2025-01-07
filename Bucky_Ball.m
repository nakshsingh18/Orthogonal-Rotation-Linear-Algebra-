% Generate Buckyball Edges and Vertices
[Edges, Vertices] = bucky;

% Rotation angles
theta1 = pi / 3; % Rotation around X-axis
theta2 = pi / 4; % Rotation around Y-axis
theta3 = pi / 6; % Rotation around Z-axis

% Rotation matrix for 3D rotation (composite rotation)
rotX = [1, 0, 0; 0, cos(theta1), -sin(theta1); 0, sin(theta1), cos(theta1)];
rotY = [cos(theta2), 0, sin(theta2); 0, 1, 0; -sin(theta2), 0, cos(theta2)];
rotZ = [cos(theta3), -sin(theta3), 0; sin(theta3), cos(theta3), 0; 0, 0, 1];
rotmat = rotX * rotY * rotZ; % Combined rotation matrix

% Perform rotation on vertices
VertRot = Vertices * rotmat';

% Plot 1: 2D edges after rotation (Projection onto XY-plane)
figure;
subplot(1, 3, 1);
axis equal;
hold on;
for j = 1:60
    for k = j+1:60
        if Edges(j, k) == 1
            line([VertRot(j, 1), VertRot(k, 1)], [VertRot(j, 2), VertRot(k, 2)], 'Color', 'b');
        end
    end
end
title('2D Edges after Rotation');
xlabel('X-axis');
ylabel('Y-axis');
hold off;

% Plot 2: 3D edges after rotation
subplot(1, 3, 2);
axis equal;
hold on;
for j = 1:60
    for k = j+1:60
        if Edges(j, k) == 1
            line([VertRot(j, 1), VertRot(k, 1)], ...
                 [VertRot(j, 2), VertRot(k, 2)], ...
                 [VertRot(j, 3), VertRot(k, 3)], 'Color', 'r');
        end
    end
end
title('3D Edges after Rotation');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
hold off;

% Plot 3: Original and Rotated points
subplot(1, 3, 3);
scatter3(Vertices(:, 1), Vertices(:, 2), Vertices(:, 3), 'b', 'filled'); % Original points
hold on;
scatter3(VertRot(:, 1), VertRot(:, 2), VertRot(:, 3), 'r', 'filled'); % Rotated points
legend('Original', 'Rotated');
title('Original and Rotated Points');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
grid on;
hold off;
