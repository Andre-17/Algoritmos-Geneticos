function [POP, FX] = selecao(POP, FX, tamPOP)

    [~, ind] = sort(FX);
       
    ind = ind(1: tamPOP);
    
    POP = POP(ind);
    FX = FX(ind);
end