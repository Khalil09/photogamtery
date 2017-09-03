im = imread('imagem1_linhas.jpg');
imshow(im);
pt1 = ginput(1);
pt2 = ginput(1);
pt3 = ginput(1);
pt4 = ginput(1);
v = ginput(1);

hr = sqrt(((pt1(1,1) - pt2(1,1)).^2) + ((pt1(1,2) - pt2(1,2)).^2));
hinf = sqrt(((v(1,1) - pt2(1,1)).^2) + ((v(1,2) - pt2(1,2)).^2));
hl = sqrt(((pt3(1,1) - pt4(1,1)).^2) + ((pt3(1,2) - pt4(1,2)).^2));
hlinf = sqrt(((v(1,1) - pt3(1,1)).^2) + ((v(1,2) - pt3(1,2)).^2));

HR = 1.75;

H = HR*(hl*hinf)/(hr*hlinf);