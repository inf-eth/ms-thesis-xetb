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

fprintf (FID, '%% ------ 1D spatial with 1024 time steps ------\n');
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
fprintf (FID, '%% ---------------------------------------------------------\n');

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

fprintf (FID, '%% ------ 1D spatial upto size=2^13 with 1024 time steps ------\n');
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
fprintf (FID, '%% ---------------------------------------------------------\n');

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

fprintf (FID, '%% ------ 1D spatial extended with 1024 time steps ------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

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

fprintf (FID, '%% ------ 1D spatial GPU comparison 1024 time steps ------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

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

fprintf (FID, '%% ------ 2D spatial all plots with 256 time steps ------\n');
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
fprintf (FID, '%% ---------------------------------------------------------\n');

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

fprintf (FID, '%% ------ 2D spatial small sizes with 256 time steps ------\n');
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
fprintf (FID, '%% ---------------------------------------------------------\n');

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

fprintf (FID, '%% ------ 2D spatial extended plots with 256 time steps ------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

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

fprintf (FID, '%% ------2D spatial GPU comparison with 256 time steps ------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(size,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');
fprintf (FID, '%% =========================================================\n');

% ============================ Temporal Plots =========================
% ----------------------- 1D temporal all plots ------------------------
XMax = 10000;
YMax = 410;
XScale = 10;
YScale = 10;

time          = [100 250 500 1000 1500 2000 2500 3000 3500 4000 4500 5000 6000 7000 8000 9000 10000];
MatlabTime    = [1.689 3.953 7.560 14.841 22.690 30.028 38.529 46.607 54.373 64.192 69.515 76.933 92.696 106.637 130.360 143.274 158.310];
CygwinTime    = [0.540001 1.5 2.78 5.41501 7.86501 11.6451 13.55 16.33 19.34 22.5421 25.3211 28.615 34.3811 43.1835 48.5558 55.9662 62.4116];
gccnixTime    = [0.475511 0.885031 1.7724 3.45167 5.21125 7.1833 8.99476 10.435 12.1273 14.0335 16.8542 17.4363 20.9051 25.2271 27.7636 33.7347 34.9392];
VCTime        = [0.550001 1.265 2.715 5.62501 7.96001 11.22 12.81 15.34 17.99 20.79 23.63 25.835 30.9201 36.5021 42.0911 47.2251 51.3501];
OCLnixemuTime = [2.93798 7.10028 19.1035 27.5242 41.8417 70.872 86.0171 81.3653 93.7317 144.823 160.385 135.087 232.602 255.153 226.166 248.135 350.681];
OCLwinemuTime = [4.40625 10.4196 20.5932 41.6874 62.6686 82.5457 102.512 123.11 147.342 174.981 191.119 205.474 245.777 286.5 327.161 368.986 408.496];
OCLnixTime    = [0.174211 0.164692 0.263106 0.464195 0.664607 0.864395 1.06261 1.26201 1.46039 1.66357 1.86054 2.06465 2.48255 2.86223 3.25734 3.65654 4.05894];
OCLwinTime    = [0.16518 0.271015 0.428024 0.754044 1.02506 1.37708 1.6711 1.97311 2.27913 2.56115 2.87016 3.23719 3.80922 4.42025 5.10529 5.77333 6.46137];
CUDAnixTime   = [0.151914 0.163516 0.253646 0.433809 0.614233 0.794481 0.971873 1.15171 1.33174 1.50881 1.68924 1.86974 2.22813 2.58638 2.94599 3.30335 3.65885];
CUDAwinTime   = [0.369021 0.238014 0.373021 0.627036 0.858049 1.11006 1.36308 1.62709 1.87511 2.13412 2.40914 2.64315 3.14618 3.65821 4.18424 4.69027 5.1643];
% ---------------------------------------------------------------

fprintf (FID, '%% ------- 1D temporal with 65536 size -------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(time,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

% ----------------------- 1D temporal shorter plots ------------------------
XMax = 1000;
YMax = 42;
XScale = 10;
YScale = 10;

time          = [100 250 500 1000];
% ---------------------------------------------------------------

fprintf (FID, '%% ------- 1D temporal for shorter simulations -------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(time,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

% ----------------------- 1D temporal VC++ Comparison ------------------------
XMax = 10000;
YMax = 60;
XScale = 10;
YScale = 10;

time          = [100 250 500 1000 1500 2000 2500 3000 3500 4000 4500 5000 6000 7000 8000 9000 10000];
% ---------------------------------------------------------------

fprintf (FID, '%% ------- 1D temporal comparison with VC++ -------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(time,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

% ----------------------- 1D temporal GPU Comparison ------------------------
XMax = 10000;
YMax = 10;
XScale = 10;
YScale = 10;

time          = [100 250 500 1000 1500 2000 2500 3000 3500 4000 4500 5000 6000 7000 8000 9000 10000];
OCLwinemuTime(2) = 10; % To fit this in.
% ---------------------------------------------------------------

fprintf (FID, '%% ------- 1D temporal GPU comparison -------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(time,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

% ----------------------- 2D temporal all plots ------------------------
XMax = 5000;
YMax = 2800;
XScale = 10;
YScale = 10;

time          = [25 50 100 200 300 400 500 750 1000 1500 2000 2500 3000 3500 4000 4500 5000];
MatlabTime    = [7.518 13.241 26.223 52.183 78.205 105.323 134.853 201.680 271.782 406.033 542.405 653.762 787.913 905.810 1021.210 1146.127 1270.880];
CygwinTime    = [14.5728 29.7637 58.0056 112.596 169.24 224.665 280.57 420.531 560.5460 841.116 1121.32 1402.43 1683 1960.81 2241.38 2519.43 2800];
gccnixTime    = [12.7505 21.2023 41.9428 82.3225 124.299 166.697 204.629 302.846 401.892 600.953 784.445 941.445 1120.95 1290.18 1489.56 1661.71 1764.86];
VCTime        = [13.315 26.21 51.5301 102.245 152.945 203.87 254.631 381.671 522.343 806.594 1057.5 1290.42 1606.25 1836.26 2100.93 2350.01 2594.14];
OCLnixemuTime = [3.97454 2.85277 4.54581 7.27172 10.5096 14.7983 16.6125 24.1789 31.7437 46.569 61.2625 76.5522 89.5715 129.055 137.055 137.161 148.771];
OCLwinemuTime = [2.78 3.08 4.64501 7.87001 11.105 14.345 17.59 25.67 33.78 50.0201 66.0601 82.3401 98.8801 114.76 132.455 146.035 162.89];
OCLnixTime    = [0.850754 0.713101 0.802226 1.03087 1.26408 1.49614 1.72886 2.30122 2.87533 4.08314 5.17947 6.30462 7.45084 8.59283 9.73483 10.8811 12.028];
OCLwinTime    = [1.89211 1.15807 1.24807 1.52509 1.7721 2.02812 2.33113 2.94217 3.57821 4.89328 6.22336 7.42342 8.7285 10.0186 11.2926 12.5917 13.9098];
CUDAnixTime   = [0.808131 0.730291 0.855609 1.10228 1.35301 1.60106 1.8518 2.47366 3.09642 4.34366 5.58775 6.83165 8.07952 9.32397 10.5689 11.814 13.0602];
CUDAwinTime   = [1.26707 1.01106 1.14407 1.41908 1.6781 2.01811 2.21213 2.86916 3.5352 4.96428 6.19135 7.59043 8.90551 10.1786 11.5117 12.8387 14.2458];
% ---------------------------------------------------------------

fprintf (FID, '%% ------- 2D temporal with 512^2 size -------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(time,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

% ----------------------- 2D temporal for shorter simulations ------------------------
XMax = 500;
YMax = 125;
XScale = 10;
YScale = 10;

time          = [25 50 100 200 300 400 500];
% ---------------------------------------------------------------

fprintf (FID, '%% ------- 2D temporal shorter simulations -------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(time,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

% ----------------------- 2D temporal wrt OpenCL emulated ------------------------
XMax = 5000;
YMax = 165;
XScale = 10;
YScale = 10;

time          = [25 50 100 200 300 400 500 750 1000 1500 2000 2500 3000 3500 4000 4500 5000];
% ---------------------------------------------------------------

fprintf (FID, '%% ------- 2D temporal comparison wrt OpenCL emulated -------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(time,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

% ----------------------- 2D temporal GPU comparison ------------------------
XMax = 5000;
YMax = 15;
XScale = 10;
YScale = 10;

time          = [25 50 100 200 300 400 500 750 1000 1500 2000 2500 3000 3500 4000 4500 5000];
% ---------------------------------------------------------------

fprintf (FID, '%% ------- 2D temporal GPU comparison -------\n');
fprintf (FID, '%s\n', GenerateDrawCommand(time,MatlabTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!40!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CygwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!10!yellow'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,gccnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,VCTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=blue!30!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=gray!70!white'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinemuTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=pink'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red!70!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,OCLwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=red'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAnixTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green!50!black'));
fprintf (FID, '%s\n', GenerateDrawCommand(time,CUDAwinTime,XMax,YMax,XScale,YScale,'line width=1.2pt,color=green'));
fprintf (FID, '%% ---------------------------------------------------------\n');

fclose(FID);
