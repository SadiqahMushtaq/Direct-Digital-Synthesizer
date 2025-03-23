% Open the file for reading
fid = fopen('output.txt', 'r');

% Check if the file was opened successfully
if fid == -1
    error('Could not open the file.');
end

% Read data from the file
data = textscan(fid, 'Time=%f ns, out=%s'); % Change 'out' format to string

% Close the file
fclose(fid);

% Extract time and output data
time = data{1};  % Time data
out_str = data{2};   % Output data as strings

% Convert 'x' values to NaN
out = str2double(out_str); % Convert strings to numbers
out(isnan(out)) = NaN;     % Convert NaN to NaN (no change)

% Plot time vs. output, excluding NaN values
figure;
stairs(time, out, 'Color', 'red', 'LineWidth', 1.5, 'DisplayName', 'Digital');
hold on;
plot(time, out, 'Color', 'blue', 'LineWidth', 1.5, 'DisplayName', 'Analog')
xlabel('Time (ns)');
ylabel('Output');
title('Time vs. Output Plot DDS after FIR(250kHz)');
legend('show');
grid on;

% Limit axes
xlim([0, max(time)]); % Limit x-axis from 0 to the maximum time