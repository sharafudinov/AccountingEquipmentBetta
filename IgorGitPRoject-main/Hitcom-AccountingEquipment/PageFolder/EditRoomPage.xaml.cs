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
    /// Логика взаимодействия для EditRoomPage.xaml
    /// </summary>
    public partial class EditRoomPage : Page
    {
        Room _CurrentRoom = new Room();
        public EditRoomPage(Room SelectedRoom)
        {
            InitializeComponent(); if (SelectedRoom != null)
                _CurrentRoom = SelectedRoom;
            DataContext = _CurrentRoom;

            ComboTypeRoom.ItemsSource = AccountingEquipmentEntities.GetContext().TypeOfRoom.ToList();
        }
       
        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (ComboTypeRoom.SelectedItem == null)
                errors.AppendLine("Укажите тип помещения");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_CurrentRoom.id == 0)
                AccountingEquipmentEntities.GetContext().Room.Add(_CurrentRoom);

            try
            {
                AccountingEquipmentEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                FrameManager.MainFrame.GoBack();
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
