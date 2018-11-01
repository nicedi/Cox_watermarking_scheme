function WMRecover = extract(imgOrigin, imgReceive,alpha)
	%% Ci'=Ci(1+alpha*Mi)
	dctCo1 = dct2(imgOrigin);
	dctCo2 = dct2(imgReceive);
	[B1, IX1] = sort(dctCo1(:), 'descend');

	%% use original image to extract watermark
	dctVec = dctCo2(:);
	B2 = dctVec(IX1);

	WMRecover = ((B2(2:1001)./B1(2:1001))-1)/alpha;
end