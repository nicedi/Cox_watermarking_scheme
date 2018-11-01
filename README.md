# Description

This is a straight forward implementation of Cox's spread spectrum watermarking algorithm ([Ingemar J. Cox, Joe Kilian, F. Thomson Leighton, and Talal Shamoon, "Secure Spread Spectrum Watermarking for Multimedia," IEEE Trans. on Image Processing, Dec. 1997](https://ieeexplore.ieee.org/document/650120).)

*main.m* is the entrance script file, the watermarking procedure follows the embed-attack-extract manner, the corresponding functions are in *embed.m*, *attack.m*, *extract.m* respectively.

The watermark detection is evaluating the correlation between the original watermark and the extracted one. The final visualization shows that the embeded watermark can be distinguished successfully.