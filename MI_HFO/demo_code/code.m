%% making figure

clear;

% ****** movie setting *********
types = {'MI'};% 'MI' and/or 'HFO'
fontsize = 6;
max_age = 21;
movie_time_range =[1 1.5];
Export_Movie = 0; % 1 = generate movie
frame_number=3;
Export_Fig = 1;% 1 = generate snapshot file
Snapshot_time = [1 5];
% ************************************************************************************
for type = types
    type = cell2mat(type);
    if strcmp(type,'MI')
        savedir = 'C:\output\';
        cd(savedir);

        savename = fullfile(savedir,'tract_result');

        % load tract data
        Tract1 = load('C:\demo_data\tract_demo.mat');
        Tract2 = load('C:\demo_data\tract_demo.mat'); % for demo, ditto.

        MI_HFO_function(fontsize,max_age,movie_time_range,Export_Movie,frame_number,Export_Fig,Snapshot_time,Tract1,Tract2,savename);

    elseif strcmp(type,'HFO')
        savedir = 'C:\output\';
        cd(savedir);

        savename = fullfile(savedir,'tract_result');

        % load tract data
        Tract1 = load('C:\demo_data\tract_demo.mat');
        Tract2 = load('C:\demo_data\tract_demo.mat'); % for demo, ditto.

        MI_HFO_function(fontsize,max_age,movie_time_range,Export_Movie,frame_number,Export_Fig,Snapshot_time,Tract1,Tract2,savename);
    end
end

