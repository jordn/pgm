clear;
load('PA3Data.mat');
load('PA3Models.mat');
load('PA3SampleCases.mat');

images = Part1SampleImagesInput;
imageModel.ignoreSimilarity = true;

BuildOCRNetwork (images, imageModel, pairwiseModel, tripletList);
% BuildOCRNetwork (images, imageModel, pairwiseModel, []);

% ComputeEqualPairwiseFactors(images, K)