/**
  * @Author :tmdakm mail_set IloveEi 
  * @Date :2022/11/20 21:00
  * @Git :https://github.com/mailset/OTAKU-with-Minecraft
  */

namespace OTAKU_with_Minecraft;

public static class MauiProgram
{
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();
		builder
			.UseMauiApp<App>()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
			});

		return builder.Build();
	}
}
