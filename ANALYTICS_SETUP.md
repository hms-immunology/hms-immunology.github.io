# Visitor Tracking Setup for HMS Immunology GitHub Pages

**Author:** Eren Ada, PhD  
**Date:** 06/02/2025

This document outlines multiple approaches to track users and visitors for the HMS Immunology GitHub Pages sites:
- Main site: https://hms-immunology.github.io/
- Project tracker: https://hms-immunology.github.io/bioinformatics-project-tracker/

## Option 1: Google Analytics (Recommended)

Google Analytics provides comprehensive visitor tracking, user behavior analysis, and detailed reporting.

### Setup Steps:

1. **Create Google Analytics Account**
   - Go to [analytics.google.com](https://analytics.google.com)
   - Create a new account or use existing Google account
   - Set up a new property for your website

2. **Get Tracking ID**
   - For GA4 (current version): Format is `G-XXXXXXXXXX`
   - For Universal Analytics (legacy): Format is `UA-XXXXXXXX-X`

3. **Update Configuration**
   - Replace `G-XXXXXXXXXX` in `_config.yml` with your actual tracking ID
   - Replace `G-XXXXXXXXXX` in `index.html` with your actual tracking ID

4. **Deploy Changes**
   - Commit and push changes to GitHub
   - Changes will be live within a few minutes

### Features You'll Get:
- Real-time visitor monitoring
- Geographic data (country, city)
- Device and browser information
- Page views and session duration
- Traffic sources (direct, search engines, referrals)
- User flow through your site
- Goal tracking and conversions

### For Project Tracker Sub-site:
The bioinformatics-project-tracker repository will need separate setup:
1. Add the same Google Analytics code to its HTML files
2. It will appear as a separate page/section in your analytics

## Option 2: Plausible Analytics (Privacy-Focused)

Plausible is a lightweight, privacy-focused alternative to Google Analytics.

### Setup:
1. Sign up at [plausible.io](https://plausible.io)
2. Add this script to your HTML head:
```html
<script defer data-domain="hms-immunology.github.io" src="https://plausible.io/js/script.js"></script>
```

### Benefits:
- GDPR compliant
- No cookies
- Lightweight (< 1KB)
- Simple dashboard

## Option 3: GitHub Pages Native Analytics

GitHub provides basic repository insights but not visitor tracking for the actual website.

### What's Available:
- Repository traffic (visits, clones)
- Popular content
- Referring sites

### Access:
- Go to your repository on GitHub
- Click "Insights" tab
- View "Traffic" section

**Note:** This only shows repository page visits, not your actual website traffic.

## Option 4: Simple Visitor Counter

For basic counting without detailed analytics, you can use services like:

### Counter.dev (Free):
```html
<script>
(function() {
    var counter = document.createElement('script');
    counter.src = 'https://cdn.counter.dev/script.js';
    counter.setAttribute('data-id', 'YOUR_SITE_ID');
    counter.setAttribute('data-utcoffset', '-5');
    document.head.appendChild(counter);
})();
</script>
```

### Benefits:
- Simple implementation
- Privacy-focused
- Free tier available

## Option 5: Self-Hosted Analytics

For complete control, consider self-hosted solutions:

### Matomo (formerly Piwik):
- Full-featured analytics platform
- Complete data ownership
- Requires hosting infrastructure

### Umami:
- Simple, privacy-focused
- Modern interface
- Requires Node.js hosting

## Implementation Recommendations

### For HMS Immunology (Academic/Research Context):

1. **Primary Recommendation: Google Analytics 4**
   - Most comprehensive data
   - Free to use
   - Industry standard
   - Advanced features for research insights

2. **Privacy Alternative: Plausible**
   - If privacy concerns are paramount
   - Simpler data but sufficient for basic tracking
   - Paid service but affordable

3. **Both Sites Setup**
   - Use the same Google Analytics property for both sites
   - Set up different views/filters to separate traffic
   - This gives you unified analytics across your web presence

## Data You Can Track

With proper analytics setup, you can monitor:

### Visitor Metrics:
- Unique visitors vs. returning visitors
- Session duration
- Bounce rate
- Pages per session

### Content Performance:
- Most popular pages/resources
- Workshop material downloads
- Project tracker usage

### Audience Insights:
- Geographic distribution of users
- Academic institutions (based on referrers)
- Device types (mobile vs. desktop)

### Research Impact:
- Resource utilization
- Educational material effectiveness
- Community engagement levels

## Privacy Considerations

When implementing analytics for academic sites:

1. **Compliance**: Ensure compliance with institutional policies
2. **Transparency**: Consider adding a privacy policy
3. **Data Minimization**: Only collect necessary data
4. **User Notice**: Inform users about tracking (optional but recommended)

## Next Steps

1. Choose your preferred analytics solution
2. Set up the tracking account
3. Update the tracking IDs in your code
4. Deploy changes to GitHub Pages
5. Verify tracking is working (check analytics dashboard after 24-48 hours)
6. Set up regular monitoring schedule

## Support

For questions about implementation:
- GitHub Issues in the repository
- Contact: Eren Ada, PhD
- Department of Immunology, Harvard Medical School 