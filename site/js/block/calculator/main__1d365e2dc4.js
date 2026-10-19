$(document).ready(function() {
    function formatNumber(number) {
        return number.toLocaleString('lv-LV');
    }

    function parseNumber(value) {
        return parseFloat(value.replace(/,/g, '').replace(/\s/g, '')) || 0;
    }

    function calculateOutputs() {
        var seperator = ".";
        var i1 = parseNumber($("#input1").val()) || 0;
        var i2 = parseNumber($("#input2").val()) || 0;
        var i3 = parseNumber($("#input3").val()) || 0;
        var radioValue = parseFloat($("input[name='business']:checked").val());

        var o0 = i1 * (radioValue / 100);
        var o1 = ((i2/0.8) * 0.2);
        var o2 = ((i2/0.8) * 0.04);
        var o3 = i3 * 0.015;
        var o4 = i3 * 0.003;
        var o5 = o1 + o3;
        var o6 = o2 + o4;
        var o7 = o0-(o5-o6);

        if (o2 > o0) {
            o2 = o0;
        }
        if (o4 > o0) {
            o4 = o0;
        }
        if (o6 > o0) {
            o6 = o0;
        }

        o5 = o1 + o3;
        o7 = o0 - (o5 - o6);

        if (0 > o7) {
            o7 = 0;
        }

        $("#output0").val(o0 !== 0 ? formatNumber(o0) : '');
        $("#output1").val(o1 !== 0 ? formatNumber(o1) : '');
        $("#output2").val(o2 !== 0 ? formatNumber(o2) : '');
        $("#output3").val(o3 !== 0 ? formatNumber(o3) : '');
        $("#output4").val(o4 !== 0 ? formatNumber(o4) : '');
        $("#output5").val(o5 !== 0 ? formatNumber(o5) : '');
        $("#output6").val(o6 !== 0 ? formatNumber(o6) : '');
        $("#output7").val(formatNumber(o7));
    }

    function formatInputs() {
        function processInput(selector) {
            let value = parseNumber($(selector).val());
            let formattedValue = formatNumber(value);
            if (formattedValue === '0') {
                $(selector).val('');
            } else {
                $(selector).val(formattedValue);
            }
        }
    
        processInput("#input1");
        processInput("#input2");
        processInput("#input3");
    }
    

    $("input").on("input change", function() {
        formatInputs();
        calculateOutputs();
    });
    $("input[name='business']").on("change", calculateOutputs);

});