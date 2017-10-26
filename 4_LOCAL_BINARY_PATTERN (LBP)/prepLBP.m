function [globalYLBP] = prepLBP(VeriValue)

         veri = VeriValue;

%%%%%%%% GAUSSIAN SMOOTHING TO Y COMPONENT %%%%%%%%
         
         h = fspecial('gaussian',[3 3]);
         yf = imfilter(veri,h);

%%%%%%%% Y COMPONENT NORMALIZATION %%%%%%%%

         mindata = double(min(min(yf)));
         maxdata = double(max(max(yf)));
         normalised = double((double(yf)-mindata)/double((maxdata)-mindata));

         globalYLBP = normalised;
            
end

