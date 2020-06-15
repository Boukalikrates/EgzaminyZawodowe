

function addAnswerOption(e) {
    let divs = $(e.target).parent().parent().find('div');
    let questionid = $(e.target).parent().parent().parent().attr('data-questionid');

    divs.last().after('<div><input type="radio" name="q' + questionid + '" value="' + (divs.length - 1) + '"> <input class="answerinput"></div>')
        .next().find('input').change(composeJSON).click(composeJSON);
    composeJSON(e);
}

function subAnswerOption(e) {
    let divs = $(e.target).parent().parent().find('div');
    if (divs.length > 1) divs.last().remove();
    composeJSON(e);
}

function deleteQuestion(e) {
    if (confirm('Na pewno chcesz usunąć to pytanie?')) {
        let row = $(e.target).parent().parent().parent();
        sendtoserver(row, true);
    }
}

function composeJSON(e) {
    let aa = [];
    let row = $(e.target).parent().parent().parent();
    let inputs = row.find('.answerinput');
    inputs.each(function () {
        aa.push($(this).val());
    });
    let querycell = row.find('.queryoutput');
    querycell.val(JSON.stringify(aa));


    sendtoserver(row);
}

function sendtoserver(row, deletion) {
    row.find('.statusicon').html('<i class="fas fa-spin fa-spinner" title="Wysyłanie na serwer"></i>');
    row.find('input,button,textarea').attr('disabled', true);
    let id = row.attr('data-questionid');
    let at = row.find('.queryoutput').val();
    let q = row.find('textarea').val();
    let ans = row.find('input:checked').length ? row.find('input:checked').val() : -1;
    $.ajax({
        url: "db_adm_add_questions.php",
        method: "POST",
        data: {
            deletion: deletion,
            exam: examid,
            q: q,
            ans: ans,
            at: at,
            id: id
        },
        success: function (data) {
            row.find('.statusicon').html(data);
            if (!deletion) {
                row.removeClass('new').find('input,button,textarea').attr('disabled', false);
                if (row.find('.newid').val()) {
                    let newid = row.find('.newid').val()
                    row.attr('data-questionid', newid).find('.answerchecker').attr('name','q'+newid);
                }
            }
        }
    })
}
$(function () {
    $('.aadd').click(addAnswerOption);
    $('.asub').click(subAnswerOption);
    $('.adel').click(deleteQuestion);
    $('input, textarea').change(composeJSON);
})
