# Application of AI – Course Contract (for assistants and tooling)

This document defines the **style**, **scope** and **file conventions** for the course notebooks in this repository.

Repository: **ai-application-course-materials**

Current / expected structure:

- `notebooks/`
  - **Source notebooks** (reference material, do not modify):
    - `Introduction_to_CNN.ipynb`
    - `Introduction_to_CV_with_OpenCV.ipynb`
    - `Introduction_to_CV_with_Pillow.ipynb`
    - `Object_Detection_YOLO_ultralytics.ipynb`
    - `Object_Tracking_Counting.ipynb`
  - **Target course notebooks** (student-facing):
    - `01_cv_applications.ipynb`
    - `02_what_is_an_image.ipynb`
    - `03_intro_to_pillow.ipynb`
    - `04_intro_to_opencv.ipynb`
    - `05_cnn_recap_for_vision.ipynb`
    - `06_advanced_cv_detection_tracking.ipynb`
    - `07_ai_agents_intro.ipynb`
- `images/`  (images used inside notebooks)
- `data/`    (small sample datasets – optional)
- `claude.md` (this file)
- `README.md`

The five notebooks:

- `Introduction_to_CV_with_Pillow.ipynb`
- `Introduction_to_CV_with_OpenCV.ipynb`
- `Introduction_to_CNN.ipynb`
- `Object_Detection_YOLO_ultralytics.ipynb`
- `Object_Tracking_Counting.ipynb`

are **source material** from a previous course block and must be **reused**, not ignored.

---

## 1. Course goal and audience

- Master’s-level course: **Application of AI**.
- Students already know:
  - basic Machine Learning (regression, classification, metrics),
  - a first introduction to Deep Learning and **CNNs** for images.
- This course focuses on **practical applications**, not heavy theory.

**Block I – Computer Vision**

- Real-world Computer Vision applications.
- Images as data: pixels, resolution, channels.
- Practical work with **Pillow** and **OpenCV**.
- A hands-on recap of **CNNs for vision**.
- Advanced applications: **object detection**, **tracking** and **counting**.

**Block II – AI Agents**

- High-level introduction to AI agents.
- How agents orchestrate tools and models (optionally including CV).
- Concrete application scenarios.

---

## 2. Global style rules for all target notebooks

For all **target course notebooks**:

- Language: clear, neutral **English** (B2–C1), slightly informal but not chatty.
- Prefer short paragraphs and bullet lists over long walls of text.
- Each notebook must be **self-contained**:
  - do **not** rely on students having just read another notebook,
  - avoid phrases like “as we saw in the previous notebook”,
  - if a concept is needed, recap it briefly in-place.

Recommended structure of each notebook:

1. **Introduction**
   - What is the topic?
   - Why does it matter in practice?
2. **Main content**
   - Explanations plus runnable **code examples**.
   - When useful, include small diagrams or images.
3. **Recap**
   - 3–6 bullet points of key ideas.
   - 1–2 bullets on how this connects to the rest of the course.

Additional constraints:

- No `TODO` cells, no half-implemented code.
- If you include “tasks” or “exercises”, show the **full solution** in the same notebook.
- Use **blockquotes (`>`)** sparingly, for:
  - core definitions,
  - big-picture takeaways, not every paragraph.

---

## 3. Images and data

