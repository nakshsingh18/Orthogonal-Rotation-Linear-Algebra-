function rotateAndPlot3DModel(stlFilePath, axis_to_rotate, angle)
    % Load vertices and faces from STL file
    stlData = stlread(stlFilePath);
    vSTL = stlData.Points;                % Vertices matrix
    fSTL = stlData.ConnectivityList;      % Faces matrix

    % Display information from the STL file
    disp('Faces matrix (fSTL):');
    disp(fSTL);
    disp('Vertices matrix (vSTL):');
    disp(vSTL);

    % Plot the original 3D model
    figure;
    subplot(1, 2, 1); % Plot in the left half of the figure
    plot3DModel(vSTL, fSTL, 'Original 3D Model', '-');

    % Apply rotation to the vertices
    rotmat = rotation(axis_to_rotate, angle);
    VertRot = (rotmat * vSTL')'; % Rotate the vertices

    % Plot the rotated 3D model
    subplot(1, 2, 2); % Plot in the right half of the figure
    plot3DModel(VertRot, fSTL, 'Rotated 3D Model', '-');
end

function rotmat = rotation(axis, angle)
    % Normalize the rotation axis
    axis = axis / norm(axis);
    % Extract components of the rotation axis
    ux = axis(1);
    uy = axis(2);
    uz = axis(3);
    % Calculate trigonometric values
    c = cos(angle);
    s = sin(angle);
    one_c = 1 - c;

    % Rotation matrix formula
    rotmat = [
        c + ux^2 * one_c, ux * uy * one_c - uz * s, ux * uz * one_c + uy * s;
        uy * ux * one_c + uz * s, c + uy^2 * one_c, uy * uz * one_c - ux * s;
        uz * ux * one_c - uy * s, uz * uy * one_c + ux * s, c + uz^2 * one_c
    ];
end

function plot3DModel(vertices, faces, titleText, lineStyle)
    axis equal;
    hold on;
    for j = 1:size(faces, 1) % Loop through all faces
        line(...
            vertices(faces(j, [1, 2, 3, 1]), 1), ... % X-coordinates
            vertices(faces(j, [1, 2, 3, 1]), 2), ... % Y-coordinates
            vertices(faces(j, [1, 2, 3, 1]), 3), ... % Z-coordinates
            'LineStyle', lineStyle, 'Color', 'b' ... % Line style and color
        );
    end
    title(titleText);
    hold off;
end
