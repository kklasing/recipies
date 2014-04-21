# Recipies website

This project is for creating a personal recipies / cookbook to use at home and to use as API for an iPhone app.

Recipe object
- name string
- description string
- dishtype_id integer

```
rails generate scaffold Recipe name:string description:string dishtype_id:integer
```


dishtype opject
- name string

```
rails generate scaffold Dishtype name:string
```



