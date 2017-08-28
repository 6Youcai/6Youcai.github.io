---
title:  贝叶斯公式浅解
date: "2017-03-11"
author: 刘有才
---

# 全概率公式

要说贝叶斯公式，我们不得不先说全概率公式，全概率公式定义如下：

> 若事件A<sub>1</sub>，A<sub>2</sub>，……，A<sub>n</sub>，……满足：

> 1. A<sub>1</sub>，A<sub>2</sub>，……，A<sub>n</sub>，……互不相容，且P(A<sub>i</sub>) > 0 (i=1，2，……)

> 2. A<sub>1</sub> + A<sub>2</sub> + …… + A<sub>n</sub> + …… = Ω（完全性）

> 则对任一事件B有：

$$P(B) = {\sum_{i=1}^{\infty}P(A_i)\cdot P(B|A_i)}$$

以一个示例来演示；

> 
一批一等种子中混有2%二等种子，1.5%三等种子，1%四等种子，已知一等、二等、三等、四等种子长出的穗含有50颗以上麦粒的概率分别为0.5，0.15，0.1，0.05，计算这批种子长出的穗含有50颗以上麦粒的概率。

![](http://ww1.sinaimg.cn/mw690/61e8a1fdgw1e4qjf1s70qj20c80c8q46.jpg)

可以很轻易的得到答案：

$$P = 0.955*0.5 + 0.02*0.15 + 0.015*0.1 + 0.01*0.05 = 0.4825$$

这其实是利用全概率公式

$$P(B) = {\sum_{i=1}^{4}P(A_i)\cdot P(B|A_i)}$$

式中B事件即为这批种子长出的穗含有50颗以上麦粒，事件A<sub>1</sub>、A<sub>2</sub>、A<sub>3</sub>、A<sub>4</sub>表示从中任选一种子，它分别是1，2，3，4等种子；P(B\|A<sub>1</sub>)表示在已知事件A<sub>1</sub>发生的条件下，事件B发生的概率。

上述表达式其实是利用全概率公式把一复杂事件转化为一些列简单事件来求其概率。

# 逆概率公式

Bayes公式又称逆概率公式，有十分广泛的应用，实际含义为在知道了新的结果的情况下修改我们对于原因的认识：

假设A<sub>1</sub>，A<sub>2</sub>，……，A<sub>n</sub>，……是可能导致B出现的原因，P(A<sub>i</sub>)是各种原因出现的可能性大小，一般是过去经验的总结，称为**先验概率**；若现在已知B出现了，我们要求它是由哪个原因引起的概率，这就是P(A<sub>i</sub>\|B)，称为**后验概率**，反应了实验之后对原因发生可能性大小的新认识。

来看一个示例：

>
一项化验有95%的把握把患某疾病的人鉴别出来；但同时对健康人也有1%可能出现假阳性。若此病发病率为0.5%，当某人化验阳性时，他确实患病的概率多大？

首先给出计算结果：

$$P = \frac{0.005×0.95}{0.005×0.95 + 0.995×0.01} = 95 / 294 \approx 0.323$$

这里实际上使用了贝叶斯公式：

$$P(A_i|B) = \frac{P(A_i) \cdot P(B|A_i)} { \sum_{i=1}^{\infty} P(A_i) \cdot P(B|A_i)} $$

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mi>P</mi>
  <mo stretchy="false">(</mo>
  <msub>
    <mi>A</mi>
    <mi>i</mi>
  </msub>
  <mrow class="MJX-TeXAtom-ORD">
    <mo stretchy="false">|</mo>
  </mrow>
  <mi>B</mi>
  <mo stretchy="false">)</mo>
  <mo>=</mo>
  <mfrac>
    <mrow>
      <mi>P</mi>
      <mo stretchy="false">(</mo>
      <msub>
        <mi>A</mi>
        <mi>i</mi>
      </msub>
      <mo stretchy="false">)</mo>
      <mo>&#x22C5;<!-- ⋅ --></mo>
      <mi>P</mi>
      <mo stretchy="false">(</mo>
      <mi>B</mi>
      <mrow class="MJX-TeXAtom-ORD">
        <mo stretchy="false">|</mo>
      </mrow>
      <msub>
        <mi>A</mi>
        <mi>i</mi>
      </msub>
      <mo stretchy="false">)</mo>
    </mrow>
    <mrow>
      <munderover>
        <mo>&#x2211;<!-- ∑ --></mo>
        <mrow class="MJX-TeXAtom-ORD">
          <mi>i</mi>
          <mo>=</mo>
          <mn>1</mn>
        </mrow>
        <mrow class="MJX-TeXAtom-ORD">
          <mi mathvariant="normal">&#x221E;<!-- ∞ --></mi>
        </mrow>
      </munderover>
      <mi>P</mi>
      <mo stretchy="false">(</mo>
      <msub>
        <mi>A</mi>
        <mi>i</mi>
      </msub>
      <mo stretchy="false">)</mo>
      <mo>&#x22C5;<!-- ⋅ --></mo>
      <mi>P</mi>
      <mo stretchy="false">(</mo>
      <mi>B</mi>
      <mrow class="MJX-TeXAtom-ORD">
        <mo stretchy="false">|</mo>
      </mrow>
      <msub>
        <mi>A</mi>
        <mi>i</mi>
      </msub>
      <mo stretchy="false">)</mo>
    </mrow>
  </mfrac>
</math>

记：

A：患病；B：化验阳性

$$P(A|B) = \frac{P(B|A)\cdot P(A)}{P(B|A)\cdot P(A) + P(B|\overline{A})\cdot P(\overline{A})}$$

- 发病（0.5%）
  + 阳性（95%）
  + 阴性（5%）
- 不发病（99.5%）
  + 阳性（1%）
  + 阴性（99%）

可以看出，化验阳性有两种可能来源，其一是“患病+检测结果正确”，其二是“没有患病，但检测结果出错了”，如果将题目换成求任选一个人，检测成阳性的概率，便可利用全概率公式进行计算：

$$P(B) = 0.005×0.95 + 0.995×0.01$$

可以看出`0.005×0.95`即为情况一，`0.995×0.01`为情况二，那么当某人化验阳性时，他确实患病的概率即为情况一除以总的检测成阳性概率。

再来看一个示例：

> 一道题同时列出m个答案，要求学生把其中的一个正确答案选出来；设学生知道那个答案正确的概率为 p，现有一学生答对了，求他确实知道而不是瞎猜的概率。

题干已经提示要答对一道题，其实有两种可能，确实知道正确答案和瞎猜；

<embed src="https://imgcache.qq.com/tencentvideo_v1/playerv3/TPout.swf?max_age=86400&v=20161117&vid=o0371cfs2h1&auto=0" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash">

运用贝叶斯公式可求得概率为：

$$P = \frac{p}{p + \frac{1}{m}(1-p)} = \frac{mp}{1+(m-1)\cdot p}$$
