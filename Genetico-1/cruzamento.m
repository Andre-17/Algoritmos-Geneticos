function POPnovo = cruzamento(POP, xmin, xmax)
   
    tamPOP = size(POP, 1);
    POPnovo = POP;
    
    for i = 1:tamPOP
        r = randperm(tamPOP, 2);
        POPnovo(i)  = (POP(r(1)) + (2 * rand - 0.5) * (POP(r(2)) - POP(r(1))));
    end
    
    POPnovo = max(POPnovo, xmin);
    POPnovo = min(POPnovo, xmax);
end