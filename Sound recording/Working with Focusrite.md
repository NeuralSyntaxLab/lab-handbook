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
  - Enables digital I/O mode for configuring the device as a primary sound card or a slave input (see the Daisy Chain section).

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
2. Selected channels will appear in BoomRecorder. Ensure only the necessary channels are selected (e.g., omit SPDIF channels if not in use).

In the example above, **analog channels 3-8** and **ADAT channels 1-6** are selected, while **SPDIF channels** are not.

## Daisy chaining two Scarlett 18i20
Daisy chain refers to the wiring of multiple electrical devices in a sequence or in a ring.
Here, we will explain how to connect two 18i20s and how to set their settings. This wiring scheme will allow us to record 16 analog channels instead of the 8 analog channels that each 18i20. one 18i20 will serve as a master, and eventually, it will be connected to the computer acting as a sound card and as an amplifier. the other 18i20 will serve as the slave, meaning it will be connected to the master (and not to the computer) acting only as a microphone amplifier.
