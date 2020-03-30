clear all;
close all;
clc;

xmin = -10;
xmax = 10;

tamPOP = 20;
numGER = 50;

POP = xmin + rand(tamPOP, 1) * (xmax - xmin);

FX = calculaFX(POP);

XX = xmin:0.1:xmax;
FXX = calculaFX(XX);

for g = 1:numGER
    clf;
    plot(XX, FXX, 'k-');
    hold on;
    plot(POP, FX, 'bo');
    xlabel(num2str(g));
    drawnow();
    
    POPnovo = cruzamento(POP, xmin, xmax);
    FXnovo = calculaFX(POPnovo);
    
    POP = [POP; POPnovo];
    FX = [FX; FXnovo];
    
    [POP, FX] = selecao(POP, FX, tamPOP);
end

min(FX)
