function factors = ComputeAllSimilarityFactors (images, K)
% This function computes all of the similarity factors for the images in
% one word.
%
% Input:
%   images: An array of structs containing the 'img' value for each
%     character in the word.
%   K: The alphabet size (accessible in imageModel.K for the provided
%     imageModel).
%
% Output:
%   factors: Every similarity factor in the word. You should use
%     ComputeSimilarityFactor to compute these.
%
% Copyright (C) Daphne Koller, Stanford University, 2012

n = length(images);
nFactors = nchoosek(n, 2);

factors = repmat(struct('var', [], 'card', [], 'val', []), nFactors, 1);

idx = 1
% Your code here:
for i = 1:n-1
    for j = i+1:n
        
        similarity = ImageSimilarity(images(i).img, images(j).img);
        vals = ones(K, K);
        vals(1:K+1:K*K) = similarity;

        % Your code here:
        factors(idx).var = [i, j];
        factors(idx).card = [K K];
        factors(idx).val = reshape(vals, K*K, 1);
        
        idx = idx + 1;
    end
end

end

