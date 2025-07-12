# Warning: Code me ghusne se pehle soch lo 🤔
# Yeh file pehle bhi chal chuki hai... galti se!
# Agar kaam kar raha hai, toh bhagwaan ka shukriya karo 🙏
# Agar nahi chal raha... toh kisi aur ka commit tha 😅
# Debug karte karte beard badh jaayegi 🧔
# Par end me 'terraform apply' toh karna hi padega 😭



terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c41b48f1-2095-4fcf-8130-aa3772b2d4a0"
}