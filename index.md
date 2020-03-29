<center><h2> Holopix50k: A Large-Scale In-the-wild Stereo Image Dataset </h2></center>

[*Owen Hua*](https://www.linkedin.com/in/owen-yiwen-hua/), 
[*Puneet Kohli*](https://www.linkedin.com/in/punkohl), 
[*Pritish Uplavikar*](https://www.linkedin.com/in/pritishuplavikar) \*, 
[*Anand Ravi*](https://www.linkedin.com/in/anandravi24) \*, 
[*Saravana Gunaseelan*](https://www.linkedin.com/in/saravanaguna), 
*Jason Orozco*, 
[*Edward Li*](https://www.linkedin.com/in/edward-li-947a3829/)

<center><sub><sup>* denotes equal contribution</sup></sub></center>

![Holopix50k](https://raw.githubusercontent.com/LeiaInc/holopix50k/gh-pages/images/mosaic.png "Holopix50k")

{% include abstractText.html header="Abstract." text="With the mass-market adoption of dual-camera mobile phones, leveraging stereo information in computer vision has 
    become increasingly important. Current state-of-the-art methods utilize learning-based algorithms, where the 
    amount and quality of training samples heavily influence results. Existing stereo image datasets are limited 
    either in size or subject variety. Hence, algorithms trained on such datasets do not generalize well to scenarios 
    encountered in mobile photography. We present Holopix50k, a novel in-the-wild stereo image dataset, comprising 49,368 
    image pairs contributed by users of the Holopix™ mobile social platform. In this work, we describe our data collection 
    process and statistically compare our dataset to other popular stereo datasets. We experimentally show that using our 
    dataset significantly improves results for tasks such as stereo super-resolution and self-supervised monocular depth 
    estimation. Finally, we showcase practical applications of our dataset to motivate novel works and use cases." %}

## Dataset samples

The following video showcases some of the left-right image pairs from the Holopix50k dataset 

{% include videoPlayer.html video="dataset_samples.mp4" %}

The class diversity of the Holopix50k dataset can be seen in the images below

![Holopix50k diversity](https://leiainc.github.com/holopix50k/images/holopix50k_diversity.png "Holopix50k diversity")

## Downloading the dataset

You can find the download instructions for Holopix50k [here](https://github.com/LeiaInc/holopix50k/tree/master#downloading-the-dataset).

## Citation

If you find the dataset or the benchmarks provided in this paper useful in your research, please cite this work using 
the following BibTeX:

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

## License

* The Holopix50k Dataset is made available by Leia, Inc. for non-commercial purposes only.
* You will not, directly or indirectly, reproduce, use, or convey the Holopix50k Dataset or any Content, or any work product or data derived therefrom, for commercial purposes. 
* Leia, Inc. reserves the right to terminate your access to the Holopix50k dataset at any time in its sole discretion.
* The complete Holopix50k dataset license can be found [here](https://leiainc.github.com/holopix50k/LICENSE).

## About

The Holopix50k dataset was crowd-sourced from the [Holopix™](https://www.holopix.com/) mobile social platform. Holopix was created in 2018 by 
[Leia Inc.](https://www.leiainc.com/) as a Lightfield image-sharing social media platform.

## Contact

If you have any questions about the dataset, feel free to contact any of the above listed authors at 
{first}.{last}@leiainc.com. 
