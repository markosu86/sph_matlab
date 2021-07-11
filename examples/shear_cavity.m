function [ geom, sph, flp ] = shear_cavity( geom, sph, flp, plt)

% function [ geom, sph, flp ] = shear_cavity( geom, sph, flp, plt )
% Generates the initial data for the 2D shear cavity problem with Re = 1.
% See Example 4.3, p. 156, in Liu and Liu, 2003.

% Created:     11.06.2021
% Last change: 24.06.2021

%   Jun 11, 2021:
%       Created.

geom.dim = 2;
n = 41;
np = n - 1;
geom.nrp = np^2;

% Side of the square domain:
xl = 1e-3;
geom.rps = xl/np;

% Water
flp.fluid_type = 2;

% for i = 1:np
%     for j = 1:np
%         k = j + (i-1)*np;
%         geom.x(k, 1) = (i-1)*geom.rps + geom.rps/2;
%         geom.x(k, 2) = (j-1)*geom.rps + geom.rps/2;
%     end
% end

[X,Y] = meshgrid(geom.rps/2:geom.rps:xl-geom.rps/2);

geom.x(:, 1) = X(:);
geom.x(:, 2) = Y(:);

geom.v = zeros( geom.nrp, 2 );

% Density
flp.rho = 1000 * ones( geom.nrp, 1 );   % water density [kg/m^3]
sph.mass = geom.rps^2 * flp.rho;
flp.p = zeros( geom.nrp, 1 );
sph.e = 357.1 * ones( geom.nrp, 1 );
geom.part_type = flp.fluid_type  * ones(geom.nrp, 1);
sph.hsml = geom.rps * ones(geom.nrp, 1);

if plt.real_time
    % Plot.
    figure('units','normalized','outerposition',[0 0 1 1])
    plot( geom.x(:,1), geom.x(:,2), 'o', 'MarkerEdgeColor', 'k', ...
        'MarkerFaceColor', plt.color.Sky, 'MarkerSize', 7 );
    axis equal
    hold on
    pause(0.05)
end

end