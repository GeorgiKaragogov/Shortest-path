clear;
clc;

connections = load('edgeList.txt');
[cityNames,cityCoords] = ImportCities('cities.txt');
[s,t,weigths,allNodes,nodeNames] = CitiesMaching(cityCoords,cityNames,connections);
bgGraph = graph(s,t,weigths);

figure('units','normalized','outerposition',[0 0 1 1])
axis equal
axis off
hold on
graphPlot = PlotGraph(bgGraph,nodeNames,allNodes,cityNames,cityCoords);
BGShortestPath(bgGraph,graphPlot);
hold off