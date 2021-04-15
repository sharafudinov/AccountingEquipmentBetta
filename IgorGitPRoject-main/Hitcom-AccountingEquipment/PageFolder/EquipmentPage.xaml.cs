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

namespace Hitcom_AccountingEquipment
{
    /// <summary>
    /// Логика взаимодействия для EquipmentPage.xaml
    /// </summary>
    public partial class EquipmentPage : Page
    {
        List<Manufacturer> manufacturers = new List<Manufacturer>();
        EquipmentCard _CurrentEquipment = new EquipmentCard();
        public EquipmentPage()
        {
            InitializeComponent();
            DataContext = _CurrentEquipment;
            manufacturers= AccountingEquipmentEntities.GetContext().Manufacturer.ToList();
            manufacturers.Insert(0, new Manufacturer { ManufacturerName = "Всё оборудование" });
            FilteCmb.ItemsSource = manufacturers;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //FrameManager.MainFrame.Navigate(new FirstInfoWork());
        }
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            FrameManager.MainFrame.Navigate(new PageFolder.EditEquipmentPage((sender as Button).DataContext as EquipmentCard));
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            FrameManager.MainFrame.Navigate(new PageFolder.EditEquipmentPage(null));
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                AccountingEquipmentEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().EquipmentCard.ToList();
            }
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var EquipmentForRemoving = DgridMyPage.SelectedItems.Cast<EquipmentCard>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие {EquipmentForRemoving.Count} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    AccountingEquipmentEntities.GetContext().EquipmentCard.RemoveRange(EquipmentForRemoving);
                    AccountingEquipmentEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");
                    DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().EquipmentCard.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());

                }
            }
        }


       

        private void SearchTxt_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (SearchTxt.Text == "")
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().EquipmentCard.ToList();
            }
            else if(FilteCmb.SelectedIndex == 0)
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().EquipmentCard.Where(w => w.SerialNumber.StartsWith(SearchTxt.Text)).ToList();
            }
            else
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().
                    EquipmentCard.Where(w => w.SerialNumber.StartsWith(SearchTxt.Text) && w.Equipment.Manufacturer.ManufacturerName == FilteCmb.Text).ToList();
            }
        }

        private void FilteCmb_DropDownClosed(object sender, EventArgs e)
        {
            if (FilteCmb.SelectedIndex == 0)
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().EquipmentCard.ToList();
            }
            else if (SearchTxt.Text == "")
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().EquipmentCard.Where(w => w.Equipment.Manufacturer.ManufacturerName == FilteCmb.Text).ToList();
            }
            else
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().
                    EquipmentCard.Where(w => w.SerialNumber.StartsWith(SearchTxt.Text) && w.Equipment.Manufacturer.ManufacturerName == FilteCmb.Text).ToList();
            }
        }

        private void BtnAddEquipment_Click(object sender, RoutedEventArgs e)
        {
            FrameManager.MainFrame.Navigate(new PageFolder.EditNewEquipmentPage());
        }
    }
}
