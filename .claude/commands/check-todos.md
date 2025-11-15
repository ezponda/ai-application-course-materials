# Check TODOs in Notebooks

Scan notebooks for TODO items and verify they follow the course exercise policy.

**Arguments**: `$ARGUMENTS` (optional: specific notebook path, or leave empty for all)

## Tasks

1. **Search for TODOs**
   - If argument provided: check that specific notebook
   - If no argument: scan all notebooks in `notebooks/` folder
   - Look for patterns like `# TODO:`, `# TODO `, `TODO:` in code cells

2. **Analyze Each TODO**
   - Location (notebook file and cell number)
   - TODO description
   - Check if it has helpful hints
   - Check if there's accidentally a complete solution in comments (not allowed)
   - Check if the expected output is clear

3. **Generate Report**

   ```
   ## TODO Summary

   ### Notebook: [filename]
   - Total TODOs found: X
   - TODOs with hints: Y
   - TODOs missing hints: Z
   - TODOs with accidental solutions: W (these need fixing!)

   ### Details:
   1. Cell [N]: "TODO: [description]"
      - Has hint: Yes/No
      - Has solution: Yes/No (PROBLEM if Yes)
      - Expected output clear: Yes/No
   ```

4. **Recommendations**
   - List any TODOs that need improvement
   - Suggest hints for TODOs that lack them
   - Flag any complete solutions that should be removed
   - Note any unclear expected outputs

## Exercise Policy Reminder
- Hints and guidance: ALLOWED
- Complete solutions in comments: NOT ALLOWED
- Expected outputs: REQUIRED (students need to verify their work)
