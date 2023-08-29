using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Eval.Models;

namespace Eval.Controllers
{
    
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View("Index");
        }

        public IActionResult CrearEmpleado(List<Sector> Lista)
        {
            ViewBag.ListaSectores = Lista;
            return View("CrearEmpleado");
        }

        
        [HttpPost] public IActionResult GuardarEmpleado(Empleado item)
        {
            for (int i = 0; i < 5; i++)
            {
                if (item.IdSector < 3 && string.IsNullOrEmpty(item.NombreEmpleado))
                {
                    BD.InsertEmpleado(item);
                }
                else
                {
                    return RedirectToAction("CrearEmpleado");
                }
            }
             return View();
        }
        int sumaAños = 0;
        int cantEmpleados = 1;
         public IActionResult Empleados(List<Empleado> Lista)
        {
            foreach (Empleado item in Lista)
            {
                sumaAños = sumaAños + item.AntiguedadEmpleado;
                cantEmpleados = item.IdEmpleado++;
            }
            ViewBag.PromedioEmpleados = sumaAños/cantEmpleados;
            ViewBag.ListaEmpleados = Lista;

            return View("Empleados");
        }

            IActionResult eliminarCandidato(int IdEmpleado, int IdSector)
        {
            BD.DeleteEmpleadoById(IdEmpleado);
            return RedirectToAction("verDetalleEmpleado", new { IdEmpleado = IdSector });
        }

        public IActionResult VerDetalleEmpleado(int IdEmpleado)
        {
            ViewBag.Empleado = BD.GetEmpleadoById(IdEmpleado);
            return View("VerDetalleEmpleado");
        }

    }
}