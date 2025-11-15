# Add TODO Exercise to Notebook

Add a well-structured TODO-based exercise to a specified notebook.

**Arguments**: `$ARGUMENTS` (format: "notebook_path exercise_description")

Example: `/add-exercise notebooks/04_intro_to_opencv.ipynb Apply edge detection to find document boundaries`

## Process

1. **Read Context**
   - Open the specified notebook
   - Understand the current content and flow
   - Identify the best location for the new exercise
   - Read CLAUDE.md for exercise policy

2. **Design Exercise**
   - Clear task description in markdown
   - Relevant to the notebook topic
   - Appropriately challenging (not trivial, not too hard)
   - Build on concepts already introduced in the notebook

3. **Create Exercise Structure**

   ```python
   # Exercise: [Title]

   # Task: [Clear description of what student should do]

   # Hints:
   # - [Helpful hint 1]
   # - [Helpful hint 2]
   # - [Function/method to consider: ...]

   # Your code here:
   # TODO: [Specific step 1]
   # variable_1 = ...

   # TODO: [Specific step 2]
   # result = ...

   # Expected output: [Description of what success looks like]
   # Example: "You should see an image with clear edges highlighted"
   ```

4. **Validation Checklist**
   - [ ] Task is clearly described
   - [ ] Hints are helpful but don't give away the solution
   - [ ] NO complete solutions in comments
   - [ ] Expected output is specified
   - [ ] Exercise fits naturally in the notebook flow
   - [ ] Difficulty is appropriate for Master's level students

5. **Add to Notebook**
   - Insert exercise at the identified location
   - Ensure surrounding cells provide necessary context
   - Verify the notebook still runs (except for TODO cells)

## Important
- NEVER include complete solutions
- Hints should guide thinking, not provide answers
- Students should be able to verify their own success
