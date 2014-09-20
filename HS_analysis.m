a=input("Chequer thermal diffusivity = ");
T0=input("Iniital temperature of chequer = ");
h=input("Surface heat transfer coefficient = ");
lmd=input("Chequer thermal conductivity =");
n=input("No. of elements =");
t=input("Inlet Gas Temperature =");
d=input("Chequer thickness =");
dx=d/n;
dt=(dx)^2/(2*a);
printf("Enter a value of time less than %f\n", dt);
th=input("Elemantal time =");
tend=input("Time to which analysis shall be done =");
n1=tend/th;

T(1:n+1,1:int32(n1+1))=T0;

R=(dx^2)/(a*th);
i=1;
j=1;
time(j)=(j-1)*th;
while (j<=int32(n1+1))
while (i<=n+1)
 if (i==1)
T(i,(j+1))= T(i,j)+2*a*th*(T((i+1),j)-T(i,j))/dx^2+2*h*a*th/(lmd*dx)*(t-T(i,j));
endif
 if (i < n+1 && i!=1)
T(i,(j+1))=(1/R)*(T((i+1),j)+T((i-1),j))+(1-2/R)*T(i,j);
endif
 if(i==n+1)
T(i,(j+1))=T(i,j)+2*a*th/dx^2*(T((i-1),j)-T(i,j));
endif
if(i==j)
break
endif

i=i+1;
endwhile
time(j+1)=(j)*th;
i=1;
j=j+1;
endwhile



i=1;
f=figure(1);
for x=1:n+1
hold on;
plot(time,T(x,:), num2str(i));
i=i+1;
if(i==7)
i=1;

endif
endfor
