# Application of AI – Course Contract (for assistants and tooling)

This document defines the **style**, **scope**, and **file conventions** for the course notebooks in this repository.

Repository: **ai-application-course-materials**

---

## Quick Reference

### Common Commands

```bash
# Environment setup
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt

# Launch notebooks
jupyter notebook
jupyter lab

# Verify installations
python -c "import tensorflow as tf; print(f'TensorFlow: {tf.__version__}')"
python -c "import cv2; print(f'OpenCV: {cv2.__version__}')"
python -c "from ultralytics import YOLO; print('Ultralytics: OK')"
python -c "from PIL import Image; print('Pillow: OK')"

# Git workflow
git status
git add notebooks/<notebook>.ipynb images/<image>.jpg
git commit -m "Description of changes"
git push

# Check notebook syntax (optional)
python -m json.tool notebooks/<notebook>.ipynb > /dev/null

# Clear notebook outputs before commit (optional)
jupyter nbconvert --clear-output --inplace notebooks/<notebook>.ipynb
```

### Core Files

| File | Purpose |
|------|---------|
| `CLAUDE.md` | This file - course contract and guidelines |
| `README.md` | Main repository documentation |
| `notebooks/README.md` | Notebook-specific documentation |
| `requirements.txt` | Python dependencies |
| `images/` | All images used in notebooks |
| `data/` | Sample datasets (if any) |
| `.claude/commands/` | Reusable slash command templates |

### Important Warnings

- **Never modify source notebooks** (`Introduction_to_*.ipynb`, `Object_*.ipynb`)
- **Always use relative paths** for images: `../images/filename.jpg`
- **YOLO model weights** (`.pt` files) are downloaded automatically; don't commit them
- **Large images** should be compressed before adding to `images/`
- **Notebook outputs** can make files very large; consider clearing before commits

---

## 1. Course goal and audience

- Master's-level course: **Application of AI**.
- Students already know:
  - basic Machine Learning (regression, classification, metrics),
  - a first introduction to Deep Learning and **CNNs** for images.
- This course focuses on **practical applications**, not heavy theory.

**Part 1 – Computer Vision Applications**

- Real-world Computer Vision applications across industries.
- Images as data: pixels, resolution, channels, color spaces.
- Practical work with **Pillow** and **OpenCV**.
- Hands-on recap of **CNNs for vision** with Keras.
- Transfer learning and fine-tuning strategies.
- Advanced applications with Ultralytics: **object detection**, **segmentation**, **pose estimation**, **tracking**.

**Part 2 – AI Agents**

- Introduction to AI agents and their architectures.
- LLMs as reasoning engines.
- Tool integration and orchestration (including CV models).
- Memory systems and decision-making.
- Practical agent implementation with frameworks like LangChain.
- Real-world application scenarios.

---

## 2. Global style rules for target notebooks

These rules apply to all **target course notebooks** in `notebooks/` (numbered notebooks: `01_`, `02_`, `03_`, `04_`, `05_`, `06_`, `07_`, `08_`).

### Language and tone

- English, clear and neutral (**B2–C1** level).
- Slightly informal but not chatty.
- Avoid overly academic language; focus on clarity and intuition.

### Structure

Every target notebook should be **self-contained**:

- Do **not** rely on students having just read another notebook.
- Avoid phrases like "as we saw in the previous notebook".
- If a concept is needed, recap it briefly in-place.

Recommended structure:

1. **Introduction**
   - What is the topic?
   - Why does it matter in practice?
2. **Main content**
   - Explanations plus runnable **code examples**.
   - When useful, include small diagrams or images.
3. **Exercises (optional but recommended)**
   - Short, focused tasks that encourage experimentation.
   - Can use TODO-style starter code (see below).
4. **Recap**
   - 3–6 bullet points of key ideas.
   - Optionally 1–2 bullets on how this connects to the rest of the course.

### Exercise and TODO Policy

- **TODO-based exercises are encouraged** for student engagement.
- Exercises should include:
  - Clear task descriptions
  - Hints and guidance
  - **No complete solutions in comments** (students should figure it out)
  - Expected outputs or validation checks
  - Starter code with clear TODO markers
