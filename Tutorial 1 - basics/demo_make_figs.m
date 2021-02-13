close all; clear all; clc;

%% standardize all figure text font, size, and linewidth
set(0,'defaultTextInterpreter','latex'); % make font latex
set(groot, 'defaultAxesTickLabelInterpreter','latex'); % make font latex
set(groot, 'defaultLegendInterpreter','latex'); % make font latex
set(0,'defaultAxesFontSize',12); % make fontsize 12
set(0,'DefaultLineLineWidth',1); % make linewidth = 1

%% get colorsets

clr = parula;  %pull colors from this colormap

%% generate some data
x = -2:0.1:10;
y1 = x.^2 -x;
y2 = 2*x.^2.*sin(x);

%% Figure 1: demo_fig1
% standardize figure size [0, 0, 600, 200] = [xlocation, ylocation, width, height]
% maximum width for figure = 600 for fontsize = 11
fig = figure('position', [0, 0, 600, 100]); hold on;  

plot(x,y1,'color',clr(3,:));
plot(x,y2,'color',clr(45,:));
xlim([2 10]);

fig = gcf;
fig.PaperPositionMode = 'auto';
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
print(fig,'figures/demo_fig1','-dpdf','-r400')


%% Figure 2: demo_fig2
fig = figure();   % standarize figure size [xlocation, ylocation, width, height]
fig.Position(3) = 200;
fig.Position(4) = 200;

imagesc(randn(5));
pbaspect([1 1 1]);
xtick_labels = {'label 1', 'label 2','label 3','label 4','label 5'};
xticklabels(xtick_labels);
xtickangle(45)

fig = gcf;
fig.PaperPositionMode = 'auto';
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
print(fig,'figures/demo_fig2','-dpdf','-r400')
