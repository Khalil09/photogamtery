im = imread('Imagem5_linhas.jpg');
imshow(im);
footP1 = ginput(1);
headP1 = ginput(1);
pointP1 = ginput(1);
footP2 = ginput(1);
headP2 = ginput(1);
pointP2 = ginput(1);
vanish_p = ginput(1);

hr = sqrt(((footP1(1,1) - pointP1(1,1)).^2) + ((footP1(1,2) - pointP1(1,2)).^2));
hinf = sqrt(((vanish_p(1,1) - pointP1(1,1)).^2) + ((vanish_p(1,2) - pointP1(1,2)).^2));
hl = sqrt(((pointP2(1,1) - footP2(1,1)).^2) + ((pointP2(1,2) - footP2(1,2)).^2));
hlinf = sqrt(((vanish_p(1,1) - pointP2(1,1)).^2) + ((vanish_p(1,2) - pointP2(1,2)).^2));

htrue = sqrt(((footP1(1,1) - headP1(1,1)).^2) + ((footP1(1,2) - headP1(1,2)).^2));
htrue2 = sqrt(((footP2(1,1) - headP2(1,1)).^2) + ((footP2(1,2) - headP2(1,2)).^2));
    
altura = 1.75;

HR = (altura*hr)/htrue;

H = HR*(hl*hinf)/(hr*hlinf);

altura2 = H*htrue2/(hl);

ims = insertText(im, headP2-40, ['Altura: ' num2str(altura2)], 'FontSize', 18);
imshow(ims);