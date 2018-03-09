module.exports = {
    
    /*book: {
        assets: '/_assets/website',
        css : [
            '/_assets/website/style.css'
        ],
        js : [
            "/_assets/website/gitbook.js",
            "/_assets/website/theme.js"
        ]
    },
    
    ebook: {
        assets: '/_assets/ebook',
        css : [
            '/_assets/ebook/ebook.css',
            '/_assets/ebook/epub.css',
            '/_assets/ebook/mobi.css',
            '/_assets/ebook/pdf.css'
        ]
    },*/
    
    //Map of hooks
    hooks: {
        config: function(config) {
            config.styles = config.styles || config.pluginsConfig['theme-platform'].styles;

            return config;
        }
    },
    
    //Map of new blocks
    blocks: {},
    
    //Map of new filters
    filters: {}
};