function graphPlot = PlotGraph(bgGraph,nodeNames,allNodes,cityNames,cityCoords)

nodeCell = table2cell(bgGraph.Nodes);

for i = 1:1:length(nodeCell)
   for j = 1:1:length(nodeNames)
      if (strcmp(nodeCell{i},nodeNames{j}))
          nodeCoords(i,:) = [allNodes(j,1),allNodes(j,2)];
      end
   end
end

graphPlot = plot(bgGraph,'XData',nodeCoords(:,1),'YData',nodeCoords(:,2));
graphPlot.Marker = 'none';
graphPlot.NodeLabel = '';
graphPlot.LineWidth = 1.5;
graphPlot.EdgeColor = 'k';

for i = 1:1:length(cityNames)
	scatter(cityCoords(i,1),cityCoords(i,2),50,...
        'filled','o','MarkerEdgeColor','r','MarkerFaceColor','y');
	text(cityCoords(i,1),cityCoords(i,2),cityNames{i},...
        'FontSize',12,'VerticalAlignment','bottom','HorizontalAlignment','right') ;
end




end

