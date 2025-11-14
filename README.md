# AI Application Course Materials

Course materials for Master's level "Application of AI" course. This repository contains notebooks, datasets, and resources for learning practical applications of artificial intelligence.

## Repository Structure

```
ai-application-course-materials/
├── notebooks/     # Jupyter notebooks with code examples and exercises
├── images/        # Images and visualizations used in the course
├── data/          # Datasets for exercises and projects
├── claude.md      # Course contract for AI assistants and tooling
└── README.md      # This file
```

## Course Content

The course is organized into two main blocks focusing on practical AI applications.

### Block I: Computer Vision

#### 1. Computer Vision Applications (`01_cv_applications.ipynb`)
- Real-world Computer Vision applications and motivation
- Image classification, object detection, and segmentation
- Facial recognition and optical character recognition (OCR)
- Applications in healthcare, autonomous vehicles, retail, and security

#### 2. What is an Image & Basic Tools

**2.1. What is an Image?** (`02_what_is_an_image.ipynb`)
- Images as data: pixels, resolution, and channels
- Grayscale vs. RGB images
- Image representation as arrays
- Basic image properties and formats

**2.2. Introduction to Pillow** (`03_intro_to_pillow.ipynb`)
- Loading, displaying, and saving images
- Image attributes (size, mode, format)
- Basic transformations (rotate, flip, crop, resize)
- Adjusting brightness, contrast, color, and sharpness
- Converting between Pillow images and NumPy arrays

**2.3. Introduction to OpenCV** (`04_intro_to_opencv.ipynb`)
- Reading and displaying images with OpenCV
- BGR vs RGB color space handling
- Basic geometric transformations (resize, rotate, crop)
- Image thresholding (global and adaptive)
- Optional: Histogram equalization and CLAHE for contrast enhancement

#### 3. CNN Theory and Implementation (`05_cnn_theory_keras.ipynb`)
- Why CNNs for images: parameter efficiency and spatial structure
- CNN architecture components: convolution, pooling, activation, dense layers
- Building CNNs with Keras on the flowers dataset
- Training and evaluating CNN models
- Data augmentation techniques for improved generalization

#### 4. Transfer Learning and Fine-tuning (`06_transfer_learning.ipynb`)
- Transfer learning concepts and benefits
- Pre-trained models in Keras Applications (MobileNetV2, EfficientNet, ResNet)
- Feature extraction with frozen backbones
- Fine-tuning strategies and best practices
- Comparing approaches: from scratch vs. transfer learning vs. fine-tuning

#### 5. Advanced Computer Vision (`07_advanced_cv_detection_tracking.ipynb`)
- Object detection with YOLO / Ultralytics
- Single-shot vs. region-based detection methods
- Object tracking and counting in video
- Real-time detection applications
- Evaluation metrics (IoU, mAP, precision-recall)

### Block II: AI Agents

#### 6. Introduction to AI Agents (`08_ai_agents_intro.ipynb`)
- High-level introduction to AI agents and their applications
- Agent architectures and types (reactive, deliberative, hybrid)
- Agent environments and decision-making
- How agents orchestrate tools and models
- Practical application scenarios:
  - Conversational AI and chatbots
  - Autonomous agents in robotics
  - Planning and scheduling systems
  - Multi-agent collaboration
- Real-world applications in business, healthcare, and automation

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