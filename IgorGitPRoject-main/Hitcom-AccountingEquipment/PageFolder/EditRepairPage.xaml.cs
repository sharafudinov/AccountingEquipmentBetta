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
    /// Логика взаимодействия для EditRepairPage.xaml
    /// </summary>
    public partial class EditRepairPage : Page
    {
        Repair _CurrentBreakdown = new Repair() {DateOfDeliveryForRepair = DateTime.Now, DateOfReceiving = DateTime.Now.AddDays(7) };
        public EditRepairPage(Repair SelectedBRKDWN)
        {
            InitializeComponent(); 
            if (SelectedBRKDWN != null)
                _CurrentBreakdown = SelectedBRKDWN;
            DataContext = _CurrentBreakdown;
            ComboBreakdown.ItemsSource = AccountingEquipmentEntities.GetContext().Breakdown.ToList();
            InventNumber.ItemsSource = AccountingEquipmentEntities.GetContext().EquipmentCard.ToList();
            ComboModel.ItemsSource = AccountingEquipmentEntities.GetContext().Equipment.ToList();
            ComboServiceName.ItemsSource = AccountingEquipmentEntities.GetContext().ServiceOrganization.ToList();
            ComboStatusRepair.ItemsSource = AccountingEquipmentEntities.GetContext().StatusEquipInRepair.ToList();
            ComboFIO.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.ToList();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {

            StringBuilder errors = new StringBuilder();
            if (DPDeliver == null)
                errors.AppendLine("Укажите дату выдачи в ремонт оборудования ");
            if (DPBack == null)
                errors.AppendLine("Укажите дату получения оборудования ");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_CurrentBreakdown.id == 0)
                AccountingEquipmentEntities.GetContext().Repair.Add(_CurrentBreakdown);

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
