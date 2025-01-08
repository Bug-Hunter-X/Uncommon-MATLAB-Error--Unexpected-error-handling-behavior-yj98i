function result = myFunctionImproved(input)
  try
    result = input * 2; 
    if input < 0
      error('Input must be non-negative');
    end
  catch e
    % Handle the error gracefully
    fprintf('Error: %s\n', e.message);
    result = NaN; % Or provide a suitable default value
  end
end

% Example usage demonstrating better error handling
input = -5; 
result = myFunctionImproved(input);
input = 5; 
result = myFunctionImproved(input); 