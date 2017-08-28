---
title:  exon和CDS关系
date: "2017-04-06"
author: 刘有才
---

[exon](https://en.wikipedia.org/wiki/Exon) 指的是外显子，而 [CDS](https://en.wikipedia.org/wiki/Coding_region) 则是编码区，它们有什么区别呢？

![](https://upload.wikimedia.org/wikipedia/commons/1/11/Gene_structure.svg)

来看一个真实基因的外显子和编码区，它们在基因组上的坐标如下：

```
# Name of gene: uc010nxq.1
transcription_start <- 11873
transcription_end <- 14409
cds_start <- 12189
cds_end <- 13639
exon_start <- c(11873,12594,13402)
exon_end <- c(12227,12721,14409)
```

进行简单的可视化之后便一目了然了啦：

![](/image/2017/exon-cds.png)