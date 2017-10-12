
jQuery(function($){

    var $modal = $('#editor-modal'),
        $editor = $('#editor'),
        $editorTitle = $('#editor-title');

    var ft = FooTable.init("#employees_table", {
        paging: {
            enabled: true,
            size: 5
        },
        filtering: {
            enabled: true
        },
        sorting: {
            enabled: true
        },
        editing: {
            enabled: true,
            addRow: function(){
                $modal.removeData('row');
                $editor[0].reset();
                $editorTitle.text('Add a new row');
                $modal.modal('show');
            },
            editRow: function(row){
                var values = row.val();
                $editor.find('#id').val(values.id);
                $editor.find('#name').val(values.name);
                $editor.find('#phone').val(values.phone);
                $editor.find('#email').val(values.email);
                $editor.find('#department').val(values.department);
                $editor.find('#login').val(values.login);
                $editor.find('#password').val(values.password);

                $modal.data('row', row);
                $editorTitle.text('Edit row #' + values.id);
                $modal.modal('show');
            },
            deleteRow: function(row){
                if (confirm('Are you sure you want to delete the row?')){
                    $.post("/ajax/deleteEmployee.php", {id :row.val().id}).done(function(data){
                        if (data && data.success) {
                            row.delete();
                        }
                    });
                }
            }
        },
        columns: $.get("/ajax/columns.php"),
        rows: $.get("/ajax/rows.php")
    });

    $editor.on('submit', function(e){

        if (this.checkValidity && !this.checkValidity()) return; // if validation fails exit early and do nothing.
        e.preventDefault(); // stop the default post back from a form submit

        var row = $modal.data('row'), // get any previously stored row object
            values = { // create a hash of the editor row values
                id: $editor.find('#id').val(),
                name: $editor.find('#name').val(),
                phone: $editor.find('#phone').val(),
                email: $editor.find('#email').val(),
                department: $editor.find('#department').val(),
                login: $editor.find('#login').val(),
                password: $editor.find('#password').val()
            };

        if (row instanceof FooTable.Row){ // if we have a row object then this is an edit operation

            $.post("/ajax/saveEmployee.php", values);
            row.val(values);

        } else { // otherwise this is an add operation

            $.post("/ajax/saveEmployee.php", values).done(function(data){
                if (data && data.success) {
                    values.id = data.id;
                    ft.rows.add(values);
                }
            });

        }

        $modal.modal('hide');
    });

});
