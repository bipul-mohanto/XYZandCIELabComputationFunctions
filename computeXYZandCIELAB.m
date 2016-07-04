%% Bipul Mohanto
% Color in Informatics and MEdia Technology
% email: bipul.mohanto@yahoo.com
% Calculating CIELAB values for reflectances and cmf weighted with D50.
clear all
reflectance = xlsread('ReadAnyReflectance/TransmitanceDataAsXLSFile');
cmf = xlsread('CMFData');

reflectance = reflectance ./ 100;
xyz = reflectance * cmf;

for i = 1:size(xyz,1)
 cielab(i,:) = xyz2lab(xyz(i,:),[96.72 100 81.427]);
end