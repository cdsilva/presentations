clear all
close all

fmt = '-dpdf';
res = '-r300';

X = randn(100, 2);
plane_points = 3*[-1 -1;
    -1 1;
    1 1;
    1 -1];

make_fig(4,4)
plot(X(:,1),X(:,2),'.r')
set(gca,'xticklabel',[])
set(gca,'yticklabel',[])
print('PCA_2D',fmt, res)

f = @(X) [X(:,1)+X(:,2) X(:,2) X(:,1)-0.5*X(:,2)];

Y = f(X);
plane_points2 = f(plane_points);

make_fig(4,4)
plot3(Y(:,1),Y(:,2),Y(:,3),'.r')
hold on
fill3(plane_points2(:,1),plane_points2(:,2),plane_points2(:,3),'r')
alpha(0.3)
axis tight
set(gca,'xticklabel',[])
set(gca,'yticklabel',[])
set(gca,'zticklabel',[])
grid on
print('PCA_3D',fmt, '-r600')