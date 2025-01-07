# Orthogonal-Rotation-Linear-Algebra
## Overview

This project demonstrates various 3D rotation and visualization techniques applied to geometric objects and 3D models. Using MATLAB, the project includes scripts for rotating and visualizing stationary and dynamic 3D shapes such as spheres, cubes, cylinders, and complex 3D models (e.g., Bucky Ball and low-poly fawn). Additionally, output videos and images showcase the results of these transformations.

## Contents

### MATLAB Scripts

1. **`Bucky_Ball.m`**: Generates and visualizes a stationary Bucky Ball.
2. **`Example_usage.m`**: Demonstrates the usage of the `Fawn_rotation.m` .
3. **`Fawn_rotation.m`**: Rotates a low-poly fawn model loaded from an STL file and visualizes the transformation.
4. **`Rotating_Cube.m`**: Simulates and visualizes a rotating cube.
5. **`Rotating_Cylinder.m`**: Simulates and visualizes a rotating cylinder.
6. **`Rotating_Sphere.m`**: Simulates and visualizes a rotating sphere.
7. **`Stationary_Cube.m`**: Visualizes a stationary cube.
8. **`Stationary_cylinder.m`**: Visualizes a stationary cylinder.
9. **`Stationary_Sphere.m`**: Visualizes a stationary sphere.

### Supporting Files

- **`low_poly_fawn_input.stl`**: STL file for the low-poly fawn model used in `Fawn_rotation.m`.

### Output Files

- **`Bucky_Ball_Rotation/`**: Contains output images and videos of the rotating Bucky Ball.
- **`Fawn_Rotation_output/`**: Contains output images and videos of the rotating low-poly fawn.
- **`Original_and_Rotated_Bucky_Ball/`**: Displays original and rotated states of the Bucky Ball.
- **`Stationary_Cube/`**: Contains output images of the stationary cube.
- **`Stationary_cylinder_output/`**: Contains output images of the stationary cylinder.
- **`Stationary_Sphere_output/`**: Contains output images of the stationary sphere.
- **`Rotating_Cube/`**: Contains output images and videos of the rotating cube.
- **`Rotating_Cylinder_output/`**: Contains output images and videos of the rotating cylinder.
- **`Rotating_Sphere/`**: Contains output images and videos of the rotating sphere.

## Features

- **Geometric Transformations**: Demonstrates rotations, translations, and stationary visualizations.
- **Custom Rotation Axes**: Rotate models around user-defined axes using mathematical rotation matrices.
- **STL File Support**: Load and manipulate 3D models from STL files.
- **Visual Outputs**: Generates videos and images for visualizing results.

## Requirements

- MATLAB (R2021a or later recommended)
- STL file handling capability (built-in `stlread` function or custom implementation)

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/nakshsingh18/Orthogonal-Rotation-Linear-Algebra-.git
   cd Orthogonal-Rotation-Linear-Algebra-
   ```

2. Open MATLAB and navigate to the project directory.

3. Run the desired script. For example, to run the `Bucky_Ball.m` script:

   ```matlab
   run('Bucky_Ball.m');
   ```

4. Output images and videos will be saved in the corresponding output folders.

## Example

To visualize the rotation of the low-poly fawn:

- Place the `low_poly_fawn_input.stl` file in the same directory.
- Run `Fawn_rotation.m`.
- Check the `Fawn_Rotation_output/` folder for the results.

## Repository Structure

```plaintext
3D-Rotation-Visualization/
|-- Bucky_Ball.m
|-- Example_usage.m
|-- Fawn_rotation.m
|-- Rotating_Cube.m
|-- Rotating_Cylinder.m
|-- Rotating_Sphere.m
|-- Stationary_Cube.m
|-- Stationary_cylinder.m
|-- Stationary_Sphere.m
|-- low_poly_fawn_input.stl
|-- Bucky_Ball_Rotation/
|-- Fawn_Rotation_output/
|-- Original_and_Rotated_Bucky_Ball/
|-- Stationary_Cube/
|-- Stationary_cylinder_output/
|-- Stationary_Sphere_output/
|-- Rotating_Cube/
|-- Rotating_Cylinder_output/
|-- Rotating_Sphere/
```

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for suggestions or bug reports.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

**Author**: Naksh Singh



