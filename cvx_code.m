%% 2D Depth Reconstruction

N = height * width;

cvx_begin
cvx_quiet true
cvx_precision best

% variable
variable z_coordinates(N,1)

% optimization
minimize( norm( TV2 * z_coordinates,1) )
subject to
norm(y - R * z_coordinates, Inf) <= settings.epsilon;

cvx_end

%% 3D Depth Reconstruction

N = height * width;

cvx_begin
cvx_quiet true
cvx_precision best

% variable
variable z(N,1)

% optimization
minimize( norm( TV2 * z,1) )
subject to
norm(y - R * z, Inf) <= settings.epsilon;

cvx_end
