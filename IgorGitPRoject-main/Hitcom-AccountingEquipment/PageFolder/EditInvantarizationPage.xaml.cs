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
    /// Логика взаимодействия для EditInvantarizationPage.xaml
    /// </summary>
    public partial class EditInvantarizationPage : Page
    {
        Inventory _CurrentInventory = new Inventory() {InventoryDate = DateTime.Now };
        public EditInvantarizationPage(Inventory SelectedInventory)
        {
            InitializeComponent();
            if (SelectedInventory != null)
                _CurrentInventory = SelectedInventory;
            DataContext = _CurrentInventory;
            ComboInvent.ItemsSource = AccountingEquipmentEntities.GetContext().EquipmentCard.ToList();
            ComboManufacturerName.ItemsSource = AccountingEquipmentEntities.GetContext().Manufacturer.ToList();
            ComboModel.ItemsSource = AccountingEquipmentEntities.GetContext().Equipment.ToList();
            ComboNameOfNomenclature.ItemsSource = AccountingEquipmentEntities.GetContext().Nomenclature.ToList();
            ComboRoom.ItemsSource = AccountingEquipmentEntities.GetContext().Room.ToList();
            ComboStatus.ItemsSource = AccountingEquipmentEntities.GetContext().StatusOfInventory.ToList();
            ComboFname.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.ToList();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_CurrentInventory.id == 0)
                AccountingEquipmentEntities.GetContext().Inventory.Add(_CurrentInventory);

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
