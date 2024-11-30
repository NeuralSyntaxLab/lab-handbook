# Overview

In the lab, we constantly record birds singing. This requires a basic understanding of the hardware in use, how to configure it correctly, and how to troubleshoot potential issues.

This guide provides an overview of the different hardware in use, with a primary focus on the **Focusrite Scarlett 18i20** sound card. It also explains how to configure the device, connect it to a digital audio workstation (DAW) — specifically **BoomRecorder**, and troubleshoot common issues.

---

## Table of Contents

- [Overview](#overview)
- [Hardware and Connectivity](#hardware-and-connectivity)
  - [Key Features](#key-features)
  - [Inputs and Controls](#inputs-and-controls)
- [Microphone Connection](#microphone-connection)
- [Focusrite Control Software](#focusrite-control-software)
  - [Input/Output Routing](#inputoutput-routing)
  - [Output Routing](#output-routing)
  - [Assigning Inputs to Corresponding Outputs](#assigning-inputs-to-corresponding-outputs)
- [Daisy Chaining Two Scarlett 18i20](#daisy-chaining-two-scarlett-18i20)
  - [ADAT and S/PDIF Protocols](#adat-and-spdif-protocols)
  - [Clock Synchronization](#clock-synchronization)
  - [Connection of Two Sound Cards](#connection-of-two-sound-cards)
  - [Configuring the Scarlett 18i20 as Master or Slave](#configuring-the-scarlett-18i20-as-master-or-slave)
- [Troubleshooting Common Issues](#troubleshooting-common-issues)

---

## Hardware and Connectivity

The **Focusrite Scarlett 18i20** sound card enables the recording of multiple audio channels. It features 8 analog inputs, which we use to connect microphones that capture birdsongs. Additionally, the 18i20 serves as an amplifier, supplying 48V phantom power (in two groups of four) to the microphones.

### Key Features

- **48V Phantom Power**: The front panel includes two 48V buttons labeled **1-4** and **5-8** for providing phantom power. Ensure these buttons are turned off when connecting or disconnecting microphones.
- **Air Mode**: A digital effect that emulates the sound of a vintage preamp, enhancing clarity and brightness.
- **PAD**: Reduces the input by 10 dB (can also be controlled via software).
- **INST**: Relevant for jack inputs (not XLR). When activated, it allows quieter instruments (e.g., an electroacoustic guitar) to connect without an amplifier. If off, the input operates in **line mode**.

---

### Inputs and Controls

- **Inputs**: The device features **2 inputs on the front panel** and **6 inputs on the rear panel**, each supporting both XLR and jack cables.
  
![Inputs and controls diagram](https://github.com/user-attachments/assets/ad104cde-afa6-4b25-a180-40c8a26cb696)

- **Gain Control**: Each channel includes a gain control knob and a gain monitoring bar.
- **Output Volume**: The output volume can be adjusted for general connections or specific channels, such as headphones.
- **Line Outputs**: Used to monitor individual channels or all channels (e.g., line outputs 1-2).
- **Optical Outputs/Inputs**: Enable chaining multiple sound cards together to increase the number of channels.

---

## Microphone Connection

To record bird songs, we use an omnidirectional condenser Lavalier microphone (**AT803, Audio-Technica**).

The microphone includes a **bodypack** (see images below). At the bottom of the bodypack:
1. **Regular size XLR** (pink): Connects the bodypack to the sound card.
2. **Small size XLR** (green): Connects to the microphone itself. 

On the side of the bodypack, there is an **on/off/high-pass filter** switch. The straight line represents "on," and the high-pass filter is above it.

<div style="display: inline-block;">
  <img src="https://github.com/user-attachments/assets/411f126f-2865-4c3e-ae86-f204a039c92e" alt="Bottom view" width="300"/>
  <img src="https://github.com/user-attachments/assets/bb6e63e7-d7a4-45a6-9f5d-ed1d2f8dbc5a" alt="Side view" width="300"/>
</div>

---

## Focusrite Control Software

The **Focusrite Control** software is used to configure the sample rate, routing between inputs and outputs, and the clock source, which determines how the unit derives its digital clock. Proper configuration ensures seamless audio processing.

For detailed instructions, refer to the [Focusrite Control Manual](https://github.com/user-attachments/files/17355472/Focusrite.Control.Scarlett.3rd.Gen.User.Guide_EN_0.pdf).

---

### Input/Output Routing

The Focusrite Control software features two main tabs:

1. **Input Settings**: 
   - Displays the eight analog channels of the Scarlett 18i20.
   - Allows control of the PAD or Air function for each channel.
   - Includes sample rate and clock source settings.
   - Enables digital I/O mode for configuring the device as a primary sound card or a slave input (see the [Daisy Chaining Two Scarlett 18i20](#daisy-chaining-two-scarlett-18i20) section).

![Input settings window](https://github.com/user-attachments/assets/f17557ab-01b3-4536-b049-83c376b88f7c)

2. **Output Settings**: 
   - Allows routing of analog channels to outputs or digital outputs for daisy-chaining.
   - Enables rerouting channels to output jacks (e.g., routing all analog channels to outputs 1-2 to monitor them through headphones).

![Output settings window](https://github.com/user-attachments/assets/5c6f3cd7-7c51-4667-a515-c889dc8b9d6c)

---

### Output Routing

This section explains how to assign input channels (analog or digital) to output channels recognized by our DAW, **BoomRecorder**.

1. In the **Output Routing** tab, focus on the **Hardware Inputs** row.
2. At the rightmost side of this row, click the **plus button** to open a list of possible inputs.
3. Choose which input channels you want to add.

![Channel selection window](https://github.com/user-attachments/assets/ef6254eb-4069-4f29-8183-9c60b18509c4)

In the example above, **analog channels 3-8** and **ADAT channels 1-6** are selected, while **S/PDIF channels** are not.

---

### Assigning Inputs to Corresponding Outputs

To assign an input to an output, use the **Output** column (marked in pink in the image below). 

![Input to output assigning](https://github.com/user-attachments/assets/78706a21-6ba5-48e3-a895-0cf60b2f74aa)

For each output channel:
1. Click the white box showing the currently assigned input.
2. A list of possible inputs will appear.
3. Select the desired input for the output channel.

In the example above, the **ADAT 1.3 output channel** is assigned to the **ADAT 1.3 hardware input**.

---

## Daisy Chaining Two Scarlett 18i20

### ADAT and S/PDIF Protocols

- **S/PDIF**: Transmits stereo audio signals over coaxial or optical cables. Ideal for simple setups with two channels.
- **ADAT**: Transmits up to 8 channels at 48 kHz over a single optical cable. Ideal for multichannel setups and chaining devices.

---

### Clock Synchronization

Proper clock synchronization is essential for avoiding audio artifacts (e.g., clicks or pops). One device should act as the **clock master** while others synchronize as **slaves**.

---

### Connection of Two Sound Cards

To daisy chain two sound cards:
1. Connect the **output** of the slave to the **input** of the master using fiber optic cables.
2. Ensure the sampling rate does not exceed 48 kHz for this configuration.

<div style="display: inline-block;">
  <img src="https://github.com/user-attachments/assets/d07a7011-9552-4886-b4c0-eeb2276ff3bd" alt="Connection Diagram" width="300"/>
</div>

---

### Configuring the Scarlett 18i20 as Master or Slave

#### As Master
1. Connect the master sound card to the computer via USB.
2. Set the **clock source** to `ADAT`.
3. Set the **Digital I/O Mode** to `Dual ADAT`.

![Master Settings](https://github.com/user-attachments/assets/18708a5c-731a-4c11-9863-ca61de476faf)

#### As Slave
1. Connect the slave sound card to the computer via USB.
2. Set the **clock source** to `Internal`.
3. Set the **Digital I/O Mode** to `Dual ADAT`.

Finally, connect the master sound card and assign the digital ADAT inputs to the corresponding ADAT output channels, as seen in the [Assigning Inputs to Corresponding Outputs](#assigning-inputs-to-corresponding-outputs) section.

---

## Troubleshooting Common Issues

### Hardware Not Detected

When the **Focusrite Control** software shows **"Hardware not detected"**, delete all `.plist` files in `/Library/Preferences/SystemConfiguration`, ❗**EXCEPT**❗ the file containing the word "boot."

---

### BoomRecorder Crashes

If **BoomRecorder** crashes with the message **"We lost samples between the audio interface and the i/o cycle"**, ensure the master and slave clocks are synchronized, as explained in [Configuring the Scarlett 18i20 as Master or Slave](#configuring-the-scarlett-18i20-as-master-or-slave).
