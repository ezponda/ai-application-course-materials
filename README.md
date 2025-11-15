# AI Application Course Materials

Course materials for Master's level "Application of AI" course focusing on practical Computer Vision applications and AI Agents.

## Repository Structure

```
ai-application-course-materials/
├── notebooks/     # Jupyter notebooks with code examples and exercises
├── images/        # Images and visualizations used in the course
├── data/          # Datasets for exercises and projects
├── claude.md      # Course contract for AI assistants and tooling
└── README.md      # This file
```

## Course Structure

The course is divided into two comprehensive parts:

## Part 1: Computer Vision Applications

### Foundation & Theory

1. **[Computer Vision Applications](notebooks/01_cv_applications.ipynb)** *(Placeholder)*
   - Real-world CV applications across industries
   - Healthcare, retail, autonomous systems, security
   - Manufacturing, agriculture, entertainment
   - Business value and impact of CV solutions

2. **[What is an Image?](notebooks/02_what_is_an_image.ipynb)** *(Placeholder)*
   - Images as data: pixels, resolution, channels
   - Color spaces (RGB, Grayscale, HSV)
   - Images as numerical arrays
   - File formats and storage considerations

### Practical Tools

3. **[Introduction to Pillow](notebooks/03_intro_to_pillow.ipynb)** ✅
   - Loading, displaying, and saving images
   - Image attributes and transformations
   - Cropping, resizing, rotating, flipping
   - Brightness, contrast, color adjustments
   - Converting between Pillow and NumPy

4. **[Introduction to OpenCV](notebooks/04_intro_to_opencv.ipynb)** ✅
   - Advanced image processing operations
   - Color space conversions (BGR vs RGB)
   - Filtering and edge detection
   - Feature detection and matching
   - Thresholding and morphological operations

### Deep Learning for Vision

5. **[CNN Theory with Keras](notebooks/05_cnn_theory_keras.ipynb)** ✅
   - Convolutional Neural Networks fundamentals
   - Convolution, pooling, and architecture design
   - Building CNNs with Keras Functional API
   - Training workflow and data augmentation
   - Hands-on exercises and experimentation

6. **[Transfer Learning](notebooks/06_transfer_learning.ipynb)** ✅
   - Pre-trained models and when to use them
   - Feature extraction with frozen backbones
   - Fine-tuning strategies
   - Model comparison and selection
   - Practical exercises with real datasets

### Advanced Computer Vision with Ultralytics

7. **[CV Tasks: Theory](notebooks/07_cv_tasks_theory.ipynb)** *(Placeholder)*
   - Overview of CV tasks: classification to tracking
   - Theoretical foundations of object detection
   - Understanding YOLO architecture
   - Evaluation metrics and trade-offs

8. **[Introduction to Ultralytics](notebooks/07_intro_to_ultralytics.ipynb)** ✅
   - Setting up Ultralytics YOLO11
   - Model architecture and capabilities
   - Basic inference and predictions
   - Understanding model outputs

9. **[Object Detection](notebooks/07_object_detection_with_ultralytics.ipynb)** ✅
   - Implementing object detection with YOLO11
   - Working with bounding boxes
   - Multi-class detection
   - Real-time detection applications

10. **[Segmentation and Pose](notebooks/07b_segmentation_and_pose_with_ultralytics.ipynb)** ✅
    - Instance and semantic segmentation
    - Human pose estimation
    - Keypoint detection
    - Medical and sports applications

11. **[Object Tracking](notebooks/07c_object_tracking_with_ultralytics.ipynb)** ✅
    - Multi-object tracking in videos
    - Track persistence and ID management
    - Counting and flow analysis
    - Real-world tracking applications

## Part 2: AI Agents

12. **[Introduction to AI Agents](notebooks/08_ai_agents_intro.ipynb)** *(Placeholder)*
    - AI agents fundamentals and architectures
    - LLMs as reasoning engines
    - Tool integration and orchestration
    - Memory systems and decision making
    - Building agents with LangChain
    - Integrating CV models as agent tools
    - Multi-agent systems
    - Real-world applications

## Getting Started

### Prerequisites

- Python 3.8 or higher
- Basic Python programming knowledge
- Understanding of machine learning fundamentals
- Familiarity with neural networks (helpful but not required)

### Installation

1. Clone this repository:
```bash
git clone https://github.com/ezponda/ai-application-course-materials.git
cd ai-application-course-materials
```

2. Install required dependencies:
```bash
pip install -r requirements.txt
```

3. Launch Jupyter Notebook or JupyterLab:
```bash
jupyter notebook
# or
jupyter lab
```

## Learning Path

### Recommended Sequence

1. Start with **Part 1: Computer Vision**
   - Begin with notebooks 1-2 for conceptual foundation
   - Work through Pillow (3) and OpenCV (4) for practical skills
   - Study CNN theory (5) and transfer learning (6)
   - Explore advanced topics with Ultralytics (7-11)

2. Continue with **Part 2: AI Agents**
   - Complete the AI agents introduction (12)
   - Apply CV knowledge in agent-based systems

### Exercise Policy

Notebooks contain TODO-based exercises with:
- Clear task descriptions
- Hints and guidance
- No complete solutions (encouraging active learning)
- Expected outputs for verification

## Resources

- **Notebooks**: All course content in `notebooks/`
- **Images**: Sample images and visualizations in `images/`
- **Data**: Datasets for exercises in `data/`
- **Documentation**: Implementation guidelines in `claude.md`

## Note on Placeholders

Notebooks marked as *(Placeholder)* are under development and contain outlines of upcoming content. Completed notebooks are marked with ✅.

## Getting Started

### Prerequisites

- Python 3.8 or higher
- Basic knowledge of Python programming
- Understanding of machine learning fundamentals (recommended)

### Installation

1. Clone this repository:
```bash
git clone https://github.com/ezponda/ai-application-course-materials.git
cd ai-application-course-materials
```

2. Install required dependencies:
```bash
pip install -r requirements.txt
```

3. Launch Jupyter Notebook:
```bash
jupyter notebook
```

## Resources

- Course notebooks are located in the `notebooks/` directory
- Sample datasets are provided in the `data/` directory
- Supporting images and visualizations are in the `images/` directory

## Contributing

This is a course repository. For questions or suggestions, please contact the course instructor.

## License

Materials are provided for educational purposes.