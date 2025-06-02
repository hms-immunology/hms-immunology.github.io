# HMS Immunology GitHub Organization

**Department of Immunology - Harvard Medical School**

## Overview

This repository hosts the main website and organizational resources for the HMS Immunology GitHub organization. The site serves as a central hub for educational materials, analysis pipelines, and research resources developed by the Department of Immunology at Harvard Medical School.

🌐 **Live Site**: [https://hms-immunology.github.io](https://hms-immunology.github.io)

## Repository Structure

```
hms-immunology.github.io/
├── index.html              # Main landing page
├── _config.yml             # Jekyll configuration
├── assets/
│   └── css/
│       └── style.css       # Custom styling
├── templates/              # README templates for repositories
│   ├── README-workshop.md  # Workshop repository template
│   └── README-pipeline.md  # Pipeline repository template
└── README.md              # This file
```

## Features

- **Responsive Design**: Mobile-friendly interface using Bootstrap 5
- **Academic Branding**: Harvard Medical School color scheme and professional styling
- **Resource Catalog**: Organized listing of workshops, pipelines, and educational materials
- **GitHub Integration**: Direct links to all organization repositories
- **SEO Optimized**: Meta tags and structured data for search engines

## Organization Repositories

### Educational Workshops
- **[intro-R-workshop](https://github.com/hms-immunology/intro-R-workshop)** - Introduction to R programming for immunological data analysis
- **[scRNA-workshop](https://github.com/hms-immunology/scRNA-workshop)** - Single-cell RNA sequencing analysis workshop

### Analysis Pipelines
*Pipelines are currently in development and will be added soon.*

### Protocols and Methods
*Laboratory protocols repository coming soon.*

## Getting Started

### For Contributors

1. **Clone the repository**:
   ```bash
   git clone https://github.com/hms-immunology/hms-immunology.github.io.git
   cd hms-immunology.github.io
   ```

2. **Local Development** (requires Jekyll):
   ```bash
   # Install dependencies
   bundle install
   
   # Serve locally
   bundle exec jekyll serve
   
   # Visit http://localhost:4000
   ```

### Creating New Repositories

When creating new repositories for the organization, use the standardized templates:

1. **For Workshops**: Use `templates/README-workshop.md`
2. **For Pipelines**: Use `templates/README-pipeline.md`

### Repository Naming Conventions

- **Workshops**: `[topic]-workshop` (e.g., `intro-R-workshop`, `scRNA-workshop`)
- **Pipelines**: `[analysis-type]-pipeline` (e.g., `immunoseq-pipeline`, `cytof-pipeline`)
- **Protocols**: `[method]-protocols` (e.g., `flowcytometry-protocols`)
- **Datasets**: `[project]-data` (e.g., `teaching-data`, `benchmark-data`)

## Content Guidelines

### Documentation Standards

- Use clear, professional language
- Include comprehensive installation instructions
- Provide usage examples
- Add troubleshooting sections
- Include proper citations and licensing

### Code Standards

- Follow language-specific style guides
- Include comprehensive comments
- Provide unit tests where applicable
- Use version control best practices

## Website Maintenance

### Adding New Content

1. **New Workshop**: 
   - Add repository to organization
   - Update workshop section in `index.html`
   - Add entry to site navigation if needed

2. **New Pipeline**:
   - Create repository using pipeline template
   - Update pipelines section in `index.html`
   - Add to features section

### Updating Styling

- Main styles are in `assets/css/style.css`
- Uses Bootstrap 5 framework
- Custom CSS variables for HMS branding

## Technical Details

### GitHub Pages Configuration

- **Engine**: Jekyll
- **Theme**: Custom (based on Minima)
- **Domain**: `hms-immunology.github.io`
- **Build**: Automatic on push to main branch

### Dependencies

- Bootstrap 5.1.3
- Font Awesome 6.0.0
- Jekyll (for local development)

## Contributing

We welcome contributions from the HMS community and collaborators:

1. **Fork** the repository
2. **Create** a feature branch
3. **Make** your changes
4. **Test** locally (if applicable)
5. **Submit** a pull request

### Types of Contributions

- ✅ Content updates and corrections
- ✅ New educational materials
- ✅ Bug fixes and improvements
- ✅ Documentation enhancements
- ✅ Accessibility improvements

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📧 **Contact**: [Eren Ada, PhD](mailto:eren_ada@hms.harvard.edu)
- 📖 **Documentation**: [Organization Wiki](../../wiki)

## Acknowledgments

- Department of Immunology, Harvard Medical School
- Contributors and collaborators
- Open source community

---

**Maintained by**: Eren Ada, PhD  
**Last Updated**: 06/02/2025  
**Version**: 1.0.0 