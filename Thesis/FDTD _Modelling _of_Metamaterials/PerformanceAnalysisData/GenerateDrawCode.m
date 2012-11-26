% Generates draw code for different plots.

% ----------------------- 1D spatial all plots ------------------------
XMax = 65536;
YMax = 22.9;
XScale = 10;
YScale = 10;

size          = [256 512 1024 2048 4096 8192 16284 24576 32768 65536];
Memory        = [0.098 0.157 0.274 0.51 0.977 1.91 3.79 5.66 7.54 15.04];
%MatlabTime    = [0.712208 0.643046 0.870985 1.102954 1.994659 3.130498 5.268928 7.518241 15.552070 39.261605]; % 2048 steps
MatlabTime    = [0.3561 0.3215 0.4355 0.5515 0.9973 1.5652 2.6345 3.7591 7.7760 19.6308];
CygwinTime    = [0.04 0.040001 0.09 0.14 0.25 0.49 1.034 1.512 2.632 5.536];
gccnixTime    = [0.014 0.02 0.055 0.1 0.18 0.48 1.15 1.71 2.3 4.9];
VCTime        = [0.06 0.06 0.11 0.15 0.27 0.46 1.062452 1.312 2.994 5.468];
OCLnixemuTime = [0.6 0.65 0.88 1.3 2 3.3 5.97 8.5 11.2 22.18];
OCLwinemuTime = [0.75 0.78 1.12 1.28 1.76 3.1 5.7 11.19 16.21 22.9];
OCLnixTime    = [];
OCLwinTime    = [0.48 0.46 0.47 0.48 0.48 0.5 0.53 0.59 0.63 0.79];
CUDAnixTime   = [];
CUDAwinTime   = [0.9 0.86 0.83 0.84 0.83 0.892 0.94 1.03 1.06 1.26];

FID = fopen('DrawCode.tex', 'w');

fprintf (FID, '%% 1D spatial with 1024 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,MatlabTime,XMax,YMax,XScale,YScale,'color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CygwinTime,XMax,YMax,XScale,YScale,'color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,gccnixTime,XMax,YMax,XScale,YScale,'color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,VCTime,XMax,YMax,XScale,YScale,'color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixemuTime,XMax,YMax,XScale,YScale,'color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinemuTime,XMax,YMax,XScale,YScale,'color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'color=green'));

% ------------------------- 2D spatial all plot ------------------------
XMax = 1024;
YMax = 586.346;
XScale = 10;
YScale = 10;

size          = [32 64 128 256 384 512 640 768 896 1024]; % Size of one side.
Memory        = [0.33 1.27 5.04 20.06 45.08 80.1 125.1 180.16 245.18 320.2]; % MB
MatlabTime    = [1.168 1.51 2.88 11.76 35.63 72.3 127.75 199.84 261.35 361.58];
CygwinTime    = [0.049 0.23 1.194 17.934 24.356 148.5 149.274 312.6 355.498 586.346];
gccnixTime    = [];
VCTime        = [0.19 0.37 1.31 7.66 22.144 138.994 140.574 287.102 324.406 550.06];
OCLnixemuTime = [0.56 0.68 1 2.92 5.47 10.49 14.28 21.83 29.96 39.59];
OCLwinemuTime = [0.75 0.76 1.03 2.77 5.672 10.5163 14.7 21.74 27.22 39.33];
OCLnixTime    = [];
OCLwinTime    = [0.4 0.4 0.47 0.7 1.182 1.8 2.57 3.45 4.5 5.83];
CUDAnixTime   = [];
CUDAwinTime   = [0.3 0.3 0.4 0.66 1.16 1.8 2.6 3.6 4.84 6.1];

fprintf (FID, '%% 2D spatial with 256 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,MatlabTime,XMax,YMax,XScale,YScale,'color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CygwinTime,XMax,YMax,XScale,YScale,'color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,gccnixTime,XMax,YMax,XScale,YScale,'color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,VCTime,XMax,YMax,XScale,YScale,'color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixemuTime,XMax,YMax,XScale,YScale,'color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinemuTime,XMax,YMax,XScale,YScale,'color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'color=green'));
fclose(FID);
