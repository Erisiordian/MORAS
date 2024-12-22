@SCREEN
D = A;

@i
M = D;

@j
M = 0;

@SCREEN
D = A;

@VRH
M = D;

(START_VERTICAL)
	@j
	D = M;
	@128
	D = D - A;
	@END_VERTICAL
	D; JGE
	
	@i
	A = M;
	M = 1;
	
	@32
	D = A;
	
	@i
	M = M + D;
	
	@j
	M = M + 1;
	
	@START_VERTICAL
	0; JMP
(END_VERTICAL)

@i
D = M;

@SJECISTE
M = D;

@j
M = 0;

(START_HORIZONTAL)
	@j
	D = M;
	@8
	D = D - A;
	@END_HORIZONTAL
	D; JGE
	
	@i
	A = M;
	M = -1;
	
	@i
	M = M + 1;
	
	@j
	M = M + 1;
	
	@START_HORIZONTAL
	0; JMP
(END_HORIZONTAL)
@SJECISTE
D = M;