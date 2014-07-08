ggplot_func <- function(
  LineColor = c("red", "red", "blue", "blue", "green3", "green3", "black", "black", "orange", "orange", "yellow", "cyan", "purple", "purple", "gold", "gold", "navyblue", "navyblue", "cyan", "yellow"),
  LineType = c("solid", "twodash", "solid", "twodash", "solid", "twodash", "solid", "twodash", "solid", "twodash", "solid", "twodash", "solid", "twodash", "solid", "twodash", "solid", "twodash", "solid", "twodash"),
  PointSizes = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
  AxisSize = 12,
  TitleSize = 16,
  LegendSize = 14,
  YMin = 0,
  YMax = max(df$y) * 1.1,
  XMin = 0,
  XMax = max(df$x) * 1.1,
  YLabel = '',
  XLabel = '',
  Background = "grey97",
  MinorGridColor = "snow2",
  MajorGridColor = "snow3",
  MinorGridSize = .5,
  MajorGridSize = .5,
  FigNum = -1,
  FigNumOffset = 0
) {
  p1 = ggplot(df, aes(x = x, y = y)) + 
    geom_line(aes(linetype = Experiments, color = Experiments, size = Experiments)) + 
    scale_size_manual(values = PointSizes) +
    scale_colour_manual(values = LineColor) +
    scale_linetype_manual(values= LineType) + 
    labs(y = YLabel, x = paste(XLabel, '\nFigure', toString(FigNumOffset + FigNum)), title=Title) +
    ylim(YMin, YMax) + xlim(XMin, XMax) + 
    scale_x_continuous(breaks=c(seq(XMin,XMax,by=5)), minor_breaks=seq(XMin,XMax,by=1))  + 
    theme(legend.text = element_text(size = LegendSize, face = "bold")) + 
    theme(axis.text=element_text(size=12), axis.title=element_text(size=AxisSize,face="bold")) +
    theme(plot.title = element_text(size=TitleSize,face="bold")) +
    theme(panel.grid.major = element_line(colour=MajorGridColor, size=MajorGridSize)) +
    theme(panel.grid.minor = element_line(colour=MinorGridColor, size=MinorGridSize)) +
    theme(panel.background = element_rect(fill=Background, colour=Background))
}