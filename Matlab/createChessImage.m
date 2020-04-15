function img = createChessImage(imgRows, imgCols, chessRows, chessCols, rowPixelsInSquare, columnPixelsInSquare, borderColor, halfBorderThickness)
    chessImg = 0.3*ones(chessRows,chessCols,3);
    for i=1:chessRows
        for j=1:chessCols
            ratioRow = (i-1)/rowPixelsInSquare;
            ratioCol = (j-1)/columnPixelsInSquare;
            
            ratioRow1 = floor(ratioRow);
            ratioCol1 = floor(ratioCol);
            
            if (mod(ratioRow1,2)==0 && mod(ratioCol1,2)==0) || (mod(ratioRow1,2)==1 && mod(ratioCol1,2)==1)
                chessImg(i,j,:)=0.7;
            end
        end
    end
    
   

    for i=0:rowPixelsInSquare:chessRows
        startIndex = max(1,i-halfBorderThickness+1);
        endIndex = min(chessRows,i+halfBorderThickness);
        chessImg(startIndex:endIndex , : , 1) = borderColor(1);
        chessImg(startIndex:endIndex , : , 2) = borderColor(2);
        chessImg(startIndex:endIndex , : , 3) = borderColor(3);
    end  
    
    for j=0:columnPixelsInSquare:chessCols
        startIndex = max(1,j-halfBorderThickness+1);
        endIndex = min(chessCols,j+halfBorderThickness);        
        chessImg(: , startIndex:endIndex , 1) = borderColor(1);
        chessImg(: , startIndex:endIndex , 2) = borderColor(2);
        chessImg(: , startIndex:endIndex , 3) = borderColor(3);
    end 
    
    img = 255*ones(imgRows,imgCols,3);
    startRow = 1 + floor(0.5*(imgRows - chessRows));
    endRow = startRow + chessRows - 1;
    startCol = 1 + floor(0.5*(imgCols - chessCols));
    endCol = startCol + chessCols - 1;  
    img(startRow:endRow , startCol:endCol , :) = chessImg;   
end