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
    /// Логика взаимодействия для EditNewEquipmentPage.xaml
    /// </summary>
    public partial class EditNewEquipmentPage : Page
    {
        Equipment _currentEquipment = new Equipment();
        public EditNewEquipmentPage()
        {
            InitializeComponent();
            DataContext = _currentEquipment;
            ComboManufacturer.ItemsSource = AccountingEquipmentEntities.GetContext().Manufacturer.ToList();
            ComboNomenclature.ItemsSource = AccountingEquipmentEntities.GetContext().Nomenclature.ToList();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                AccountingEquipmentEntities.GetContext().Equipment.Add(_currentEquipment);
                AccountingEquipmentEntities.GetContext().SaveChanges();
                FrameManager.MainFrame.GoBack();
            }
            catch( Exception ex)
            {
                MessageBox.Show("" + ex);
            }
        }
    }
}
