// Copyright (c) 2015-2018, The Bytecoin developers.
// Licensed under the GNU Lesser General Public License. See LICENSE for details.

#include "walletdparamsdialog.h"
#include "ui_walletdparamsdialog.h"
#include "settings.h"

namespace WalletGUI
{

WalletdParamsDialog::WalletdParamsDialog(bool allowToRestart, QWidget *parent)
    : QDialog(parent)
    , ui(new Ui::WalletdParamsDialog)
    , allowToRestart_(allowToRestart)
{
    ui->setupUi(this);
//    ui->applyButton->setEnabled(allowToRestart);
    ui->applyButton->setText(allowToRestart_ ? tr("Save and restart wallet-rpc") : tr("Save"));
    ui->paramsEdit->setText(Settings::instance().getWalletdParams().join(QChar(' ')));
}

WalletdParamsDialog::~WalletdParamsDialog()
{
    delete ui;
}

void WalletdParamsDialog::saveParams()
{
    Settings::instance().setWalletdParams(ui->paramsEdit->toPlainText().simplified());
}

void WalletdParamsDialog::applyParams()
{
    saveParams();
    if (allowToRestart_)
        emit restartWalletd();
}

}
