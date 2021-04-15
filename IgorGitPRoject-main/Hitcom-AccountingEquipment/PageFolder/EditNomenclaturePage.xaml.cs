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
    /// Логика взаимодействия для EditNomenclaturePage.xaml
    /// </summary>
    public partial class EditNomenclaturePage : Page
    {
        Nomenclature _currentnomenclature = new Nomenclature();
        public EditNomenclaturePage(Nomenclature SelectedNomeclature)
        {
            InitializeComponent();
            if (SelectedNomeclature != null)
                _currentnomenclature = SelectedNomeclature;
            DataContext = _currentnomenclature;
            ComboTypeNomenclture.ItemsSource = AccountingEquipmentEntities.GetContext().TypeOfNomenclature.ToList();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (ComboTypeNomenclture.SelectedItem == null)
                errors.AppendLine("Укажите вид номенклатуры");
            if (string.IsNullOrWhiteSpace(_currentnomenclature.NameOfNomenclature))
                errors.AppendLine("введите номенклатуру");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_currentnomenclature.id == 0)
                AccountingEquipmentEntities.GetContext().Nomenclature.Add(_currentnomenclature);

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
