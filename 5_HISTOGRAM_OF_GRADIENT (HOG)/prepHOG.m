function [globalYHOG] = prepHOG(veri)


%%%%%%%% GAUSSIAN SMOOTHING TO Y COMPONENT %%%%%%%%
            
         h = fspecial('gaussian',[3 3]);
         yf = imfilter(veri,h);

%%%%%%%% Y COMPONENT NORMALIZATION %%%%%%%%

         mindata = double(min(min(yf)));
         maxdata = double(max(max(yf)));
         normalised = double((double(veri)-mindata)/double((maxdata)-mindata));

         globalYHOG = normalised;
           
end

