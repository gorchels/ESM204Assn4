
mac_funs <- ggplot(carbon) +
  geom_smooth(aes(Abatement,MC_A, colour="A"), method=lm, se=FALSE) +
  geom_smooth(aes(Abatement,MC_B,colour="B"), method=lm, se=FALSE) +
  geom_smooth(aes(Abatement,MC_C, colour="C"), method=lm, se=FALSE) +
  geom_smooth(aes(Abatement,MC_D, colour="D"), method=lm, se=FALSE) +
  labs(x = bquote('Tons of'~CO[2]), y = "Cost in Dollars") +
  labs(color="Sector")+
  theme_classic()+
  scale_y_continuous(expand = c(0,0))+
  scale_x_continuous(expand = c(0,0))+
  scale_color_manual(values=c("cornflowerblue", "cyan4", "orchid4", "coral"))


mac_funs
