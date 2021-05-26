$(document).ready(function() {
    const data = [
        {data:'check', name:'check', orderable:false, searchable:false},
        {data:'name', name:'name'},
        {data:'division', name:'division'},
        {data:'profession', name:'profession'},
        {data:'imageMentor', name:'imageMentor'},
        {data:'created_at', name:'created_at', searchable:false, orderable:false},
        {data:'deleted_at', name:'deleted_at'},
        {data:'btn', name:'btn', searchable:false, orderable:false},
    ];

    Table({table:'table', data:data, url:'/api/v1/trash/mentor/get'})

    $('#recoveryData').on('click', function (e) {
        e.preventDefault();
        if (value_checkbox.length < 1) {
            Swal.fire('Perhatian', 'Pilih salah satu!','warning')
            return 0;
        }
        SweetQuestions({
            title : 'Apakah anda yakin?',
            subtitle : 'Apakah anda ingin merestore data mentor ini?',
            buttonConfirm : 'Yes',
            buttonDeny: 'No',
            confirm : 'ajax',
            deny : {
                icon:'error',
                title : 'Gagal merestore'
            },
            ajax : {
                url:'/api/v1/trash/mentor/recovery',
                data:{
                    value : value_checkbox
                },
                type:'POST',
                headers:{
                    'X-CSRF-TOKEN' : csrftoken
                },
                success:res=>{
                    SweetAlert(res)
                    RefreshTable('table')
                    value_checkbox = []
                },
                error:err=>{
                    SweetAlert({status:'error', message:err.responseJSON.message})
                    value_checkbox = []
                }
            }
        })
    })

    $('#deleteData').on('click', function (e) {
        e.preventDefault();
        if (value_checkbox.length < 1) {
            Swal.fire('Perhatian', 'Pilih salah satu!','warning')
            return 0;
        }
        SweetQuestions({
            title : 'Apakah anda yakin?',
            subtitle : 'Apakah anda ingin menghapus data mentor ini?',
            buttonConfirm : 'Yes',
            buttonDeny: 'No',
            confirm : 'ajax',
            deny : {
                icon:'error',
                title : 'Gagal menghapus'
            },
            ajax : {
                url:'/api/v1/trash/mentor/delete',
                data:{
                    value : value_checkbox
                },
                type:'DELETE',
                headers:{
                    'X-CSRF-TOKEN' : csrftoken
                },
                success:res=>{
                    SweetAlert(res)
                    RefreshTable('table')
                    value_checkbox = []
                },
                error:err=>{
                    SweetAlert({status:'error', message:err.responseJSON.message})
                    value_checkbox = []
                }
            }
        })
    })

    $('#table').on('click', '#recycle', function() {
        let value = $(this).data('value')
        SweetQuestions({
            title : 'Apakah anda yakin?',
            subtitle : 'Apakah anda ingin merestore data mentor ini?',
            buttonConfirm : 'Yes',
            buttonDeny: 'No',
            confirm : 'ajax',
            deny : {
                icon:'error',
                title : 'Gagal merestore'
            },
            ajax : {
                url:'/api/v1/trash/mentor/recovery',
                data:{
                    value : value
                },
                type:'POST',
                headers:{
                    'X-CSRF-TOKEN' : csrftoken
                },
                success:res=>{
                    SweetAlert(res)
                    RefreshTable('table')
                    value_checkbox = []
                },
                error:err=>{
                    SweetAlert({status:'error', message:err.responseJSON.message})
                    value_checkbox = []
                }
            }
        })
    })

    $('#table').on('click', '#delete', function() {
        let value = $(this).data('value')
        SweetQuestions({
            title : 'Apakah anda yakin?',
            subtitle : 'Apakah anda ingin menghapus data mentor ini?',
            buttonConfirm : 'Yes',
            buttonDeny: 'No',
            confirm : 'ajax',
            deny : {
                icon:'error',
                title : 'Gagal menghapus'
            },
            ajax : {
                url:'/api/v1/trash/mentor/delete',
                data:{
                    value : value
                },
                type:'DELETE',
                headers:{
                    'X-CSRF-TOKEN' : csrftoken
                },
                success:res=>{
                    SweetAlert(res)
                    RefreshTable('table')
                    value_checkbox = []
                },
                error:err=>{
                    SweetAlert({status:'error', message:err.responseJSON.message})
                    value_checkbox = []
                }
            }
        })
    })
})
