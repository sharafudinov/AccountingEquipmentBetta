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
    /// Логика взаимодействия для WorkerPage.xaml
    /// </summary>
    public partial class WorkerPage : Page
    {
        List<StatusOfWorker> statusOfs = new List<StatusOfWorker>();
        Worker _CurrentWorker = new Worker();
        public WorkerPage()
        {
            InitializeComponent();
            statusOfs = AccountingEquipmentEntities.GetContext().StatusOfWorker.ToList();
            statusOfs.Insert(0, new StatusOfWorker { NameOfStatus = "Все работники" });
            FilteCmb.ItemsSource = statusOfs;
            DataContext = _CurrentWorker;

        }
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            FrameManager.MainFrame.Navigate(new EditWorkerPage((sender as Button).DataContext as Worker));
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            FrameManager.MainFrame.Navigate(new EditWorkerPage(null));
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                AccountingEquipmentEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.ToList();
            }
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var EquipmentForRemoving = DgridMyPage.SelectedItems.Cast<Worker>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие {EquipmentForRemoving.Count} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    AccountingEquipmentEntities.GetContext().Worker.RemoveRange(EquipmentForRemoving);
                    AccountingEquipmentEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");
                    DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());

                }
            }
        }

        private void SearchTxt_TextChanged(object sender, TextChangedEventArgs e)
        {
            if(SearchTxt.Text == "")
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.ToList();
            }
            else if(FilteCmb.SelectedIndex == 0)
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.Where(w=>w.Position.PostionName.StartsWith(SearchTxt.Text)).ToList();
            }
            else
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.Where(w => w.Position.PostionName.StartsWith(SearchTxt.Text)&& w.StatusOfWorker.NameOfStatus == FilteCmb.Text).ToList();
            }
        }

        private void FilteCmb_DropDownClosed(object sender, EventArgs e)
        {
            if (FilteCmb.SelectedIndex == 0)
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.ToList();
            }
            else if (SearchTxt.Text == "")
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.Where(w => w.StatusOfWorker.NameOfStatus == FilteCmb.Text).ToList();
            }
            else
            {
                DgridMyPage.ItemsSource = AccountingEquipmentEntities.GetContext().Worker.Where(w => w.Position.PostionName.StartsWith(SearchTxt.Text) && w.StatusOfWorker.NameOfStatus == FilteCmb.Text).ToList();
            }
        }
    }
}
