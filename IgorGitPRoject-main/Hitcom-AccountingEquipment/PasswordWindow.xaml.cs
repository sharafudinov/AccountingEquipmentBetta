using Syncfusion.Windows.Shared;
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
using System.Windows.Shapes;

namespace Hitcom_AccountingEquipment
{
    /// <summary>
    /// Логика взаимодействия для PasswordWindow.xaml
    /// </summary>
    public partial class PasswordWindow : ChromelessWindow
    {
        public PasswordWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var WorkerFPs = AccountingEquipmentEntities.GetContext().Worker.Where(w => w.id == SenderMail.IntId).FirstOrDefault();
            if(FirstEnterPass.Text != SecondEnterPass.Text)
            {
                MessageBox.Show("Введеные пароли не совпадают", "Внимание", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            else
            {
                WorkerFPs.Password = FirstEnterPass.Text;
                WorkerFPs.CheckFirstVisit = false;
                AccountingEquipmentEntities.GetContext().SaveChanges();
                this.Close();
            }
        }
    }
}
