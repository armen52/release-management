(function () {

  $(document).ready(function() {
    initMarkAsCompleteButtons();
    initRevertButtons();
  });

  function initRevertButtons() {
    $('.revert-status').click(function() {
      var id = $(this).attr('data-release-id');
      revertReleaseStatus(id);
    });
  }

  function initMarkAsCompleteButtons() {
    $('.mark-complete-button').click(function() {
      var id = $(this).attr('data-release-id');
      markReleaseComplete(id);
    });
  }

  function markReleaseComplete(id) {
    $.ajax({
      type: 'POST',
      url: '/releases/'+id+'.json',
      data: { _method:'PUT', status: 1 },
      dataType: 'json',
      success: function() {
        $('#mark-complete-'+id).removeClass('mark-complete-button')
                               .addClass('revert-status')
                               .attr('id','revert-'+id)
                               .html('Revert');
        initRevertButtons();
        $('#release-title-'+id).addClass('releaseComplete');
      }
    })
  }

  function revertReleaseStatus(id) {
    $.ajax({
      type: 'POST',
      url: '/releases/'+id+'.json',
      data: { _method:'PUT', status: 0 },
      dataType: 'json',
      success: function() {
        $('#revert-'+id).removeClass('revert-status')
                               .addClass('mark-complete-button')
                               .attr('id','mark-complete-'+id)
                               .html('Mark as complete');
        initMarkAsCompleteButtons();
        $('#release-title-'+id).removeClass('releaseComplete');
      }
    })
  }

})(jQuery);