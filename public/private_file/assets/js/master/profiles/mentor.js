$(document).ready(function() {
    const data = [
        {data:'check', name:'check', orderable:false, searchable:false},
        {data:'name', name:'name'},
        {data:'division', name:'division'},
        {data:'profession', name:'profession'},
        {data:'imageMentor', name:'imageMentor'},
        {data:'created_at', name:'created_at', searchable:false, orderable:false},
        {data:'updated_at', name:'updated_at', searchable:false, orderable:false},
        {data:'btn', name:'btn', searchable:false, orderable:false},
    ];

    Table({table:'#table', data:data, url:'/api/v1/mentor/get'});
    $('#divisions').select2()

    $('#insert').on('submit', function(e) {
        e.preventDefault()
        $.ajax({
            url:'/api/v1/mentor/insert',
            data:new FormData(this),
            processData:false,
            contentType:false,
            type:'POST',
            headers:{
                'X-CSRF-TOKEN':csrftoken
            },
            success:res=>{
                RefreshTable('table');
                SweetAlert(res);
            },
            error:err=>console.log(err)
        })
    })

    
      $('#table').on('click', '#delete', function(e) {
        e.preventDefault();
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
                url:'/api/v1/mentor/delete',
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

     $('#deleteArray').on('click', function (e) {
        if (value_checkbox.length < 1) {
            Swal.fire('Perhatian!', 'Pilih salah satu', 'warning')
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
                url:'/api/v1/mentor/delete',
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

    $('#update').on('submit', function(e) {
        e.preventDefault();
        let value = new FormData(this)
        value.append('id', $('#updateMentor input[name="name"]').data('id'));
        $.ajax({
            url:'/api/v1/mentor/update',
            data:value,
            type:'POST',
            contentType:false,
            processData:false,
            headers:{
                'X-CSRF-TOKEN' : csrftoken
            },
            success:res=>{
                SweetAlert(res)
                RefreshTable('table')
            },
            error:err=>console.log(err)
        })
    })

    $('#table').on('click', '#edit', function(e) {
        e.preventDefault();
        let id = $(this).data('value')
        $.ajax({
            url:'/api/v1/mentor/get',
            data:{
                id:id
            },
            success:res=>{
                let division = []
                res.data.division.forEach(value=>{
                    division.push(value.division_id);
                })
                $('#updateMentor').modal('show');
                $('#updateMentor input[name="name"]').val(res.data.mentor.name);
                $('#updateMentor input[name="profession"]').val(res.data.mentor.profession);
                $('#updateMentor input[name="birth_date"]').val(res.data.mentor.birth_date);
                $('#updateMentor input[name="sertifikasi"]').val(res.data.mentor.sertifikasi);
                $('#updateMentor select[name="gender"] option[value="'+res.data.mentor.gender+'"]').attr('selected', true);
                $('#updateMentor img').attr('src', '/storage/' +res.data.mentor.image);
                $('#updateMentor select[name="divisions[]"]').val(division)
                $('#updateMentor select[name="divisions[]"]').select2()
                $('#updateMentor input[name="whatsapp"]').val(res.data.mentor.whatsapp);
                $('#updateMentor input[name="instagram"]').val(res.data.mentor.instagram);
                $('#updateMentor input[name="name"]').data('id',res.data.mentor.id);
            },
            error:err=>console.log(err)
        })
    })
})
