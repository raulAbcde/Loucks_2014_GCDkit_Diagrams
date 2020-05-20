#####################################################################
#                            Sr/Y vs SiO2                           #
#     Loucks (2014) Distinctive composition of copper-ore-forming   #
#     arc magmas. Australian Journal of Earth Sciences,             #
#     61:1, 5-16, DOI: 10.1080/08120099.2013.865676                 #
#####################################################################

Loucks2014SrY<-function(){
x.data<<-WR[,"SiO2"]
y.data<<-WR[,"Sr"]/WR[,"Y"]

temp1<-list(
    clssf=list("NULL",use=2:3,rcname=c("Fertile","Non-fertile")),
    lines1=list("lines",x=c(57,57,80,80,57),y=c(35,200,200,35,35),col=plt.col[2]),
    lines2=list("lines",x=c(57,80,80,0,0,57,57),y=c(35,35,0,0,200,200,35),col=plt.col[2]),
    GCDkit=list("NULL",plot.type="binary",plot.position=150,plot.name="Sr/Y - SiO2 (Loucks 2014)")
    )

temp2<-list(
text1=list("text",x=60,y=50,text="Fertile",col=plt.col[2],adj=0),
text2=list("text",x=50,y=28,text="Non-fertile",col=plt.col[2],adj=0)
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
                                          xlim=c(45,75),
                                          ylim=c(0,200),
                                          main=annotate("Sr/Y vs. SiO2 (Loucks 2014)"),
                                          col="green",
                                          bg="transparent",
                                          fg="black",
                                          xlab=annotate("SiO2"),
                                          ylab=annotate(("Sr/Y")),
                                          main=""
                                          ),
                                template=temp
                                )
                       )

}
