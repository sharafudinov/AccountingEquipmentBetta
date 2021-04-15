using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Hitcom_AccountingEquipment.PageFolder
{
    /// <summary>
    /// Логика взаимодействия для LogPage.xaml
    /// </summary>
    public partial class LogPage : Page
    {
        SenderMail Class = new SenderMail();
        public LogPage()
        {
            InitializeComponent();

          
        }
        
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var idCheck = AccountingEquipmentEntities.GetContext().Worker.Where(w => w.Login.Equals(LoginTextBX.Text) && w.Password.Equals(PasswordTextBX.Text)).Select(s => s.id).FirstOrDefault();
            var idChecklogin = AccountingEquipmentEntities.GetContext().Worker.Where(w => w.Login.Equals(LoginTextBX.Text)).Select(s => s.id).FirstOrDefault();
            if (LoginTextBX.Text == "" && PasswordTextBX.Text == "")
            {

                Fail1.Visibility = Visibility.Visible;
                Fail1.Content = "Введите логин";
                Fail2.Visibility = Visibility.Visible;
                Fail2.Content = "Введите пароль";
            }
            else if (LoginTextBX.Text == "")
            {

                Fail1.Visibility = Visibility.Visible;
                Fail1.Content = "Введите логин";
            }
            else if (PasswordTextBX.Text == "")
            {

                Fail2.Content = "Введите пароль";
                Fail2.Visibility = Visibility.Visible;
            }
            else
            {
                if (idChecklogin == 0)
                {
                    GlobarFail.Visibility = Visibility.Visible;
                    GlobarFail.HorizontalContentAlignment = HorizontalAlignment.Center;
                    GlobarFail.Content = "Пользователя с такими данными не существует!";
                }
                else
                {
                    if (idCheck == 0)
                    {

                        GlobarFail.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        string Code = Class.SenderCode();
                        Class.senderMAil(AccountingEquipmentEntities.GetContext().Worker.Where(w=>w.id == idCheck).Select(s=>s.EmailOfWorker).FirstOrDefault(), Code);
                        SenderMail.IntId = AccountingEquipmentEntities.GetContext().Worker.Where(w => w.id == idCheck).Select(s => s.id).FirstOrDefault();
                                FrameManager.LogFrame.Navigate(new AutherizationPage(Code));
                    }
                }

            }
        }

        
    }
}