- All images used in notebooks should live under the local folder: `images/`.
- In notebooks, always reference them with relative paths, e.g.:

  ```markdown
  ![Self-checkout with product detection](../images/cv_retail_self_checkout.jpg)
````

* If you need new example images (pixel zoom, street scenes, dermoscopy, factory lines, etc.):

  * you may search on the internet,
  * download the image externally,
  * save it in `images/` with a descriptive filename,
  * then load it from there (never directly from URLs inside notebooks).

* Any small datasets (if used) should be placed under `data/` with a short note or `README` describing their origin and purpose.

---

## 4. Source vs target notebooks

**Source notebooks** (keep them as reference, do not overwrite):

* `notebooks/Introduction_to_CV_with_Pillow.ipynb`
* `notebooks/Introduction_to_CV_with_OpenCV.ipynb`
* `notebooks/Introduction_to_CNN.ipynb`
* `notebooks/Object_Detection_YOLO_ultralytics.ipynb`
* `notebooks/Object_Tracking_Counting.ipynb`

**Target course notebooks** to build/refine using those sources:

1. `notebooks/01_cv_applications.ipynb`

   * Real-world Computer Vision applications and motivation.
   * Mostly conceptual, with some illustrative images.

2. `notebooks/02_what_is_an_image.ipynb`

   * "What is an image?" (pixels, resolution, grayscale vs RGB).
   * Images as data structures and arrays.
   * Understanding image attributes and representations.

3. `notebooks/03_intro_to_pillow.ipynb` ✅ **COMPLETED**

   * Practical introduction to **Pillow** (PIL):
     * loading, displaying and saving images,
     * image attributes (size, mode, format),
     * cropping, resizing, rotating, flipping,
     * brightness/contrast/color/sharpness adjustments,
     * converting between Pillow images and NumPy arrays.
   * Reuses content from `Introduction_to_CV_with_Pillow.ipynb`.

4. `notebooks/04_intro_to_opencv.ipynb`

   * Practical introduction to **OpenCV**:
     * reading and displaying images (BGR vs RGB),
     * basic geometric transformations (resize, rotate, crop),
     * image thresholding (global and adaptive),
     * optional: histogram equalization and CLAHE.
   * Reuses content from `Introduction_to_CV_with_OpenCV.ipynb`.

5. `notebooks/05_cnn_theory_keras.ipynb` ✅ **COMPLETED**

   * Practical introduction to **CNNs and Keras implementation**:
     * why CNNs for images (parameter efficiency, spatial structure),
     * CNN architecture components (Conv2D, pooling, activation, dense layers),
     * building CNNs with Keras Functional API,
     * training and evaluating on flowers dataset,
     * data augmentation with Keras layers.
   * Reuses and simplifies content from `Introduction_to_CNN.ipynb`.

6. `notebooks/06_transfer_learning.ipynb` ✅ **COMPLETED**

   * Practical introduction to **Transfer Learning and Fine-tuning**:
     * transfer learning concepts and benefits,
     * pre-trained models from tf.keras.applications (MobileNetV2),
     * feature extraction with frozen backbones,
     * fine-tuning strategies with low learning rates,
     * comparing training from scratch vs. transfer learning vs. fine-tuning.
   * Reuses content from the transfer learning sections of `Introduction_to_CNN.ipynb`.

7. `notebooks/07_advanced_cv_detection_tracking.ipynb`

   * Advanced Computer Vision applications:
     * object detection with YOLO / Ultralytics,
     * object tracking and counting in video.
   * Reuses:
     * `Object_Detection_YOLO_ultralytics.ipynb`
     * `Object_Tracking_Counting.ipynb`.
   * Goal: one coherent notebook with a few complete examples (no long unfinished exercises).

8. `notebooks/08_ai_agents_intro.ipynb`

   * High-level introduction to **AI agents** and their applications.
   * No specific source notebook yet; this will be written from scratch:
     * definitions and concepts,
     * how agents orchestrate tools and models,
     * several realistic scenarios.

---

## 5. How assistants and tools should work

When generating or modifying any **target notebook** (`01_...` to `07_...`):

1. **Always read `claude.md` first** (this file).
2. Read `README.md` at the repo root.
3. Identify and open the relevant **source notebook(s)** under `notebooks/`:

   * for Pillow basics → `Introduction_to_CV_with_Pillow.ipynb`
   * for OpenCV basics → `Introduction_to_CV_with_OpenCV.ipynb`
   * for CNN recap → `Introduction_to_CNN.ipynb`
   * for detection/tracking → `Object_Detection_YOLO_ultralytics.ipynb`, `Object_Tracking_Counting.ipynb`
4. Design or adjust the target notebook structure:

   * reuse the best explanations and code from the source,
   * remove overly long or off-topic sections,
   * ensure the story is clear and practical.
5. Make sure:

   * the notebook runs from top to bottom,
   * the code uses local files under `images/` / `data/` where needed,
   * the explanations follow the style rules in Section 2.

**Important:**

* Do not overwrite or delete the original `Introduction_to_*.ipynb` / `Object_*.ipynb` files.
* All new course content for students should be developed in the `01_...` through `08_...` notebooks.
* When in doubt about examples, statistics or images, it is acceptable to **search the web**, but any asset used inside notebooks must be saved locally in `images/` and referenced by relative path.

**Course Structure Overview:**

The eight target notebooks follow this sequence:
1. `01_cv_applications.ipynb` – CV applications overview
2. `02_what_is_an_image.ipynb` – What is an image?
3. `03_intro_to_pillow.ipynb` – Introduction to Pillow
4. `04_intro_to_opencv.ipynb` – Introduction to OpenCV
5. `05_cnn_theory_keras.ipynb` – CNN theory and Keras implementation
6. `06_transfer_learning.ipynb` – Transfer learning and fine-tuning
7. `07_advanced_cv_detection_tracking.ipynb` – Advanced CV (YOLO, tracking)
8. `08_ai_agents_intro.ipynb` – AI agents

Notebooks 2-4 conceptually form a "What is an image & basic tools" block.
Notebooks 5-7 cover deep learning for computer vision.
