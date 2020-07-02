import QtQuick 2.8
import QtQuick.Controls 2.1

SpinBox {
    id: dSpBox

    property int decimals: 3
    property double dFrom: -10000.0
    property double dTo: 10000.0
    property double dValue: 0.0
    property double dStepSize: 1.0

    //readonly property int factor: Math.pow(10, dSpBox.decimals)
    readonly property int factor: 1
    stepSize: dSpBox.dStepSize * dSpBox.factor
    from: dSpBox.dFrom * dSpBox.factor
    to: dSpBox.dTo * dSpBox.factor
    value: dSpBox.dValue * dSpBox.factor
    editable: true
    validator: DoubleValidator {
        bottom: dSpBox.dFrom
        top: dSpBox.dTo

    }

    textFromValue: function(value, locale) {
        return Number(value / dSpBox.factor).toLocaleString(locale, 'f', dSpBox.decimals);
    }

    valueFromText: function(text, locale) {
        return Number.fromLocaleString(locale, text) * dSpBox.factor;
    }

    onDValueChanged: dSpBox.value = dSpBox.dValue * dSpBox.factor
    onValueChanged: dSpBox.dValue = dSpBox.value / dSpBox.factor

}
