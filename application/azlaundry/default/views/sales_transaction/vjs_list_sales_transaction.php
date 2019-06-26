<script>
	jQuery('body').on('click', '.btn-add-sales_transaction', function() {
    	location.href = app_url + 'sales_transaction/add';
    });

    jQuery('body').on('click', '.btn-edit-sales_transaction', function() {
    	var id = jQuery(this).attr('data_id');
    	location.href = app_url + 'sales_transaction/edit/' + id;
    });

    jQuery('body').on('click', '#btn_print_report', function() {
    	jQuery('#form_sales_transaction').submit();
    });

    jQuery('body').on('click', '.btn-detail', function() {
        var code = jQuery(this).attr('data-code');

        show_loading();
        jQuery.ajax({
            url: app_url + 'sales_transaction/get_invoice',
            type: 'POST',
            dataType: 'JSON',
            data: {
                code: code
            },
            success: function(response) {
                if (response.err_code == 0) {
                    jQuery('.az-modal-detail .modal-body').html(response.data);
                    show_modal('detail');
                }
                else {
                    bootbox.alert({
                        title: "<?php echo azlang('Error');?>",
                        message: response.message
                    });
                }
                hide_loading();
            },
            error: function(response) {

            }
        });
    });

    jQuery('.btn-action-standart-invoice').on('click', function() {
        var code = jQuery('.transaction-group-code').text();
        window.open(app_url + 'sales_transaction/invoice/?c=' + code, '_blank');
    });

    jQuery('.btn-action-small-invoice').on('click', function() {
        var code = jQuery('.transaction-group-code').text();
        window.open(app_url + 'sales_transaction/invoice/?c=' + code +'&t=small', '_blank');
    });