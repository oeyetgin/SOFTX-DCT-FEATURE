clear all;
close all;
clc;

%%% SELECT IMAGE DATABASE %%%

    directoryres = dir(strcat('IR*.bmp'));  
    [p, r] = size(directoryres);

    xa = 0;
    t = 0;
    imageSize = 16; %% Start dimension %%

for t = 0:2
    t = t+1;
    
    if  t == 3
        t = t-1;
    end
    
    imageSize = imageSize*t;

    for ii = 1:p
     
%%%%%%% READ IMAGE %%%%%%%

        resAd = directoryres(ii).name;      % resmin adi aliniyor
        veri = rgb2ycbcr(imread(resAd));     
        veri = veri(:,:,1);
        
%%%%%%% IMAGE RESIZE %%%%%%%

        veri = imresize(veri,[imageSize imageSize]);

%%%%%%% PREPROCESSING %%%%%%%

        [globalYHOG] = prepHOG(veri);

%%%%%%% FEATURE EXTRACTION %%%%%%%

        [HOG] = extractHOGFeature(globalYHOG,imageSize,ii);

        ii
    end

end

%%% FEATURE CONCATENATION %%%

    HOG64 = dir('*HOGC64x64.mat');  
    HOG32 = dir('*HOGC32x32.mat');
    HOG16 = dir('*HOGC16x16.mat'); 

    [HOGC64,HOGC32,HOGC16] = concatHOGFeatures(HOG64,HOG32,HOG16,p);

%%% MAKE ARFF FILE %%%

    [arffdataHOG] = arffHOG(HOGC64,HOGC32,HOGC16,p);

