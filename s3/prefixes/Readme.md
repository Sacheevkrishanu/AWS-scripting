
## Creating bucket

```sh
aws s3 mb s3://prefixessacheev
```

## Create our folder
```sh
aws s3api put-object --bucket prefixessacheev --key hello/
```

## Creating many folders
```sh
aws s3api put-object --bucket prefixessacheev --key Lorem/ipsum/dolor/sit/amet,/consectetur/adipiscing/elit./Pellentesque/rhoncus/massa/vitae/sapien/pellentesque,/vitae/rutrum/enim/cursus./Curabitur/a/dui/in/eros/interdum/rhoncus./Vestibulum/velit/nunc,/elementum/id/urna/molestie,/posuere/tincidunt/odio./Aliquam/sagittis/vestibulum/imperdiet./Nulla/vulputate/odio/dui,/a/elementum/nisl/pellentesque/vitae./Nulla/tincidunt/quis/nisl/nec/aliquet./Vestibulum/et/interdum/odio./Phasellus/auctor/metus/lobortis/lectus/malesuada,/id/bibendum/lacus/lacinia./Sed/scelerisque/faucibus/nisl/Morbi/vulputate/nulla/vel/purus/consequat,/non/malesuada/odio/ultricies./Suspendisse/convallis/turpis/ultricies/congue/accumsan./Quisque/vulputate/viverra/mauris,/vel/convallis/augue/efficitur/non./Sed/justo/mi,/commodo/nec/tempus/at,/euismod/at/metus./Aliquam/sed/pulvinar/quam./Nullam/porttitor/sed/leo/et/convallis./Quisque/pellentesque/ipsum/bibendum/mauris/blandit/pulvinar./Ut/vel/euismod/nibh,/sed/condimentum/dui./Proin/vehicula/lorem/justo,/vel/finibus/odio/tincidunt/eu./Mauris/nisi
```

## breaking 1024 limit

```sh
aws s3api put-object --bucket prefixessacheev --key Lorem/ipsum/dolor/sit/amet,/consectetur/adipiscing/elit./Pellentesque/rhoncus/massa/vitae/sapien/pellentesque,/vitae/rutrum/enim/cursus./Curabitur/a/dui/in/eros/interdum/rhoncus./Vestibulum/velit/nunc,/elementum/id/urna/molestie,/posuere/tincidunt/odio./Aliquam/sagittis/vestibulum/imperdiet./Nulla/vulputate/odio/dui,/a/elementum/nisl/pellentesque/vitae./Nulla/tincidunt/quis/nisl/nec/aliquet./Vestibulum/et/interdum/odio./Phasellus/auctor/metus/lobortis/lectus/malesuada,/id/bibendum/lacus/lacinia./Sed/scelerisque/faucibus/nisl/Morbi/vulputate/nulla/vel/purus/consequat,/non/malesuada/odio/ultricies./Suspendisse/convallis/turpis/ultricies/congue/accumsan./Quisque/vulputate/viverra/mauris,/vel/convallis/augue/efficitur/non./Sed/justo/mi,/commodo/nec/tempus/at,/euismod/at/metus./Aliquam/sed/pulvinar/quam./Nullam/porttitor/sed/leo/et/convallis./Quisque/pellentesque/ipsum/bibendum/mauris/blandit/pulvinar./Ut/vel/euismod/nibh,/sed/condimentum/dui./Proin/vehicula/lorem/justo,/vel/finibus/odio/tincidunt/eu./Mauris/nisi/dsdfsdf/afefweweewe/deff/
```