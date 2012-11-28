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
gccnixTime    = [0.014 0.02 0.055 0.1 0.18 0.48 1.15 1.71 2.3 4.6];
VCTime        = [0.06 0.06 0.11 0.15 0.27 0.46 1.062452 1.312 2.994 5.468];
OCLnixemuTime = [0.6 0.65 0.88 1.3 2 3.3 5.97 8.5 11.2 22.18];
OCLwinemuTime = [0.75 0.78 1.12 1.28 1.76 3.1 5.7 11.19 16.21 22.9];
OCLnixTime    = [0.411 0.23 0.235 0.238 0.246 0.27 0.31 0.35 0.39 0.55];
OCLwinTime    = [0.48 0.46 0.47 0.48 0.48 0.5 0.53 0.59 0.63 0.79];
CUDAnixTime   = [0.102 0.109 0.1085 0.122 0.143 0.19 0.24 0.28 0.281 0.46];
CUDAwinTime   = [0.9 0.86 0.83 0.84 0.83 0.892 0.94 1.03 1.06 1.26];

FID = fopen('DrawCode.tex', 'w');

fprintf (FID, '%% 1D spatial with 1024 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));

% ----------------------- 1D spatial Small Sizes ------------------------
XMax = 8192;
YMax = 3.2;
XScale = 10;
YScale = 10;

size          = [256 512 1024 2048 4096 8192];
Memory        = [0.098 0.157 0.274 0.51 0.977 1.91 3.79 5.66 7.54 15.04];
%MatlabTime    = [0.712208 0.643046 0.870985 1.102954 1.994659 3.130498 5.268928 7.518241 15.552070 39.261605]; % 2048 steps
MatlabTime    = [0.3561 0.3215 0.4355 0.5515 0.9973 1.5652 2.6345 3.7591 7.7760 19.6308];
CygwinTime    = [0.04 0.040001 0.09 0.14 0.25 0.49 1.034 1.512 2.632 5.536];
gccnixTime    = [0.014 0.02 0.055 0.1 0.18 0.48 1.15 1.71 2.3 4.6];
VCTime        = [0.06 0.06 0.11 0.15 0.27 0.46 1.062452 1.312 2.994 5.468];
OCLnixemuTime = [0.6 0.65 0.88 1.3 2 3.3 5.97 8.5 11.2 22.18];
OCLwinemuTime = [0.75 0.78 1.12 1.28 1.76 3.1 5.7 11.19 16.21 22.9];
OCLnixTime    = [0.411 0.23 0.235 0.238 0.246 0.27 0.31 0.35 0.39 0.55];
OCLwinTime    = [0.48 0.46 0.47 0.48 0.48 0.5 0.53 0.59 0.63 0.79];
CUDAnixTime   = [0.102 0.109 0.1085 0.122 0.143 0.19 0.24 0.28 0.281 0.46];
CUDAwinTime   = [0.9 0.86 0.83 0.84 0.83 0.892 0.94 1.03 1.06 1.26];

fprintf (FID, '%% 1D spatial upto size=2^13 with 1024 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));

% ----------------------- 1D spatial Extended ------------------------
XMax = 2097152;
YMax = 180;
XScale = 10;
YScale = 10;

size          = [256 512 1024 2048 4096 8192 16284 24576 32768 65536 131072 262144 524288 1048576 2097152];
Memory        = [0.098 0.157 0.274 0.51 0.977 1.91 3.79 5.66 7.54 15.04 30.04 60.04 120.04 240 480];

gccnixTime    = [0.014 0.02 0.055 0.1 0.18 0.48 1.15 1.71 2.3 4.6 9.66 19.66 39.48 79.01 158.5];
VCTime        = [0.06 0.06 0.11 0.15 0.27 0.46 1.062452 1.312 2.994 5.468 11.17 22.5 44.98 89.79 179.5];
OCLnixTime    = [0.411 0.23 0.235 0.238 0.246 0.27 0.31 0.35 0.39 0.55 0.89 1.54 2.84 5.45 10.65];
OCLwinTime    = [0.48 0.46 0.47 0.48 0.48 0.5 0.53 0.59 0.63 0.79 1.14 1.76 3.012 5.48 11.264];
CUDAnixTime   = [0.102 0.109 0.1085 0.122 0.143 0.19 0.24 0.28 0.281 0.46 0.82 1.52 2.94 5.763 11.41];
CUDAwinTime   = [0.9 0.86 0.83 0.84 0.83 0.892 0.94 1.03 1.06 1.26 1.74 2.382 3.751 6.342 13.13];

fprintf (FID, '%% 1D spatial extended with 1024 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));

% ----------------------- 1D spatial GPU ------------------------
XMax = 2097152;
YMax = 14;
XScale = 10;
YScale = 10;

size          = [256 512 1024 2048 4096 8192 16284 24576 32768 65536 131072 262144 524288 1048576 2097152];
Memory        = [0.098 0.157 0.274 0.51 0.977 1.91 3.79 5.66 7.54 15.04 30.04 60.04 120.04 240 480];

OCLnixTime    = [0.411 0.23 0.235 0.238 0.246 0.27 0.31 0.35 0.39 0.55 0.89 1.54 2.84 5.45 10.65];
OCLwinTime    = [0.48 0.46 0.47 0.48 0.48 0.5 0.53 0.59 0.63 0.79 1.14 1.76 3.012 5.48 11.264];
CUDAnixTime   = [0.102 0.109 0.1085 0.122 0.143 0.19 0.24 0.28 0.281 0.46 0.82 1.52 2.94 5.763 11.41];
CUDAwinTime   = [0.9 0.86 0.83 0.84 0.83 0.892 0.94 1.03 1.06 1.26 1.74 2.382 3.751 6.342 13.13];

fprintf (FID, '%% 1D spatial GPU comparison 1024 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));

% ------------------------- 2D spatial all plot ------------------------
XMax = 1024;
YMax = 600;
XScale = 10;
YScale = 10;

size          = [32 64 128 256 384 512 640 768 896 1024]; % Size of one side.
Memory        = [0.33 1.27 5.04 20.06 45.08 80.1 125.1 180.16 245.18 320.2]; % MB
MatlabTime    = [1.168 1.51 2.88 11.76 35.63 72.3 127.75 199.84 261.35 361.58];
CygwinTime    = [0.049 0.23 1.194 17.934 24.356 148.5 149.274 312.6 355.498 586.346];
gccnixTime    = [0.052 0.195 1.03 18.95 30.29 126.5 159.2 264.6 333.7 508.8];
VCTime        = [0.19 0.37 1.31 7.66 22.144 138.994 140.574 287.102 324.406 550.06];
OCLnixemuTime = [0.56 0.68 1 2.92 5.47 10.49 14.28 21.83 29.96 39.59];
OCLwinemuTime = [0.75 0.76 1.03 2.77 5.672 10.5163 14.7 21.74 27.22 39.33];
OCLnixTime    = [0.13 0.16 0.21 0.47 0.83 1.4 2.07 2.92 3.94 5.07];
OCLwinTime    = [0.4 0.4 0.47 0.7 1.182 1.8 2.57 3.45 4.5 5.83];
CUDAnixTime   = [0.071 0.081 0.128 0.41 0.8 1.41 2.12 3.04 4.1 5.33];
CUDAwinTime   = [0.3 0.3 0.4 0.66 1.16 1.8 2.6 3.6 4.84 6.1];

fprintf (FID, '%% 2D spatial all plots with 256 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));

% ----------------------- 2D spatial Small Sizes ------------------------
XMax = 384;
YMax = 36;
XScale = 10;
YScale = 10;

size          = [32 64 128 256 384]; % Size of one side.
Memory        = [0.33 1.27 5.04 20.06 45.08 80.1 125.1 180.16 245.18 320.2]; % MB
MatlabTime    = [1.168 1.51 2.88 11.76 35.63 72.3 127.75 199.84 261.35 361.58];
CygwinTime    = [0.049 0.23 1.194 17.934 24.356 148.5 149.274 312.6 355.498 586.346];
gccnixTime    = [0.052 0.195 1.03 18.95 30.29 126.5 159.2 264.6 333.7 508.8];
VCTime        = [0.19 0.37 1.31 7.66 22.144 138.994 140.574 287.102 324.406 550.06];
OCLnixemuTime = [0.56 0.68 1 2.92 5.47 10.49 14.28 21.83 29.96 39.59];
OCLwinemuTime = [0.75 0.76 1.03 2.77 5.672 10.5163 14.7 21.74 27.22 39.33];
OCLnixTime    = [0.13 0.16 0.21 0.47 0.83 1.4 2.07 2.92 3.94 5.07];
OCLwinTime    = [0.4 0.4 0.47 0.7 1.182 1.8 2.57 3.45 4.5 5.83];
CUDAnixTime   = [0.071 0.081 0.128 0.41 0.8 1.41 2.12 3.04 4.1 5.33];
CUDAwinTime   = [0.3 0.3 0.4 0.66 1.16 1.8 2.6 3.6 4.84 6.1];

fprintf (FID, '%% 2D spatial small sizes with 256 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));

% ----------------------- 2D spatial Extended ------------------------
XMax = 1664;
YMax = 100;
XScale = 10;
YScale = 10;

size          = [32 64 128 256 384 512 640 768 896 1024 1152 1280 1408 1536 1664]; % Size of one side.
Memory        = [0.33 1.27 5.04 20.06 45.08 80.1 125.1 180.16 245.18 320.2 405.23 500.26 605.28 720.304 845.33]; % MB
OCLnixemuTime = [0.56 0.68 1 2.92 5.47 10.49 14.28 21.83 29.96 39.59 47.23 59.1 71.55 91.77 99.09];
OCLwinemuTime = [0.75 0.76 1.03 2.77 5.672 10.5163 14.7 21.74 27.22 39.33 46.17 57.66 66.47 88 93.7];
OCLnixTime    = [0.13 0.16 0.21 0.47 0.83 1.4 2.07 2.92 3.94 5.07 6.42 7.89 9.6 11.76 13.75];
OCLwinTime    = [0.4 0.4 0.47 0.7 1.182 1.8 2.57 3.45 4.5 5.83 7.32 9.3 11 13.1 0];
CUDAnixTime   = [0.071 0.081 0.128 0.41 0.8 1.41 2.12 3.04 4.1 5.33 6.8 8.32 10.11 12.16 14.5];
CUDAwinTime   = [0.3 0.3 0.4 0.66 1.16 1.8 2.6 3.6 4.84 6.1 7.6 9.4 11.517 13.7 0];

fprintf (FID, '%% 2D spatial extended plots with 256 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));

% ----------------------- 2D spatial GPU ------------------------
XMax = 1664;
YMax = 15;
XScale = 10;
YScale = 10;

size          = [32 64 128 256 384 512 640 768 896 1024 1152 1280 1408 1536 1664]; % Size of one side.
Memory        = [0.33 1.27 5.04 20.06 45.08 80.1 125.1 180.16 245.18 320.2 405.23 500.26 605.28 720.304 845.33]; % MB
OCLnixTime    = [0.13 0.16 0.21 0.47 0.83 1.4 2.07 2.92 3.94 5.07 6.42 7.89 9.6 11.76 13.75];
OCLwinTime    = [0.4 0.4 0.47 0.7 1.182 1.8 2.57 3.45 4.5 5.83 7.32 9.3 11 13.1 0];
CUDAnixTime   = [0.071 0.081 0.128 0.41 0.8 1.41 2.12 3.04 4.1 5.33 6.8 8.32 10.11 12.16 14.5];
CUDAwinTime   = [0.3 0.3 0.4 0.66 1.16 1.8 2.6 3.6 4.84 6.1 7.6 9.4 11.517 13.7 0];

fprintf (FID, '%% 2D spatial GPU comparison with 256 time steps\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));

fclose(FID);
