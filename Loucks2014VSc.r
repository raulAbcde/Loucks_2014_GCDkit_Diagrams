#####################################################################
#                            V/Sc vs SiO2                           #
#     Loucks (2014) Distinctive composition of copper-ore-forming   #
#     arc magmas. Australian Journal of Earth Sciences,             #
#     61:1, 5-16, DOI: 10.1080/08120099.2013.865676                 #
#####################################################################

Loucks2014VSc<-function(){
x.data<<-WR[,"SiO2"]
y.data<<-WR[,"V"]/WR[,"Sc"]

temp1<-list(
    clssf=list("NULL",use=2:3,rcname=c("Fertile","Non-fertile")),
    lines1=list("lines",y=c(10.56,500.00,500.00,500.00,500.00,500.00,500.00,500.00,500.00,500.00,500.00,500.00,500.00,500.00,500.00,5.55,5.94,6.32,6.71,7.09,7.48,7.86,8.25,8.63,9.02,9.40,9.79,10.17,10.56),
                x=c(57.00,57.00,58.00,59.00,60.00,61.00,62.00,63.00,64.00,65.00,66.00,67.00,68.00,69.00,70.00,70.00,69.00,68.00,67.00,66.00,65.00,64.00,63.00,62.00,61.00,60.00,59.00,58.00,57.00)
                ),
    lines2=list("lines",y=c(0.00,30.00,30.00,10.56,10.17,9.79,9.40,9.02,8.63,8.25,7.86,7.48,7.09,6.71,6.32,5.94,5.55,30.00,30.00,0.00,0.00),
                x=c(45.00,45.00,57.00,57.00,58.00,59.00,60.00,61.00,62.00,63.00,64.00,65.00,66.00,67.00,68.00,69.00,70.00,70.00,80.00,80.00,45.00)
                ),
    lines3=list("lines",x=c(53.00,54.00,55.00,56.00,57.00,58.00,59.00,60.00,61.00,62.00,63.00,64.00,65.00,66.00,67.00,68.00,69.00,70.00,71.00,72.00,73.00,74.00,75.00,76.00),
                y=c(12.10,11.71,11.33,10.94,10.56,10.17,9.79,9.40,9.02,8.63,8.25,7.86,7.48,7.09,6.71,6.32,5.94,5.55,5.17,4.78,4.40,4.01,3.63,3.24),
                col=plt.col[2],lty="longdash"),
    lines4=list("lines",x=c(57,57),
                y=c(10.56,30),
                col=plt.col[2],lty="dotted"),
    lines4=list("lines",x=c(70,70),
                y=c(5.55,30),
                col=plt.col[2],lty="dotted"),
    GCDkit=list("NULL",plot.type="binary",plot.position=152,plot.name="V/Sc - SiO2 (Loucks 2014)")
    )

temp2<-list(
text1=list("text",x=60,y=11,text="Fertile",col=plt.col[2],adj=0),
text2=list("text",x=50,y=8,text="Non-fertile",col=plt.col[2],adj=0)
)

if(getOption("gcd.plot.text")){
    temp<-c(temp1,temp2)}
    else{
    temp<-temp1
}
sheet<<-list(
                       demo=list(
                                fun="plot",
                                call=list(
                                          xlim=c(45,80),
                                          ylim=c(0,30),
                                          main=annotate("V/Sc - SiO2 (Loucks 2014)"),
                                          col="green",
                                          bg="transparent",
                                          fg="black",
                                          xlab=annotate("SiO2"),
                                          ylab=annotate("V/Sc"),
                                          main=""
                                          ),
                                template=temp
                                )
                       )
}
