# Guide to Using BoomRecorder for Bird Song Recording

## Overview
In the lab, we record bird songs using a digital audio workstation (DAW) called **BoomRecorder**. This DAW integrates with hardware (see [Working with Focusrite](https://github.com/NeuralSyntaxLab/lab-handbook/blob/Ido_Lab-handbook/Sound%20recording/Working%20with%20Focusrite.md) for details). BoomRecorder is a user-friendly tool that supports the recording of multiple tracks—up to 256 tracks in the licensed version, which we use in the lab.

This guide covers:
- The main graphical user interface (GUI) of BoomRecorder.
- How to configure recording settings.
- Routing tracks to files and folders.

For further details, refer to the official [BoomRecorder Manual](https://github.com/user-attachments/files/18251557/BoomRecorderManual.pdf).

---

## Recording Panel
The **Recording Panel** is the primary screen in BoomRecorder. It displays user-allocated channels (refer to [Patch Bay](#patch-bay)) and their names. Key components include:
- **Record, Play/Stop, Abort Buttons**
- **Elapsed Time** and **Time Code**
- Buttons for additional features like the Patch Bay and Frequency Analyzer.

### Recording Panel Image
![Recording Panel](https://github.com/user-attachments/assets/9385abc7-a338-4eb9-abe8-dfe2a7c93e7c)

### Labeled Elements:
- **Yellow Arrow**: dB meter for allocated channels.
- **Red Arrow**: Names of allocated channels.
- **Orange Arrow**: 
  - **Top**: Elapsed recording time.
  - **Bottom**: Time code.
- **Green Arrow**: Record, Play, and Stop buttons.
- **Blue Arrow**: Patch Bay button.

---

## Patch Bay
The **Patch Bay** is the central interface for routing inputs to outputs and configuring file paths. In BoomRecorder:
- Inputs, outputs, and files are routed via a matrix.
- Files are saved in specific folders based on user-defined paths.

In the licensed version, up to 256 channels can be routed to 256 inputs and saved across a maximum of 16 folders. Our lab configuration ensures:
1. Each input (e.g., from an acoustic box) is routed to a unique channel.
2. Each channel’s data is saved in a corresponding file, organized into specific folders.

### Patch Bay Image
![Patch Bay](https://github.com/user-attachments/assets/fd08e456-0ddf-4d85-a3ee-eadc18b0408d)

### Labeled Elements:
- **Orange Arrowhead**: Number of channels, files, and folders.
- **Input Matrix (Blue and White)**: Allocates inputs to channels.
- **Output Matrix (Green and White)**: Allocates outputs.
- **Channel-to-File Matrix (Red and White)**: Maps channels to files.
- **File-to-Path Matrix (Red and White)**: Maps files to save paths.
- **Green Rectangle**: Active channels.
- **Red Rectangle**: Folder paths in use.

---

## File Name Settings
Proper file naming is essential for the screening algorithm, which:
1. Detects files containing bird songs.
2. Segments recordings into individual songs.

### File Name Format:
- **Structure**: Room name, two-digit channel number, year, month, day, hour, minute, second.
- **Example Image**:
![File Name Settings](https://github.com/user-attachments/assets/1f99b36b-7f8d-4384-bea0-dfe9127f1164)

---

## Time Settings
Time synchronization between software and hardware is crucial. For details, refer to [Working with Focusrite](https://github.com/NeuralSyntaxLab/lab-handbook/blob/Ido_Lab-handbook/Sound%20recording/Working%20with%20Focusrite.md).

In **BoomRecorder**:
- Use **ADAT** as the clock source.
- Match the sample rate to that of the audio device.

### Time Settings Image
![Time Settings](https://github.com/user-attachments/assets/16149e63-e6e6-47f2-89f7-75dc979e326b)

---

## Handling BoomRecorder Crashes
If BoomRecorder crashes with the error:
> "We lost samples between the audio interface and the i/o cycle"

Do the following:
- Ensure the **master** and **slave** clocks are synchronized. Refer to the section on configuring the Scarlett 18i20 as Master or Slave in [this guide](https://github.com/NeuralSyntaxLab/lab-handbook/blob/Ido_Lab-handbook/Sound%20recording/Working%20with%20Focusrite.md).
