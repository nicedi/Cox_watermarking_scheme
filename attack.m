function imgR = attack(imgWM)
	%% blurring
	kernel = getGaussianKernel(2);
	imgR = filter2(kernel, imgWM);

	%% noising
	% imgR = imnoise(imgWM,'salt & pepper',0.03);
end