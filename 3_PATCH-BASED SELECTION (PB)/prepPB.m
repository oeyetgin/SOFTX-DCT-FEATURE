function [globalYPB] = prepPB(patch,~)

%%%%%%%% GAUSSIAN SMOOTHING TO Y COMPONENT %%%%%%%%
            
         h = fspecial('gaussian',[3 3]);
         yf = imfilter(patch,h);

%%%%%%%% Y COMPONENT NORMALIZATION %%%%%%%%

         mindata = double(min(min(yf)));
         maxdata = double(max(max(yf)));
         normalised = double((double(yf) -mindata)/double((maxdata)-mindata));

%%%%%%%% DCT AND LOG(ABS(DCT)) %%%%%%%%

         J = dct2(normalised);
         JJ = log(abs(J));
 
         globalYPB = JJ;
            
end