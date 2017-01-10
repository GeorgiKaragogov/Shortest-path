function [s,t,weigths,allNodes,nodeNames] = CitiesMaching(cityCoords,cityNames,connections)

    allNodes = [connections(:,1),connections(:,2);...
        connections(:,3),connections(:,4)];
    allNodes = unique(allNodes,'rows');
    
    j = 1;
    for i = 1:1:length(allNodes(:,1))
       index = find(cityCoords(:,1) == allNodes(i,1) & ...
           cityCoords(:,2) == allNodes(i,2));
        if (isempty(index))
            nodeNames{i,1} = ['Node ',num2str(j)];
            j = j + 1;
        else
        	nodeNames{i,1} = cityNames{index};
        end
    end
    
    for i = 1:1:length(connections(:,1))
        index1 = find(allNodes(:,1) == connections(i,1) &...
            allNodes(:,2) == connections(i,2));
        index2 = find(allNodes(:,1) == connections(i,3) &...
            allNodes(:,2) == connections(i,4));      
        s{i} = nodeNames{index1};
        t{i} = nodeNames{index2};
        weigths(i) = connections(i,5);
    end

end

