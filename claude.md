# Application of AI – Course Contract (for assistants and tooling)

This document defines the **style**, **scope**, and **file conventions** for the course notebooks in this repository.

Repository: **ai-application-course-materials**

---

## 1. Course goal and audience

- Master's-level course: **Application of AI**.
- Students already know:
  - basic Machine Learning (regression, classification, metrics),
  - a first introduction to Deep Learning and **CNNs** for images.
- This course focuses on **practical applications**, not heavy theory.

**Block I – Computer Vision**

- Real-world Computer Vision applications.
- Images as data: pixels, resolution, channels.
- Practical work with **Pillow** and **OpenCV**.
- Hands-on recap of **CNNs for vision** with Keras.
- Advanced applications: **object detection**, **tracking**, and (optionally) **segmentation**.

**Block II – AI Agents**

- High-level introduction to AI agents.
- How agents orchestrate tools and models (optionally including CV).
- Concrete application scenarios.

---

## 2. Global style rules for target notebooks

These rules apply to all **target course notebooks** in `notebooks/` whose filenames start with `01_`, `03_`, `04_`, `05_`, `06_`, `07_`, `08_`.

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

### Exercises and TODOs

- **TODO-based exercises are allowed.**
- It is acceptable for some exercise cells to contain comments like `# TODO: ...` or partially completed code.
- Prefer patterns where:
  - incomplete lines are **commented out**, or
  - it is clearly stated that the cell will error until the student completes the TODOs.
- The **main narrative** (non-exercise sections) must remain runnable from top to bottom.

### Other style details

- Prefer short paragraphs and bullet lists over long walls of text.
- Use **blockquotes (`>`)** sparingly, for:
  - core definitions,
  - big-picture takeaways.
- Use consistent, descriptive variable names.
- Add comments that explain **why** something is done, not just how.

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

They must **not** be overwritten or deleted. They are used to build the new course notebooks.

### Target course notebooks

Target notebooks are the student-facing materials you should create, refine, and maintain:

1. `notebooks/01_cv_applications.ipynb` *(planned)*

   * Real-world Computer Vision applications and motivation.
   * Conceptual overview with illustrative images and examples.

2. `notebooks/03_intro_to_pillow.ipynb` ✅ **COMPLETED**

   * Image fundamentals: what is an image, pixels, resolution, channels.
   * Grayscale vs RGB images.
   * Practical introduction to **Pillow** (PIL):

     * loading, displaying, and saving images,
     * image attributes (size, mode, format),
     * cropping, resizing, rotating, flipping,
     * brightness/contrast/color/sharpness adjustments,
     * converting between Pillow images and NumPy arrays.
   * Consolidates the content originally planned for `02_what_is_an_image.ipynb`.

3. `notebooks/04_intro_to_opencv.ipynb` ✅ **COMPLETED**

   * Practical introduction to **OpenCV**:

     * reading and displaying images (BGR vs RGB),
     * basic geometric transformations (resize, rotate, crop),
     * image thresholding (global and adaptive),
     * optional: histogram equalization and CLAHE.
   * Includes at least one exercise on document/bill preprocessing.
   * Reuses content from `Introduction_to_CV_with_OpenCV.ipynb`.

4. `notebooks/05_cnn_theory_keras.ipynb` ✅ **COMPLETED**

   * Practical introduction to **CNNs and Keras implementation**:

     * why CNNs for images (parameter efficiency, spatial structure),
     * CNN architecture components (Conv2D, pooling, activation, dense layers),
     * building CNNs with Keras Functional API,
     * training and evaluating on the flowers dataset,
     * data augmentation with Keras layers.
   * Includes optional exercises for architecture experimentation (TODO-style allowed).
   * Reuses and simplifies content from `Introduction_to_CNN.ipynb`.

5. `notebooks/06_transfer_learning.ipynb` ✅ **COMPLETED**

   * Practical introduction to **Transfer Learning and Fine-tuning**:

     * transfer learning concepts and benefits,
     * pre-trained models from `tf.keras.applications` (e.g., MobileNetV2, EfficientNet),
     * feature extraction with frozen backbones,
     * fine-tuning strategies with low learning rates,
     * comparing training from scratch vs. transfer learning vs. fine-tuning.
   * May include an optional hybrid model section combining custom CNN features with pre-trained features.
   * Reuses content from the transfer learning sections of `Introduction_to_CNN.ipynb`.

6. `notebooks/07_advanced_cv_detection_tracking.ipynb` *(planned)*

   * Advanced Computer Vision applications:

     * object detection with YOLO / Ultralytics,
     * object tracking and counting in video,
     * optionally, introductory segmentation examples.
   * Reuses:

     * `Object_Detection_YOLO_ultralytics.ipynb`
     * `Object_Tracking_Counting.ipynb`
   * Goal: one coherent notebook with a few complete examples (no long unfinished exercises).

7. `notebooks/08_ai_agents_intro.ipynb` *(planned)*

   * High-level introduction to **AI agents** and their applications.
   * Definitions, architectures, and real-world scenarios.
   * Written from scratch (no specific source notebook yet).

**Note:**
`02_what_is_an_image.ipynb` is **not** a target notebook anymore; its content has been merged into `03_intro_to_pillow.ipynb`. Do not create or reference `02_what_is_an_image.ipynb` going forward.

---

## 5. How assistants and tools should work

When generating or modifying any **target notebook** (`01_...`, `03_...`, `04_...`, `05_...`, `06_...`, `07_...`, `08_...`):

1. **Always read `claude.md` first** (this file).
2. Read `README.md` at the repo root.
3. Identify and open the relevant **source notebook(s)** under `notebooks/`:

   * for Pillow basics → `Introduction_to_CV_with_Pillow.ipynb`
   * for OpenCV basics → `Introduction_to_CV_with_OpenCV.ipynb`
   * for CNN recap / transfer learning → `Introduction_to_CNN.ipynb`
   * for detection/tracking → `Object_Detection_YOLO_ultralytics.ipynb`, `Object_Tracking_Counting.ipynb`

4. Design or adjust the target notebook structure:

   * reuse the best explanations and code from the source,
   * remove overly long or off-topic sections,
   * ensure the story is clear and practical.

5. Make sure:

   * the **main narrative** runs from top to bottom without errors,
   * the code uses local files under `images/` / `data/` where needed,
   * the explanations follow the style rules in Section 2,
   * exercises are clearly marked (including TODOs, if any).

6. **Important:**

   * Do not overwrite or delete the original `Introduction_to_*.ipynb` / `Object_*.ipynb` files.
   * All new course content for students should be developed in the `01_...` through `08_...` notebooks.
   * When in doubt about examples, statistics, or images, it is acceptable to **search the web**, but any asset used inside notebooks must be saved locally in `images/` and referenced by relative path.

---

## 6. Recent updates

* ✅ Consolidated "What is an image?" content into `03_intro_to_pillow.ipynb` (no separate notebook 02).
* ✅ Refined CNN and transfer learning notebooks (`05_cnn_theory_keras.ipynb`, `06_transfer_learning.ipynb`) with consistent style and helper functions.
* ✅ Allowed TODO-based exercises, as long as the main narrative remains runnable and exercises are clearly labelled.
* ✅ Aligned README, `notebooks/README.md`, and this contract with the actual plan for notebooks 01, 03, 04, 05, 06, 07, 08.
