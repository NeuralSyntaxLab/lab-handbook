# Overview

In the lab, we constantly record birds singing. This requires a basic understanding of the hardware in use, how to configure it correctly, and how to troubleshoot potential issues.

This guide provides an overview of the different hardware in use, with a primary focus on the **Focusrite Scarlett 18i20** sound card. It also explains how to configure the device and connect it to a digital audio workstation (DAW), specifically **BoomRecorder**, our tool of choice.

---

## Hardware and Connectivity

The **Focusrite Scarlett 18i20** sound card enables the recording of multiple audio channels. It features 8 analog inputs, which we use to connect microphones that capture birdsongs. Additionally, the 18i20 serves as an amplifier, supplying 48V phantom power (in two groups of four) to the microphones.

### Key Features

- **48V Phantom Power**: The front panel includes two 48V buttons labeled **1-4** and **5-8** for providing phantom power. Ensure these buttons are turned off when connecting or disconnecting microphones.

- **Air Mode**: A digital effect that emulates the sound of a vintage preamp.

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

The microphone includes a **bodypack** (see images below). At the bottom of the bodypack (left image), there are two XLR connections:
- **Regular size XLR** (pink): Connects the bodypack to the sound card.
- **Small size XLR** (green): Connects to the microphone itself. 

On the side of the bodypack (right image), there is an **on/off/high-pass filter** switch. The straight line represents "on," and the high-pass filter is above it.

<div style="display: inline-block;">
  <img src="https://github.com/user-attachments/assets/411f126f-2865-4c3e-ae86-f204a039c92e" alt="Bottom view" width="300"/>
  <img src="https://github.com/user-attachments/assets/bb6e63e7-d7a4-45a6-9f5d-ed1d2f8dbc5a" alt="Side view" width="300"/>
</div>

---

## The Focusrite Control Software 

The Focusrite Control software is used to configure the sample rate, routing between inputs and outputs, and the clock source (how the unit derives its digital clock). 

