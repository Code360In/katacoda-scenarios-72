
So this can introduce also a bias in the attributes, which can also be a problem. Maybe one set of your data is skewed, you know, sometimes you need to normalize things versus the actual range seen for that set of values and not just to a 0 to whatever the maximum is scale. There's no set rule as to when you should and shouldn't do this sort of normalization. All I can say is always read the documentation for whatever technique you're using.

So, for example, in scikit-learn their PCA implementation has a whiten option that will automatically normalize your data for you. You should probably use that. It also has some preprocessing modules available that will normalize and scale things for you automatically as well.

Be aware too of textual data that should actually be represented numerically, or ordinally. If you have yes or no data you might need to convert that to 1 or 0 and do that in a consistent matter. So again, just read the documentation. Most techniques do work fine with raw, un-normalized data, but before you start using a new technique for the first time, just read the documentation and understand whether or not the inputs should be scaled or normalized or whitened first. If so, scikit-learn will probably make it very easy for you to do so, you just have to remember to do it! Don't forget to rescale your results when you're done if you are scaling the input data.