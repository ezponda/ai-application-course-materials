# Course Notebooks

This folder contains all notebooks for the **"Application of AI"** course.

## Target course notebooks (student-facing)

These notebooks form the main learning path for students:

### Block I: Computer Vision Applications

1. **01_cv_applications.ipynb** *(planned)*
   - Overview of Computer Vision applications in industry
   - Motivation and use cases (healthcare, autonomous vehicles, retail, security)

2. **03_intro_to_pillow.ipynb**
   - Image fundamentals (what is an image, pixels, channels, resolution)
   - Grayscale vs. RGB images
   - Basic image manipulation with Pillow
   - Loading, displaying, and saving images
   - Image attributes (size, mode, format)
   - Converting between Pillow images and NumPy arrays
   - **Note:** Includes the "What is an image?" content originally planned for notebook 02.

3. **04_intro_to_opencv.ipynb**
   - Reading and displaying images with OpenCV
   - BGR vs RGB and color conversions
   - Geometric transformations (resize, rotate, crop)
   - Image thresholding (global and adaptive)
   - Optional: histogram equalization and CLAHE for low-contrast images
   - One hands-on exercise on document/bill preprocessing

4. **05_cnn_theory_keras.ipynb**
   - CNN architecture and theory
   - Detailed pooling explanations (MaxPool vs AvgPool vs Global Pooling)
   - Implementation with Keras Functional API on the flowers dataset
   - Training workflow and visualization (`plot_training_history`)
   - Data augmentation with Keras layers
   - Optional exercises for architecture exploration (including TODO-style starter code)

5. **06_transfer_learning.ipynb**
   - Transfer learning concepts and when to use them
   - Pre-trained models overview (MobileNetV2, EfficientNet, ResNet, etc.)
   - Model-specific preprocessing and input size
   - Feature extraction with frozen backbone
   - Fine-tuning with lower learning rates
   - Optional hybrid model section (custom CNN + pre-trained backbone)
   - Exercises comparing different backbones and fine-tuning strategies

6. **07_advanced_cv_detection_tracking.ipynb** *(planned)*
   - Object detection with YOLO / Ultralytics
   - Object tracking and counting in video
   - (Optional) Image segmentation examples
   - Real-world applications and evaluation metrics

### Block II: AI Agents (planned)

7. **08_ai_agents_intro.ipynb** *(planned)*
   - High-level introduction to AI agents and their applications
   - Agent architectures and types (reactive, deliberative, hybrid)
   - How agents orchestrate tools and models
   - Example scenarios and use cases

## Source notebooks (reference only, do not modify)

Legacy notebooks from a previous course block. Use them **only as reference** when improving the target notebooks:

- `Introduction_to_CV_with_Pillow.ipynb`
- `Introduction_to_CV_with_OpenCV.ipynb`
- `Introduction_to_CNN.ipynb`
- `Object_Detection_YOLO_ultralytics.ipynb`
- `Object_Tracking_Counting.ipynb`

## Style Guidelines (summary)

All target notebooks follow these conventions:

- Clear section headers with Markdown (`#`, `##`, `###`).
- Short, focused explanations (3–4 sentences per paragraph).
- Bullet points instead of long text blocks whenever possible.
- Complete runnable examples for the **main narrative**.
- **Exercises may include TODO-style starter code**:
  - It is acceptable for some exercise cells to require students to fill in code.
  - Prefer to comment out incomplete lines or clearly label cells that won't run until completed.
- Inline comments explain the *why*, not just the *what*.
- For CNN notebooks, define and use a `plot_training_history()` helper for training curves.
- Images are stored under `../images/` and referenced with relative paths.

## Prerequisites

Students should have:

- Basic Python programming knowledge.
- Understanding of machine learning fundamentals.
- Completed a previous course covering basic ML and introductory DL/CV.

## Running the Notebooks

1. Install dependencies from `requirements.txt`.
2. Launch Jupyter Notebook or JupyterLab.
3. Navigate to this `notebooks/` folder.
4. Run notebooks in logical order (01 → 03 → 04 → 05 → 06; then 07–08 when available).
