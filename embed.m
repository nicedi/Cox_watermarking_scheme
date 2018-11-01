function imgWM = embed(img, randN, alpha)
	%%[row col] = size(img);
	dctCo = dct2(img);
	[B, IX] = sort(dctCo(:), 'descend');
	B(2:1001) = B(2:1001) .* (1 + alpha*randN);
	[~, IX2] = sort(IX); %% recover dct coefficients
	dctCo2 = reshape(B(IX2), size(img));
	imgWM = idct2(dctCo2);
end