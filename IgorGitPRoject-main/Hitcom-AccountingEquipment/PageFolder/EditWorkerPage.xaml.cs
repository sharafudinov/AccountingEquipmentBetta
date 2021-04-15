using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
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
    /// Логика взаимодействия для EditWorkerPage.xaml
    /// </summary>
    public partial class EditWorkerPage : Page
    {
        Worker _CurrentWorker = new Worker() {Login = "testtest",Password = "tasdasd", CheckFirstVisit = false };
        public EditWorkerPage(Worker SeletedWorker)
        {
            InitializeComponent(); if (SeletedWorker != null)
                _CurrentWorker = SeletedWorker;
            DataContext = _CurrentWorker;
            ComboGender.ItemsSource = AccountingEquipmentEntities.GetContext().Gender.ToList();
            ComboPosition.ItemsSource = AccountingEquipmentEntities.GetContext().Position.ToList();
            ComboStatus.ItemsSource = AccountingEquipmentEntities.GetContext().StatusOfWorker.ToList();
        }
    
        
        

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_CurrentWorker.FirstName))
                errors.AppendLine("Введите Фамилию");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_CurrentWorker.id == 0)
                AccountingEquipmentEntities.GetContext().Worker.Add(_CurrentWorker);
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

        private void DialogToPath_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image (*.bmp, *.jpg, *.ico, .png)|.bmp; *.jpg; *.gif; .png|All (.)|.*";
            openFileDialog.ShowDialog();
            string ext = System.IO.Path.GetExtension(openFileDialog.FileName);
            if (ext == ".bmp" || ext == ".ico" || ext == ".png" || ext == ".jpg")
            {
                PhotoWorker.Source = new BitmapImage(new Uri(openFileDialog.FileName));
                _CurrentWorker.Photo = ImageToByte(openFileDialog.FileName);
            }
            else
            {
                MessageBox.Show("Вы выбрали изображение", "Внимание", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
        public byte[] ImageToByte(string Path)
        {
            byte[] image;
            image = File.ReadAllBytes(Path);
            return image;
        }
    }
}
