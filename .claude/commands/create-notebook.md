# Create New Course Notebook

Create or complete a notebook based on the provided topic and number.

**Arguments**: `$ARGUMENTS` (format: "notebook_number topic_description")

Example: `/create-notebook 02 What is an Image - pixels, resolution, color spaces`

## Process

1. **Read Guidelines**
   - Read CLAUDE.md for style requirements
   - Read notebooks/README.md for notebook descriptions
   - Check if a placeholder already exists for this notebook number

2. **Research Source Material**
   - Identify relevant source notebooks (Introduction_to_*.ipynb, Object_*.ipynb)
   - Extract best explanations and code examples
   - Note any images or data files needed

3. **Plan Structure**
   - Introduction: What is the topic? Why does it matter?
   - Main content: Explanations + runnable code examples
   - Exercises: TODO-based tasks with hints (no solutions)
   - Recap: 3-6 key bullet points

4. **Create Content**
   - Write self-contained explanations (no "as we saw before")
   - Include complete, runnable code for main narrative
   - Add TODO exercises with clear instructions and hints
   - Use relative paths for any images (`../images/`)

5. **Validate**
   - Ensure all main narrative code would run top to bottom
   - Check that exercises have hints but no complete solutions
   - Verify image paths are correct
   - Confirm language is clear and at B2-C1 level

6. **Report**
   - Summarize what was created
   - List any images that need to be added to `images/`
   - Note any follow-up actions needed

## Important
- Do NOT modify source notebooks
- Save images locally in `images/` folder
- Follow the numbered naming convention (e.g., `03_intro_to_pillow.ipynb`)
