# Add Image to Course Materials

Download or create an image for use in course notebooks.

**Arguments**: `$ARGUMENTS` (format: "image_description filename.jpg")

Example: `/add-image medical X-ray showing lung pneumonia xray_pneumonia.jpg`

## Process

1. **Understand Requirements**
   - Parse the image description from arguments
   - Determine the target filename
   - Check if the image already exists in `images/`

2. **Source the Image**
   - Option A: Search the web for a suitable image
   - Option B: Use an existing image from a URL
   - Option C: Generate a description for the user to find manually

3. **Download and Save**
   - Save to `images/` directory with the specified filename
   - Use descriptive filename (e.g., `cv_retail_checkout.jpg` not `img1.jpg`)
   - Prefer common formats: .jpg, .png, .gif
   - Consider file size (compress if needed)

4. **Provide Usage Instructions**

   For Markdown cells:
   ```markdown
   ![Description](../images/filename.jpg)
   ```

   For Python code:
   ```python
   # Using Pillow
   from PIL import Image
   img = Image.open('../images/filename.jpg')

   # Using OpenCV
   import cv2
   img = cv2.imread('../images/filename.jpg')

   # Using matplotlib
   import matplotlib.pyplot as plt
   img = plt.imread('../images/filename.jpg')
   ```

5. **Verification**
   - Confirm file exists in `images/`
   - Note file size and dimensions
   - Suggest adding to git: `git add images/filename.jpg`

## Important Notes

- All images MUST be stored locally in `images/`
- Never reference external URLs directly in notebooks
- Use descriptive filenames that indicate content
- Consider licensing and attribution if applicable
- Large images (>2MB) should be compressed

## Common Image Types for This Course

- Sample photos for CV processing (street scenes, objects)
- Medical images (X-rays, scans) - ensure they're anonymized
- Retail/industrial images (products, defects)
- Diagrams explaining concepts (CNN architecture, etc.)
- Results/output visualizations
