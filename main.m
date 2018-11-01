clear
load randNums.mat
% choose the 500-th watermark to embed
randN = randNums(:,500);
img = im2double(rgb2gray(imread('lena.tif')));
alpha = 0.1;

imgWM = embed(img, randN, alpha);
%%imgWM = normImg(imgWM);

imgReceive = attack(imgWM);
%%imgReceive = imgWM;

WMRecover = extract(img, imgReceive, alpha);
WMRecover = postProc(WMRecover);

result = SIMCheck(WMRecover, randNums);
% show the detection responses, the 500-th watermark has the 
% most significant response under watermark attaction
plot(result)