- Implementation patterns:
  - Incomplete lines can be **commented out** with `# TODO: complete this line`
  - Clearly state when a cell will error until TODOs are completed
  - Use descriptive TODO comments: `# TODO: Apply Gaussian blur with kernel size 5`
- The **main narrative** (non-exercise sections) must remain runnable from top to bottom.
- Examples of good TODO exercises:
  ```python
  # TODO: Load the image using cv2.imread()
  # img = ...

  # TODO: Convert from BGR to RGB color space
  # img_rgb = ...
  ```

### Other style details

- Prefer short paragraphs and bullet lists over long walls of text.
- Use **blockquotes (`>`)** sparingly, for:
  - core definitions,
  - big-picture takeaways.
- Use consistent, descriptive variable names.
- Add comments that explain **why** something is done, not just how.
- Include error handling for common issues students might encounter.

---

## 3. Images and data

- All images used in notebooks should live under the local folder: `images/`.
- In notebooks, always reference them with **relative paths**, e.g.:

  ```markdown
  ![Self-checkout with product detection](../images/cv_retail_self_checkout.jpg)
  ```

* If you need new example images:

  * search on the internet,
  * download externally,
  * save in `images/` with a descriptive filename,
  * then load from there (never from direct URLs inside notebooks).

* Any small datasets (if used) should be placed under `data/` with a short note or README describing their origin and purpose.

---

## 4. Source vs target notebooks

### Source notebooks (reference only, do not modify)

These five notebooks come from a previous course block and are **reference material**:

* `notebooks/Introduction_to_CV_with_Pillow.ipynb`
* `notebooks/Introduction_to_CV_with_OpenCV.ipynb`
* `notebooks/Introduction_to_CNN.ipynb`
* `notebooks/Object_Detection_YOLO_ultralytics.ipynb`
* `notebooks/Object_Tracking_Counting.ipynb`

They must **not** be overwritten or deleted. They are used as reference when building new course notebooks.

### Target course notebooks

Target notebooks are the student-facing materials (create, refine, and maintain these):

#### Part 1: Computer Vision Applications

1. `notebooks/01_cv_applications.ipynb` *(Placeholder)*
   * Real-world Computer Vision applications across industries
   * Healthcare, retail, autonomous systems, security
   * Manufacturing, agriculture, entertainment
   * Business value and impact of CV solutions

2. `notebooks/02_what_is_an_image.ipynb` *(Placeholder)*
   * Images as data structures
   * Pixels, resolution, and channels
   * Color spaces (RGB, Grayscale, HSV)
   * File formats and storage considerations

3. `notebooks/03_intro_to_pillow.ipynb` ✅ **COMPLETED**
   * Loading, displaying, and saving images with Pillow
   * Image attributes (size, mode, format)
   * Basic transformations (crop, resize, rotate, flip)
   * Brightness, contrast, color, and sharpness adjustments
   * Converting between Pillow images and NumPy arrays

4. `notebooks/04_intro_to_opencv.ipynb` ✅ **COMPLETED**
   * Advanced image processing with OpenCV
   * BGR vs RGB color space handling
   * Filtering and edge detection
   * Feature detection and matching
   * Thresholding and morphological operations
   * Document preprocessing exercise

5. `notebooks/05_cnn_theory_keras.ipynb` ✅ **COMPLETED**
   * CNN architecture and components
   * Convolution, padding, stride concepts
   * Pooling types (Max, Average, Global)
   * Building CNNs with Keras Functional API
   * Training workflow and visualization
   * Data augmentation techniques
   * Hands-on exercises with flowers dataset

6. `notebooks/06_transfer_learning.ipynb` ✅ **COMPLETED**
   * Transfer learning concepts and applications
   * Pre-trained models in tf.keras.applications
   * Feature extraction with frozen backbones
   * Fine-tuning strategies with low learning rates
   * Hybrid approaches (custom CNN + pre-trained)
   * Comparative exercises with different backbones

7. `notebooks/07_cv_tasks_theory.ipynb` *(Placeholder)*
   * Overview of CV tasks (classification to tracking)
   * Object detection theory and concepts
   * Understanding YOLO architecture evolution
   * Evaluation metrics (IoU, mAP, precision-recall)
   * Trade-offs between accuracy and speed

