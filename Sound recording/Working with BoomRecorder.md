# Guide to Using BoomRecorder for Bird Song Recording

## Overview
In the lab, we record bird songs using a digital audio workstation (DAW) called BoomRecorder. This DAW integrates with hardware (details in [Working with Focusrite](https://github.com/NeuralSyntaxLab/lab-handbook/blob/Ido_Lab-handbook/Sound%20recording/Working%20with%20Focusrite.md)). BoomRecorder is an intuitive tool that allows recording of multiple tracks—up to 256 tracks with the licensed version, which we use in the lab.

This guide covers:
- The main graphical user interface (GUI) of BoomRecorder.
- Configuring recording settings.
- Routing recording tracks to corresponding files and folders.

For comprehensive details, refer to the official [BoomRecorder Manual](https://github.com/user-attachments/files/18251557/BoomRecorderManual.pdf).

---

## Recording Panel
The **Recording Panel** is the main screen of BoomRecorder. It displays the channels allocated by the user (refer to [Patch Bay](#patch-bay)) and their names. Key elements include:
- **Record, Play/Stop, Abort Buttons**
- **Elapsed Time** and **Time Code**
- Buttons for additional features like the Patch Bay and Frequency Analyzer.

Below is a labeled image of the Recording Panel:
![Recording Panel](https://github.com/user-attachments/assets/9385abc7-a338-4eb9-abe8-dfe2a7c93e7c)

### Labels:
- **Yellow Arrow**: Allocated channels’ dB meter.
- **Red Arrow**: Allocated channel names.
- **Orange Arrow**: Top: Elapsed recording time. Bottom: Time code.
- **Green Arrow**: Record, Play/Stop buttons.
- **Blue Arrow**: Patch Bay button.

---

## Patch Bay
The **Patch Bay** is the central hub for routing inputs to outputs. In BoomRecorder, this screen is used to:
- Route channels to inputs, outputs, and files.
- Define file paths for saved recordings.

In the licensed version, up to 256 channels can be routed to 256 inputs and saved across up to 16 folders. Our configuration ensures:
1. Each input (from a specific acoustic box) is routed to a distinct channel.
2. Each channel’s data is saved in a corresponding file within a specific folder.

### Image Explanation:
![Patch Bay](https://github.com/user-attachments/assets/fd08e456-0ddf-4d85-a3ee-eadc18b0408d)
- **Orange Arrowhead**: Number of channels, files, and folders.
- **Input Matrix (Blue and White)**: Allocates inputs to channels.
- **Output Matrix (Green and White)**: Allocates outputs.
- **Channel-to-File Matrix (Red and White)**: Assigns channels to files.
- **File-to-Path Matrix (Red and White)**: Assigns files to save paths.
- **Green Rectangle**: Active channels.
- **Red Rectangle**: Folder paths in use.

---

## File Name Settings
Correct file naming is critical for the screening algorithm, which:
1. Identifies files containing bird songs.
2. Segments files into individual songs.

### File Name Structure:
- **Format**: Room name, two-digit channel number, year, month, day, hour, minute, second.
- Example in image:
![File Name Settings](https://github.com/user-attachments/assets/1f99b36b-7f8d-4384-bea0-dfe9127f1164)

---

## Time Settings
(Section under construction.)
