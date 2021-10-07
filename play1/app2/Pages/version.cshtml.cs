using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;

namespace Demo1.Pages
{
    public class VersionModel : PageModel
    {
        private readonly ILogger<VersionModel> _logger;

        public VersionModel(ILogger<VersionModel> logger)
        {
            _logger = logger;
        }

        public void OnGet()
        {
        }
    }
}
