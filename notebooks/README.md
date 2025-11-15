# Course Notebooks

This folder contains all notebooks for the **"Application of AI"** Master's course.

## Course Structure

The course is organized into two main parts:

## Part 1: Computer Vision Applications

### Foundation & Theory

1. **01_cv_applications.ipynb** *(Placeholder)*
   - Overview of Computer Vision applications across industries
   - Healthcare, retail, autonomous systems, security applications
   - Manufacturing, agriculture, entertainment use cases
   - Business value and impact assessment

2. **02_what_is_an_image.ipynb** *(Placeholder)*
   - Images as data structures
   - Pixels, resolution, and channels
   - Color spaces (RGB, Grayscale, HSV)
   - File formats and storage

### Practical Tools

3. **03_intro_to_pillow.ipynb** ✅
   - Loading, displaying, and saving images with Pillow
   - Image attributes (size, mode, format)
   - Basic transformations (crop, resize, rotate, flip)
   - Brightness, contrast, color, and sharpness adjustments
   - Converting between Pillow images and NumPy arrays

4. **04_intro_to_opencv.ipynb** ✅
   - Advanced image processing with OpenCV
   - BGR vs RGB color space handling
   - Filtering and edge detection
   - Feature detection and matching
   - Thresholding and morphological operations
   - Document preprocessing exercise

### Deep Learning for Vision

5. **05_cnn_theory_keras.ipynb** ✅
   - CNN architecture and components
   - Convolution, padding, stride concepts
   - Pooling types (Max, Average, Global)
   - Building CNNs with Keras Functional API
   - Training workflow and visualization
   - Data augmentation techniques
   - Hands-on exercises with flowers dataset

6. **06_transfer_learning.ipynb** ✅
   - Transfer learning concepts and applications
   - Pre-trained models in tf.keras.applications
   - Model-specific preprocessing requirements
   - Feature extraction with frozen backbones
   - Fine-tuning strategies
   - Hybrid approaches (custom CNN + pre-trained)
   - Comparative exercises with different backbones

### Advanced Computer Vision with Ultralytics

7. **07_cv_tasks_theory.ipynb** *(Placeholder)*
   - Overview of CV tasks (classification to tracking)
   - Object detection theory and concepts
   - Understanding YOLO architecture evolution
   - Evaluation metrics (IoU, mAP, precision-recall)

8. **07_intro_to_ultralytics.ipynb** ✅
   - Introduction to YOLO and Ultralytics ecosystem
   - YOLO11 model variants (nano to xlarge)
   - Loading models and running inference
   - Understanding result objects
   - Overview of different YOLO tasks

9. **07_object_detection_with_ultralytics.ipynb** ✅
   - Hands-on object detection with YOLO11
   - Confidence and IoU threshold tuning
   - Non-Max Suppression (NMS) concepts
   - Visualization and annotation
   - Optional webcam detection
   - Model comparison exercises

10. **07b_segmentation_and_pose_with_ultralytics.ipynb** ✅
    - Instance and semantic segmentation with YOLO11
    - Human pose estimation and keypoint detection
    - Medical and sports applications
    - Mask visualization and processing
    - Practical segmentation exercises

11. **07c_object_tracking_with_ultralytics.ipynb** ✅
    - Multi-object tracking in videos
    - Track persistence and ID management
    - Object counting and flow analysis
    - Real-time tracking applications
    - Video processing exercises

## Part 2: AI Agents

12. **08_ai_agents_intro.ipynb** *(Placeholder)*
    - AI agents fundamentals and architectures
    - Agent types (reactive, deliberative, hybrid)
    - LLMs as reasoning engines
    - Tool integration and orchestration
    - Memory systems and decision making
    - Building agents with LangChain
    - Integrating CV models as agent tools
    - Multi-agent collaboration scenarios

## Source Notebooks (Reference Only)

Legacy notebooks from previous course iterations - **DO NOT MODIFY**:

- `Introduction_to_CV_with_Pillow.ipynb` - Reference for Pillow content
- `Introduction_to_CV_with_OpenCV.ipynb` - Reference for OpenCV content
- `Introduction_to_CNN.ipynb` - Reference for CNN theory
- `Object_Detection_YOLO_ultralytics.ipynb` - Reference for detection
- `Object_Tracking_Counting.ipynb` - Reference for tracking

## Style Guidelines

All target notebooks follow these conventions:

### Structure
- Clear section headers with Markdown (`#`, `##`, `###`)
- Introduction → Main Content → Recap format
- Self-contained notebooks (no dependency on previous notebooks)

### Content
- Short, focused explanations (3-4 sentences per paragraph)
- Bullet points preferred over long text blocks
- Complete, runnable code examples
- Inline comments explaining the "why" not just "what"

### Exercises
- TODO-based exercises with clear instructions
- Hints and guidance provided
- No complete solutions in comments
- Expected outputs for verification
- Starter code with clear markers for student completion

### Technical
- Images stored in `../images/` with relative paths
- Use `plot_training_history()` helper for training visualization
- Model checkpoints and outputs clearly labeled
- Error handling for common issues

## Prerequisites

Students should have:
- Python 3.8+ programming experience
- Basic machine learning knowledge
- Understanding of neural networks fundamentals
- Familiarity with NumPy and basic data manipulation

## Running the Notebooks

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

2. Launch Jupyter:
   ```bash
   jupyter notebook
   # or
   jupyter lab
   ```

3. Navigate to `notebooks/` folder

4. Follow the numbered sequence:
   - Part 1: Start with 01-02 (concepts), then 03-04 (tools), 05-06 (deep learning), 07-11 (advanced CV)
   - Part 2: Complete 08 (AI agents)

## Notes

- Notebooks marked *(Placeholder)* contain outlines of future content
- Notebooks marked ✅ are complete and ready for use
- Source notebooks are for reference only when developing new content
- All notebooks should be tested to run from top to bottom without errors