8. `notebooks/07_intro_to_ultralytics.ipynb` ✅ **COMPLETED**
   * Introduction to YOLO and Ultralytics ecosystem
   * YOLO11 model variants (nano to xlarge)
   * Loading models and running inference
   * Understanding result objects
   * Overview of different YOLO tasks

9. `notebooks/07_object_detection_with_ultralytics.ipynb` ✅ **COMPLETED**
   * Hands-on object detection with YOLO11
   * Confidence and IoU threshold tuning
   * Non-Max Suppression (NMS) concepts
   * Visualization and annotation
   * Optional webcam detection
   * Model comparison exercises

10. `notebooks/07b_segmentation_and_pose_with_ultralytics.ipynb` ✅ **COMPLETED**
    * Instance and semantic segmentation with YOLO11
    * Human pose estimation and keypoint detection
    * Medical and sports applications
    * Mask visualization and processing
    * Practical segmentation exercises

11. `notebooks/07c_object_tracking_with_ultralytics.ipynb` ✅ **COMPLETED**
    * Multi-object tracking in videos
    * Track persistence and ID management
    * Object counting and flow analysis
    * Real-time tracking applications
    * Video processing exercises

#### Part 2: AI Agents

12. `notebooks/08_ai_agents_intro.ipynb` *(Placeholder)*
    * AI agents fundamentals and architectures
    * Agent types (reactive, deliberative, hybrid)
    * LLMs as reasoning engines
    * Tool integration and orchestration
    * Memory systems and decision making
    * Building agents with LangChain
    * Integrating CV models as agent tools
    * Multi-agent collaboration scenarios

---

## 5. How assistants and tools should work

When generating or modifying any **target notebook**:

1. **Always read `CLAUDE.md` first** (this file).
2. Read `README.md` at the repo root.
3. Read `notebooks/README.md` for notebook-specific guidelines.
4. Identify and open the relevant **source notebook(s)** under `notebooks/`:

   * for Pillow basics → `Introduction_to_CV_with_Pillow.ipynb`
   * for OpenCV basics → `Introduction_to_CV_with_OpenCV.ipynb`
   * for CNN recap / transfer learning → `Introduction_to_CNN.ipynb`
   * for detection/tracking → `Object_Detection_YOLO_ultralytics.ipynb`, `Object_Tracking_Counting.ipynb`

5. Design or adjust the target notebook structure:

   * reuse the best explanations and code from the source,
   * remove overly long or off-topic sections,
   * ensure the story is clear and practical.

6. Make sure:

   * the **main narrative** runs from top to bottom without errors,
   * exercises are clearly marked with TODO comments,
   * no complete solutions are provided in exercises,
   * the code uses local files under `images/` / `data/` where needed,
   * the explanations follow the style rules in Section 2.

7. **Important:**

   * Do not overwrite or delete the original source notebooks.
   * All new course content should be in numbered notebooks (`01_` through `08_`).
   * When searching for examples or images, save assets locally in `images/`.

---

## 6. Course structure summary

### Part 1: Computer Vision Applications (Notebooks 1-11)
- **Foundation**: Notebooks 1-2 (concepts)
- **Tools**: Notebooks 3-4 (Pillow, OpenCV)
- **Deep Learning**: Notebooks 5-6 (CNNs, Transfer Learning)
- **Advanced CV**: Notebooks 7-11 (Ultralytics YOLO tasks)

### Part 2: AI Agents (Notebook 12)
- **AI Agents**: Notebook 12 (comprehensive introduction)

### Status Legend
- ✅ **COMPLETED**: Notebook is ready for use
- *(Placeholder)*: Notebook contains outline of future content

---

## 7. Recent updates

* ✅ Created placeholder notebooks for 01, 02, 07_cv_tasks_theory, and 08
* ✅ Updated course structure to two-part format (CV Applications + AI Agents)
* ✅ Added notebooks 07b (Segmentation and Pose) and 07c (Object Tracking)
* ✅ Clarified TODO/exercise policy: hints allowed, no complete solutions
* ✅ All documentation files aligned with actual notebook structure
* ✅ Added clickable links in README files using relative markdown paths