Here, we will explain input/output routing and clock source configuration, which are essential for daisy-chaining two Focusrite 18i20 devices. This setup allows us to record 16 channels simultaneously. For more details, refer to [this manual](https://github.com/user-attachments/files/17355472/Focusrite.Control.Scarlett.3rd.Gen.User.Guide_EN_0.pdf).

---

### Input/Output Routing

The Focusrite Control software features two main tabs:

- **Input Settings**: 
  - Displays the eight analog channels of the Scarlett 18i20.
  - Allows control of the PAD or Air function for each channel.
  - Includes sample rate and clock source settings.
  - Enables digital I/O mode for configuring the device as a primary sound card or a slave input (see the [Daisy Chaining Two Scarlett 18i20](#daisy-chaining-two-scarlett-18i20) section).

![Input settings window](https://github.com/user-attachments/assets/f17557ab-01b3-4536-b049-83c376b88f7c)

- **Output Settings**: 
  - Allows routing of analog channels to outputs or digital outputs for daisy-chaining.
  - Enables rerouting channels to headphone jacks (e.g., routing all analog channels to outputs 1-2 to monitor them through headphones).

![Output settings window](https://github.com/user-attachments/assets/5c6f3cd7-7c51-4667-a515-c889dc8b9d6c)

---

### Output Routing

This section explains how to assign input channels (analog or digital) to output channels recognized by our DAW, **BoomRecorder**.

In the **Output Routing** tab, there are two rows. Focus on the **Hardware Inputs** row. At the rightmost side of this row is a **plus button**. Click it to open a window showing all possible inputs (see image below).

![Channel selection window](https://github.com/user-attachments/assets/ef6254eb-4069-4f29-8183-9c60b18509c4)

To add a channel to the hardware inputs:
1. Click the channel so it appears gray.
2. Selected channels will appear in Boomrecorder. Ensure only the necessary channels are selected (e.g., omit S/PDIF channels if not in use).

In the example above, **analog channels 3-8** and **ADAT channels 1-6** are selected, while **S/PDIF channels** are not.

--- 
### Assigning Inputs to Corresponding Outputs

To assign an input to an output, use the **Output** column (marked in pink in the image below). 
![Input to output assigning](https://github.com/user-attachments/assets/78706a21-6ba5-48e3-a895-0cf60b2f74aa)

For each output channel, click the white box showing the currently assigned input. This will open a list of possible inputs that can be assigned to the selected output. In the example above, the **ADAT 1.3 output channel** is assigned to the **ADAT 1.3 hardware input**.


---

## Daisy Chaining Two Scarlett 18i20

Daisy chaining refers to connecting multiple electrical devices in a sequence or ring. Here, we will explain how to connect two Scarlett 18i20 devices and configure their settings. This setup allows us to record **16 analog channels** instead of the 8 analog channels available on a single Scarlett 18i20. One 18i20 will act as the **master**, connecting to the computer as both a sound card and an amplifier. The second 18i20 will act as the **slave**, connected to the master (not directly to the computer) and functioning solely as a microphone amplifier.

---

### The ADAT and S/PDIF Audio Protocols and Clock

**S/PDIF** is designed to transmit stereo digital audio signals over coaxial or optical cables. It supports two channels and is suitable for simple setups.  
**ADAT**, on the other hand, is a professional protocol capable of transmitting up to 8 channels of digital audio at 48 kHz over a single optical cable. It is widely used for multichannel recording and to expand channel counts in studio environments. In this setup, **ADAT** is utilized to increase the total number of analog channels.

**Clock Synchronization**: An important consideration when daisy chaining devices is clock synchronization. Digital devices process audio in discrete samples, with the clock determining the timing of these samples. Unsynchronized clocks can cause audio artifacts such as clicks, pops, or signal degradation. In a daisy chain, one device must act as the **clock master**, providing a reference signal, while all other devices synchronize as **slaves**. This ensures all devices process audio at the same rate, maintaining audio fidelity and preventing data corruption.

---

### Connection of the Two Sound Cards

To daisy chain two sound cards, connect them using **two fiber optic cables**:  
- From the **output** of the slave to the **input** of the master.  

This configuration adds the analog channels (1-8) of the slave device to the master, allowing a sampling rate of up to 48 kHz.

<div style="display: inline-block;">
  <img src="https://github.com/user-attachments/assets/d07a7011-9552-4886-b4c0-eeb2276ff3bd" alt="Connection Diagram" width="300"/>
</div>

---

### Setting the Scarlett 18i20 as Master or Slave

#### **As Master**
1. Connect the master sound card to the computer via USB.  
2. Open the **Focusrite Control** software.  
3. Set the **clock source** to **ADAT**.  
4. Set the **Digital I/O Mode** to **Dual ADAT** (as shown in the leftmost panel of the image below).  

![Master Settings](https://github.com/user-attachments/assets/18708a5c-731a-4c11-9863-ca61de476faf)

#### **As Slave**
1. Connect the slave sound card to the computer via USB.  
2. Open the **Focusrite Control** software.  
3. Set the **clock source** to **internal**.  
4. Set the **Digital I/O Mode** to **Dual ADAT**.  

By correctly configuring the master and slave devices, the system can handle all 16 analog channels seamlessly.
Now connect the Master sound card and assign the digital ADAT inputs to the corresponding ADAT output channels, as seen in the [Assigning Inputs to Corresponding Outputs](#assigning-inputs-to-corresponding-outputs) section.

---
## Troubleshooting common issues
-**Hardware not detected**
The most common issue is when the **Focusrite Control** software does not recognize the connected sound card. This will appear in the focusrite control as a single massage stating **hardware not detected**
this won't interapt the ongoing recording, but needs to be fixed to use the **Focusrite Control** software.

to fix this on a mac go to  `/Library/Preferences/SystemConfiguration`
On that folder, delete every `.plist` file ❗**EXCEPT**❗  the file with the word "boot" in its name.


Before any software issue, you should check the different 

