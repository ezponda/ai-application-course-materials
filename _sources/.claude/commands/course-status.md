# Course Notebooks Status Report

Generate a comprehensive status report of all course notebooks.

## Tasks

1. **Scan Notebooks Directory**
   - List all `.ipynb` files in `notebooks/`
   - Categorize as: Source (reference) vs Target (student-facing)
   - Check which target notebooks exist

2. **Check Each Target Notebook**
   For each numbered notebook (01_ through 08_):
   - Does it exist?
   - Is it a placeholder or complete?
   - Count total cells (markdown + code)
   - Count TODO exercises
   - Check if it references correct image paths
   - Note last modified date

3. **Generate Status Report**

   ```
   ## Course Notebooks Status Report

   ### Part 1: Computer Vision Applications

   | # | Notebook | Status | Cells | TODOs | Last Modified |
   |---|----------|--------|-------|-------|---------------|
   | 1 | 01_cv_applications | Placeholder | 1 | 0 | YYYY-MM-DD |
   | 2 | 02_what_is_an_image | Placeholder | 1 | 0 | YYYY-MM-DD |
   ...

   ### Part 2: AI Agents

   | # | Notebook | Status | Cells | TODOs | Last Modified |
   |---|----------|--------|-------|-------|---------------|
   | 12 | 08_ai_agents_intro | Placeholder | 1 | 0 | YYYY-MM-DD |

   ### Source Notebooks (Reference Only)
   - Introduction_to_CV_with_Pillow.ipynb ✓
   - Introduction_to_CV_with_OpenCV.ipynb ✓
   ...

   ### Summary
   - Total target notebooks: X
   - Completed: Y
   - Placeholders: Z
   - Total exercises (TODOs): N
   ```

4. **Recommendations**
   - Which placeholder notebooks should be prioritized?
   - Any notebooks missing expected content?
   - Any notebooks with potential issues?

## Usage

```
/course-status
```

This helps track progress on course development and identify gaps.
