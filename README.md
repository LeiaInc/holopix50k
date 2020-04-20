# Holopix50k: A Large-Scale In-the-wild Stereo Image Dataset
### [Project](https://leiainc.github.io/holopix50k/) | [Paper](https://arxiv.org/abs/2003.11172)

[Owen Hua](https://www.linkedin.com/in/owen-yiwen-hua/),
[Puneet Kohli](https://www.linkedin.com/in/punkohl),
[Pritish Uplavikar](https://www.linkedin.com/in/pritishuplavikar) \*,
[Anand Ravi](https://www.linkedin.com/in/anandravi24) \*,
[Saravana Gunaseelan](https://www.linkedin.com/in/saravanaguna),
[Jason Orozco](mailto:jason.orozco@leiainc.com),
[Edward Li](https://www.linkedin.com/in/edward-li-947a3829/) <br>
[Leia Inc.](https://www.leiainc.com/)<br>
<sub><sup>* Denotes equal contribution</sup></sub><br>

<p align="center">
  <img width="640" src="https://github.com/LeiaInc/holopix50k/blob/master/images/mosaic.gif">
</p>

With the mass-market adoption of dual-camera mobile phones, leveraging stereo information in computer vision has become increasingly important. Current state-of-the-art methods utilize learning-based algorithms, where the amount and quality of training samples heavily influence results. Existing stereo image datasets are limited either in size or subject variety. Hence, algorithms trained on such datasets do not generalize well to scenarios encountered in mobile photography. We present Holopix50k, a novel in-the-wild stereo image dataset, comprising 49,368 image pairs contributed by users of the Holopix™ mobile social platform.

## Downloading the dataset

### Linux/MacOS

In order to download the Holopix50k dataset, you will need to run the following command in a
[Python3](https://www.python.org/downloads/) environment and need either [wget](https://www.gnu.org/software/wget/) or
[curl](https://curl.haxx.se/docs/install.html) installed on you machine.

To download the complete dataset, run `scripts/download_holopix50k.sh` with the download path as follows:
```shell script
./scripts/download_holopix50k.sh <DOWNLOAD_PATH>
```

You can also chose to download only the required dataset split by giving the following optional arguments to the
script:
```shell script
./scripts/download_holopix50k.sh <DOWNLOAD_PATH> [train|test|val]
```

The above commands will download the dataset at `<DOWNLOAD_PATH>/Holopix50k`.

Note that the script temporarily installs the `gsutil` tool to download the dataset. If you face issues installing
`gsutil`, check out the official installation guide
[here](https://cloud.google.com/storage/docs/gsutil_install#alt-install).

### Windows

To download the dataset on Windows, you will need [Python](https://www.python.org/downloads/) installed on your
machine. Once you have Python set up, download `gsutil` from [here](https://storage.googleapis.com/pub/gsutil.zip) and
extract the downloaded archive to some `GSUTIL_ROOT` directory (for example, `C:\gsutil`).

Now run the following command to download the complete Holopix50k dataset:
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

## Citation

If you use the Holopix50k dataset in your work, please cite our paper

```
@misc{hua2020holopix50k,
    title={Holopix50k: A Large-Scale In-the-wild Stereo Image Dataset},
    author={Yiwen Hua and Puneet Kohli and Pritish Uplavikar and Anand Ravi and Saravana Gunaseelan and Jason Orozco and Edward Li},
    year={2020},
    eprint={2003.11172},
    archivePrefix={arXiv},
    primaryClass={cs.CV}
}
```
