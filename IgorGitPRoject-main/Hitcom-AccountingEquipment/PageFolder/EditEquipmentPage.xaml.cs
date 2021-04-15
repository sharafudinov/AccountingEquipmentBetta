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
    /// Логика взаимодействия для EditEquipmentPage.xaml
    /// </summary>
    public partial class EditEquipmentPage : Page
    {
        private EquipmentCard _currentEquipmentCard = new EquipmentCard() { FK_StatusOfEquipment_id =6};

        public EditEquipmentPage(EquipmentCard SelectedEQC)
        {
            InitializeComponent();
            if (SelectedEQC != null)
                _currentEquipmentCard = SelectedEQC;

            DataContext = _currentEquipmentCard;
            ComboNomenclature.ItemsSource = AccountingEquipmentEntities.GetContext().Nomenclature.ToList();
            ComboManufacturer.ItemsSource = AccountingEquipmentEntities.GetContext().Manufacturer.ToList();
            ComboModel.ItemsSource = AccountingEquipmentEntities.GetContext().Equipment.ToList();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            string Current = _currentEquipmentCard.Equipment.Model.Trim(new Char[] {',','*','.','/','#','@','!','"','№','$',';'
                ,'%','^',':','&','?','(',')','-','+','=','_','~','`','<','>','|','{','}','[',']'});
            _currentEquipmentCard.Equipment.Model = Current;
            Current = _currentEquipmentCard.Equipment.Manufacturer.ManufacturerName.Trim(new Char[] {',','*','.','/','#','@','!','"','№','$',';'
                ,'%','^',':','&','?','(',')','-','+','=','_','~','`','<','>','|','{','}','[',']'});
            _currentEquipmentCard.Equipment.Manufacturer.ManufacturerName = Current;
            Current = _currentEquipmentCard.InventNumber.Trim(new Char[] {',','*','.','/','#','@','!','"','№','$',';'
                ,'%','^',':','&','?','(',')','-','+','=','_','~','`','<','>','|','{','}','[',']'});
            _currentEquipmentCard.InventNumber = Current;
            Current = _currentEquipmentCard.InventNumber.Trim(new Char[] {',','*','.','/','#','@','!','"','№','$',';'
                ,'%','^',':','&','?','(',')','-','+','=','_','~','`','<','>','|','{','}','[',']'});
            _currentEquipmentCard.InventNumber = Current;
            if (string.IsNullOrWhiteSpace(_currentEquipmentCard.Equipment.Model))
                errors.AppendLine("Укажите модель оборудования");
            if (string.IsNullOrWhiteSpace(_currentEquipmentCard.InventNumber))
                errors.AppendLine("Укажите инвентарный номер");
            if (string.IsNullOrWhiteSpace(_currentEquipmentCard.Equipment.Manufacturer.ManufacturerName))
                errors.AppendLine("Укажите название производителя");
            if (_currentEquipmentCard.DateOfDelivery == null)
                errors.AppendLine("Укажите дату получения оборудования ");
            if (_currentEquipmentCard.Equipment.Nomenclature.NameOfNomenclature == null)
                errors.AppendLine("Выберите номенклатуру ");


            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_currentEquipmentCard.id == 0)
                AccountingEquipmentEntities.GetContext().EquipmentCard.Add(_currentEquipmentCard);

            //try
            //{
                AccountingEquipmentEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                FrameManager.MainFrame.GoBack();
            //}

            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message.ToString());
            //}
        }
    }
}
