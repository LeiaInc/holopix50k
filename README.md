# Holopix50k: A Large-Scale In-the-wild Stereo Image Dataset

![Holopix50k](https://github.com/LeiaInc/holopix50k/blob/master/images/mosaic.png "Holopix50k")

With the mass-market adoption of dual-camera mobile phones, leveraging stereo information in computer vision has 
become increasingly important. Current state-of-the-art methods utilize learning-based algorithms, where the 
amount and quality of training samples heavily influence results. Existing stereo image datasets are limited 
either in size or subject variety. Hence, algorithms trained on such datasets do not generalize well to scenarios 
encountered in mobile photography. We present Holopix50k, a novel in-the-wild stereo image dataset, comprising 49,368 
image pairs contributed by users of the Holopix™ mobile social platform. In this work, we describe our data collection 
process and statistically compare our dataset to other popular stereo datasets. We experimentally show that using our 
dataset significantly improves results for tasks such as stereo super-resolution and self-supervised monocular depth 
estimation. Finally, we showcase practical applications of our dataset to motivate novel works and use cases.

## Downloading the dataset

### Linux/MacOS

In order to download the Holopix50k dataset, you will need to run the following command in a 
[Python3](https://www.python.org/downloads/) environment and need either [wget](https://www.gnu.org/software/wget/) or 
[curl](https://curl.haxx.se/docs/install.html) installed on you machine.
 
To download the complete dataset, run `scripts/download_holopix50k.sh` with the download path as follows:
```shell script
bash scripts/download_holopix50k.sh <DOWNLOAD_PATH>
```

The above command will download the dataset at `<DOWNLOAD_PATH>/Holopix50k`.

You can also chose to download only the required dataset split by giving the following optional arguments to the 
script:
```shell script
bash scripts/download_holopix50k.sh <DOWNLOAD_PATH> [train|test|val]
```  

Note that the script temporarily installs the `gsutil` tool to download the dataset. If you face issues installing 
`gsutil`, check out the official installation guide 
[here](https://cloud.google.com/storage/docs/gsutil_install#alt-install).

### Windows

To download the dataset on Windows, you will need [Python](https://www.python.org/downloads/) installed on your 
machine. Once you have Python set up, download `gsutil` from [here](https://storage.googleapis.com/pub/gsutil.zip) and
extract the downloaded archive to some `GSUTIL_ROOT` directory (for example, `C:\gsutil`). Now run the following 
command to download the Holopix50k dataset:
```shell script
python [GSUTIL_ROOT]\gsutil -m cp -n -r gs://holopix50k-dataset/Holopix50k <DOWNLOAD_PATH>
```

If you want to download a particular `SPLIT` ("train", "test" or "val") of the Holopix50k dataset, change and run the 
above command as follows:
```shell script
python [GSUTIL_ROOT]\gsutil -m cp -n -r gs://holopix50k-dataset/Holopix50k/[SPLIT] <DOWNLOAD_PATH>
```

If you face issues installing `gsutil`, follow the installation guide 
[here](https://cloud.google.com/storage/docs/gsutil_install#alt-install).
