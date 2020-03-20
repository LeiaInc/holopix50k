# Holopix50k: A Large-Scale In-the-wild Stereo Image Dataset

![Holopix50k](https://github.com/LeiaInc/holopix50k/blob/pritish-leia/dataset-release/images/mosaic.png "Holopix50k")

With the mass-market adoption of dual-camera mobile phones, leveraging stereo information in computer vision has 
become increasingly important. Current state-of-the-art methods utilize learning-based  algorithms, where the 
amount and quality of training samples heavily influence results. Existing stereo image datasets are limited 
either in size or subject variety. Hence, algorithms trained on such datasets do not generalize well to scenarios 
encountered in mobile photography. We present Holopix50k, a novel in-the-wild stereo image dataset, comprising 49,368 
image pairs contributed by users of the Holopix™ mobile social platform. In this work, we describe our data collection 
process and statistically compare our dataset to other popular stereo datasets. We experimentally show that using our 
dataset significantly improves results for tasks such as stereo super-resolution and self-supervised monocular depth 
estimation. Finally, we showcase practical applications of our dataset to motivate novel works and use cases.

## Downloading the dataset

### Linux/MacOS

To download the complete dataset, run `scripts/download_holopix50k.sh` with the download path as follows:
```shell script
bash scripts/download_holopix50k.sh <DOWNLOAD_DIR>
```

You can also chose to download only the required dataset split by giving the following optional arguments to the script:
```shell script
bash scripts/download_holopix50k.sh <DOWNLOAD_DIR> [train|test|val]
```  

Note that the script temporarily installs the `gsutil` tool to download the dataset. If you face issues installing 
`gsutil`, check out the official installation guide [here](https://cloud.google.com/storage/docs/gsutil_install).
