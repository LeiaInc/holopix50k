# Holopix50k: A Large-Scale In-the-wild Stereo Image Dataset

![Holopix50k](https://github.com/LeiaInc/holopix50k/blob/pritish-leia/dataset-release/images/mosaic.png "Holopix50k")

With the mass-market adoption of dual-camera mobile phones, leveraging stereo information in computer vision has 
become increasingly important. Current state-of-the-art methods utilize learning-based  algorithms, where the 
amount and quality of training samples heavily influence results. Existing stereo image datasets are limited 
either in size or subject variety. Hence, algorithms trained on such datasets do not generalize well to scenarios 
encountered in mobile photography.We present Holopix50k, a novel in-the-wild stereo image dataset, comprising 49,368 
image pairs contributed by users of the Holopix™ mobile social platform. In this work, we describe our data collection 
process and statistically compare our dataset to other popular stereo datasets. We experimentally show that using our 
dataset significantly improves results for tasks such as stereo super-resolution and self-supervised monocular depth 
estimation. Finally, we showcase practical applications of our dataset to motivate novel works and use cases.

## Downloading the dataset

### Linux/Mac OS

To download the dataset, you will need to install the `gsutil` tool. To check and install gsutil, run 
`install_gsutil.sh` as follows:
```shell script
bash install_gsutil.sh
```

Once you have installed `gsutil`, run the following command to download the Holopix50k dataset:
```shell script
gsutil -m cp -n -r gs://holopix50k-dataset/Holopix50k <DOWNLOAD_DIR>
```
