function WMRecover2 = postProc(WMRecover)
	WMRecover2 = sign(WMRecover - mean(WMRecover));
end