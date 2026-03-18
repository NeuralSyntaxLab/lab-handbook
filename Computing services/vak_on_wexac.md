# Running VAK on WEXAC (Shared Conda Environment)

This README describes how to run **VAK** on the WEXAC high-performance computing (HPC) service using a **shared, preconfigured conda environment**. The setup allows all lab members to train and run songbird annotation models without maintaining local installations.

---

## Overview

* VAK is installed once in a **shared conda environment** accessible from all WEXAC compute nodes.
* Each user works with **their own data and output directories**.
* The shared environment is **read-only** for users and should not be modified.
* VAK is used via the **terminal**, following standard VAK workflows.

---

## Getting Started

### 1. Connect to WEXAC

* Log into WEXAC within Weizmann netowrk, either using: (a) MobaXterm app (see instructions in [How to use WEXAC](HowTo_WEXAC.md)
) or (b) by accessing the OnDemand service [OpenOnDemand](https://hpcwiki.weizmann.ac.il/en/home/general/OpenOnDemand)
* Launch the server environment configured for **Jupyter Notebook** 
* Select suitable resources, i.e. sufficient RAM (e.g. 32GB) and GPU (A40 or A100). When using OnDemand, the selection screen should include the following details: in RAM set 32G and for GPU set: '1:gmodel=NVIDIAA40' as shown below: <br>
  <img width="300" height="600" alt="image (5)" src="https://github.com/user-attachments/assets/4aee2361-6140-4cd3-84b6-ec5b686b06bf" />
* From the Jupyter interface, open a **Terminal**, as follows when using OnDemand Jupyter option: <br>
  <img width="250" height="250" alt="image (6)" src="https://github.com/user-attachments/assets/ffd0c932-0942-4008-b727-16e9d90f3462" />


### 2. Initialize conda (only if required)

If conda is not already available in your shell:

```bash
ml miniconda
```

### 3. Uploading data

Wexac supports multiple means for upload of data from your local (or network) drive to the Wexac cluster storage (see more info in: https://hpcwiki.weizmann.ac.il/en/home/general/file-management). <br>
However, the simplest and perhaps most convenient option is using the "Home Directory" app directly from OnDemand as follows (see marking on the screenshot below):

<img width="600" height="600" alt="image" src="https://github.com/user-attachments/assets/6f6e0ae1-5523-419c-8a90-d9627344eaef" />

Within the Home Directory app, a basic user interface enables various data manipulations, as in a "primitive" file explorer. The data upload from local or network drive is marked below:

<img width="600" height="200" alt="image (7)" src="https://github.com/user-attachments/assets/ee24ba03-3923-466f-ad7d-3e5457317326" />


### 4. Activate the shared VAK environment

Activate the shared VAK environment named "vak_venv" (under folder "vak") using its full path:

```bash
conda activate /home/labs/yardenc/vak/vak_venv
```

Once activated, the `vak` command and all required dependencies are available.

---

## Using VAK

Run VAK exactly as described in the official documentation. <br>
It is recommeded to place new bird data, along with annotation and configuration files, under a new folder beneath:

```bash
/home/labs/yardenc/vak
```

### Data preparation

```bash
vak prep config_prep.toml
```

### Model training

```bash
vak train config_train.toml
```

### Inference / annotation

```bash
vak predict config_predict.toml
```

Configuration (`.toml`) files must reference **your own data paths** (e.g. under your home or project directory). All outputs (models, predictions, logs) will be written there.

---

## Best Practices

* **Do not install, upgrade, or remove packages** in the shared environment.
* Always use **user-specific directories** for data and results.
* GPU usage is automatically handled by VAK/PyTorch when available.
* For long runs, follow WEXAC guidelines for persistent or scheduled jobs.

---

## Quick Reference

```bash
conda activate /path_to_shared_vak
vak prep    <config>.toml
vak train   <config>.toml
vak predict <config>.toml
```














