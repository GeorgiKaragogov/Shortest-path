function [cityNames,cityCoords] = ImportCities(fileDir)

    cities = textread(fileDir, '%s', 'delimiter', '\n');
    for i = 1:1:length(cities)
        currentLine = strsplit(cities{i},',');
        cityNames(i,:) = currentLine(1);
        cityCoords(i,1) = str2num(currentLine{2});
        cityCoords(i,2) = str2num(currentLine{3});
    end

end

