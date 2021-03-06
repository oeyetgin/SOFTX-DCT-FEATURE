
This code explains how to use the “REVERSE SELECTION OF DCT FEATURES (RS) (PROPOSED-1)” method described in [1].

There are two image databases for feature extraction "INFRARED (IR) and VISIBLE LIGHT (VL)"
 
To extract features for infrared database, “IR*.bmp” should be written in "dir" function, for visible light database, "VL*.bmp" should be used.
 
This folder contains 10 different functions. “mainPB” function will call the rest of the functions. Running main will produce the files below;    

Birlesik_IR/VL_RSC2x2.arff
Birlesik_IR/VL_RSC4x4.arff
Birlesik_IR/VL_RSC8x8.arff
Birlesik_IR/VL_RSC16x16.arff
Birlesik_IR/VL_RSC32x32.arff
Birlesik_IR/VL_RSC64x64.arff
Birlesik_IR/VL_RSC128x128.arff

and for Patch Analysis (for patch performance analysis (patch size is 64x64))

Birlesik_IR/VL_PB64x64_1Patch.arff
Birlesik_IR/VL_PB64x64_2Patch.arff
Birlesik_IR/VL_PB64x64_3Patch.arff
Birlesik_IR/VL_PB64x64_4Patch.arff

After obtaining these “arff” files, WEKA program should be opened and "Knowledge Flow" button is clicked from WEKA GUI CHOOSER. Then "FILE-OPEN" is clicked and "KNOWLEDGE FLOW" file, which will be used for automatic classification with "CLASSIFICATION_MODEL.kf" is selected from the SOFTWARE-X folder, and "OPEN" button is clicked. Then "ARFF LOADER" is clicked. Then "retainsStringsVals" is set to False and "useRelativePath" is set to True. Then "BROWSE" button is selected from the FILENAME tab, and one of the created arff files listed above is selected.

"TEXTSAVER" icon is clicked from the KNOWLEDGE FLOW for each 3 classifier output. In the pop-up window, the address and the name for the results is saved to the "FILE TO SAVE TO" location. "APPEND TO FILE" is set to "TRUE", "WRITE TITLE STRING" is set to "FALSE" and "OK" button is clicked.

Finally, "RUN" button shown at the top left corner of the WEKA program is clicked. The status of the running program can be monitored from the status bar at the bottom of WEKA.

[1] YETGIN,O.E.,GEREK,O.N.,AUTOMATIC RECOGNITION OF SCENES WITH POWER LINE WIRES IN REAL LIFE AERIAL IMAGES USING DCT-BASED FEATURES, Journal of Digital Signal Processing, 2017.
