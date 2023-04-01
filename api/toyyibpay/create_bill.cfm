<cfoutput>

    <cfset bill = {
        "userSecretKey" = "jzpjd9ff-27r5-4kg8-gh3t-kvvnmu6w71j2",
        "categoryCode" = "dm53j3k8",
        "billName" = "Paragliding",
        "billDescription" = "Payment for Paragliding",
        "billPriceSetting" = 1,
        "billPayorInfo" = 1,
        "billAmount" = #form.total_price#*100,
        "billReturnUrl" = "",
        "billCallbackUrl" = "http://localhost/bornEx",
        "billExternalReferenceNo" = "AFR341DFI",
        "billTo" = "#form.fullname#",
        "billEmail" = "#form.email#",
        "billPhone" = "#form.contact_no#",
        "billSplitPayment" = 1,
        "billSplitPaymentArgs" = "",
        "billPaymentChannel" = "2",
        "billContentEmail" = "Thank you for purchasing our product!",
        "billChargeToCustomer" = "",
        "billExpiryDate" = "",
        "billExpiryDays" = ""
    }>

    <cfset split_amount = bill.billAmount*0.03>
      
    <cfhttp url="https://dev.toyyibpay.com/index.php/api/createBill" method="post" result="httpResp">
        <cfhttpparam type="formfield" name="userSecretKey" value="#bill.userSecretKey#">
        <cfhttpparam type="formfield" name="categoryCode" value="#bill.categoryCode#">
        <cfhttpparam type="formfield" name="billName" value="#bill.billName#">
        <cfhttpparam type="formfield" name="billDescription" value="#bill.billDescription#">
        <cfhttpparam type="formfield" name="billPriceSetting" value="#bill.billPriceSetting#">
        <cfhttpparam type="formfield" name="billPayorInfo" value="#bill.billPayorInfo#">
        <cfhttpparam type="formfield" name="billAmount" value="#bill.billAmount#">
        <cfhttpparam type="formfield" name="billReturnUrl" value="#bill.billReturnUrl#">
        <cfhttpparam type="formfield" name="billCallbackUrl" value="#bill.billCallbackUrl#">
        <cfhttpparam type="formfield" name="billExternalReferenceNo" value="#bill.billExternalReferenceNo#">
        <cfhttpparam type="formfield" name="billTo" value="#bill.billTo#">
        <cfhttpparam type="formfield" name="billEmail" value="#bill.billEmail#">
        <cfhttpparam type="formfield" name="billPhone" value="#bill.billPhone#">
        <cfhttpparam type="formfield" name="billSplitPayment" value="#bill.billSplitPayment#">
        <cfhttpparam type="formfield" name="billSplitPaymentArgs" value='[{"id":"amirulakmal","amount":"#split_amount#"}]'>
        <cfhttpparam type="formfield" name="billPaymentChannel" value="#bill.billPaymentChannel#">
        <cfhttpparam type="formfield" name="billContentEmail" value="#bill.billContentEmail#">
    </cfhttp>

    <cfset result = httpResp.fileContent>
    <cfset obj = DeserializeJSON(result)>
    <cfset billcode = obj[1].BillCode>

    <script type="text/javascript">
        //redirect to payment gateway
        window.location.href="https://dev.toyyibpay.com/#billcode#"; 

        //window.open('https://dev.toyyibpay.com/#billcode#'); 
    </script>

</cfoutput>