define [
  'com!cs!../page/page'

  'com!cs!./sidebar'
  'com!cs!./contents'
  'com!cs!./documentation'
], (Page, Sidebar, Contents, Docs) ->
  render: Page
  options:
    data: []
    section: 'docs'
    content: (o) ->
      render: Sidebar
      options:
        title: o.title
        
        sidebar:
          render: Contents
          options:
            contents: o.data
        
        content:
          render: Docs
          options:
            contents: o.data
