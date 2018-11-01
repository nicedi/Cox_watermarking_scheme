function result = SIMCheck(WMRecover, randNums)
	randNums = sign(randNums);
	result = (WMRecover' * randNums) / sqrt(WMRecover' * WMRecover);
end