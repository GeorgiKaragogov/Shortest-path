function BGShortestPath(bgGraph,graphPlot)

    prompt = {'Enter Starting Point:','Enter Destinations Point :'};
        dlgTitle = 'Shortest path';
        numLines = 1;
        defaultValues = {'Starting point','Destinations point'};
        inputData = inputdlg(prompt,dlgTitle,numLines,defaultValues);

    startPoint = inputData{1};
    endPoint = inputData{2};
    [path, dist] = shortestpath(bgGraph,startPoint,endPoint);
    highlight(graphPlot,path,'EdgeColor','r','NodeColor','r','LineWidth',4);
    title(sprintf('Distance between %s & %s is %.1fkm',startPoint,endPoint,dist/1000),'FontSize',20);

end

