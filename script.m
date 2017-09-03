im = imread('image');
imshow(im);
ln1 = int16(getline);
line([ln1(1,1) ln1(2,1)], [ln1(1,2) ln1(2,2)]);
ln2 = int16(getline);
line([ln2(1,1) ln2(2,1)], [ln2(1,2) ln2(2,2)]);