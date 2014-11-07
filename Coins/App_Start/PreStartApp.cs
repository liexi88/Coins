using Coins;

[assembly: WebActivatorEx.PreApplicationStartMethod(typeof(PreStartApp), "Start")]
namespace Coins
{
    public static class PreStartApp
    {
        private static readonly NLog.Logger Logger = NLog.LogManager.GetCurrentClassLogger();

        /// <summary>
        /// Метод запускается один раз перед стартом приложения        
        /// </summary>
        public static void Start()
        {
            Logger.Info("Application PreStart");
        }
    }
}