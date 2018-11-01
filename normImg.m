function imgN = normImg(img)
	%% normalizing image
	mi = min(img(:));
	ma = max(img(:));
	imgN = (img-mi)/(ma-mi);
end