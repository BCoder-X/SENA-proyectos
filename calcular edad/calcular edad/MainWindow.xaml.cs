using System;
using System.Windows;

namespace calcular_edad
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            datePickerActual.SelectedDate = DateTime.Now; // Fecha actual por defecto
        }

        private void CalcularEdad_Click(object sender, RoutedEventArgs e)
        {
            if (datePickerNacimiento.SelectedDate.HasValue && datePickerActual.SelectedDate.HasValue)
            {
                DateTime fechaNacimiento = datePickerNacimiento.SelectedDate.Value;
                DateTime fechaActual = datePickerActual.SelectedDate.Value;

                if (fechaNacimiento > fechaActual)
                {
                    MessageBox.Show("La fecha de nacimiento no puede ser mayor que la fecha actual.", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                int edad = fechaActual.Year - fechaNacimiento.Year;

                // Ajustar si aún no ha cumplido años este año
                if (fechaActual < fechaNacimiento.AddYears(edad))
                {
                    edad--;
                }

                textBoxResultado.Text = $"Tienes {edad} años.";
            }
        }

        private void ActualizarEstadoBoton(object sender, EventArgs e)
        {
            // Habilita el botón solo si ambas fechas están seleccionadas
            btnCalcular.IsEnabled = datePickerNacimiento.SelectedDate.HasValue && datePickerActual.SelectedDate.HasValue;
        }
    }
}
